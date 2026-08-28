use calcit_dbt::*;
use cirru_edn::{Edn, EdnListView};

fn parse(source: &str) -> Edn {
  dbt_parse(vec![Edn::str(source)]).unwrap()
}

fn format(value: Edn) -> String {
  match dbt_format(vec![value]).unwrap() {
    Edn::Str(value) => value.to_string(),
    other => panic!("expected string, got {other:?}"),
  }
}

#[test]
fn exposes_c_safe_buffer_protocol() {
  assert_eq!(calcit_ffi_buffer_version(), calcit_native_ffi::BUFFER_PROTOCOL_VERSION);
  assert!(matches!(parse("&1"), Edn::Buffer(_)));
}

#[test]
fn parses_formats_and_computes() {
  let one = parse("&1");
  let two = dbt_add(vec![one.clone(), one.clone()]).unwrap();
  assert_eq!(format(two.clone()), "&19");

  let three = dbt_add(vec![two, one]).unwrap();
  assert_eq!(format(three), "&15");
  assert_eq!(format(dbt_sub(vec![parse("&44"), parse("&6")]).unwrap()), "&466");
  assert_eq!(format(dbt_mul(vec![parse("&19"), parse("&19")]).unwrap()), "&11");
  assert_eq!(format(dbt_div(vec![parse("&11"), parse("&19")]).unwrap()), "&19");
  assert_eq!(format(dbt_conjugate(vec![parse("&8")]).unwrap()), "&6");
  assert_eq!(format(dbt_norm(vec![parse("&8")]).unwrap()), "&19");
  assert_eq!(format(dbt_pow(vec![parse("&8"), Edn::Number(4.0)]).unwrap()), "&99");
  assert_eq!(format(dbt_move_by(vec![parse("&1.2"), Edn::Number(2.0)]).unwrap()), "&125");
}

#[test]
fn exposes_f9_field_arithmetic() {
  assert_eq!(dbt_f9_add(vec![Edn::Number(8.0), Edn::Number(8.0)]).unwrap(), Edn::Number(2.0));
  assert_eq!(dbt_f9_mul(vec![Edn::Number(8.0), Edn::Number(8.0)]).unwrap(), Edn::Number(7.0));
  assert_eq!(dbt_f9_pow(vec![Edn::Number(8.0), Edn::Number(8.0)]).unwrap(), Edn::Number(1.0));
  assert_eq!(dbt_f9_trace(vec![Edn::Number(8.0)]).unwrap(), Edn::Number(9.0));
  assert_eq!(dbt_f9_norm(vec![Edn::Number(8.0)]).unwrap(), Edn::Number(9.0));

  let inverse = dbt_f9_inverse(vec![Edn::Number(8.0)]).unwrap();
  assert_eq!(dbt_f9_mul(vec![Edn::Number(8.0), inverse]).unwrap(), Edn::Number(1.0));
  assert!(dbt_f9_inverse(vec![Edn::Number(5.0)]).is_err());
}

#[test]
fn converts_coordinates_digits_and_buffers() {
  let value = dbt_from_float(vec![Edn::Number(4.0), Edn::Number(4.0)]).unwrap();
  assert_eq!(format(value.clone()), "&88");
  assert_eq!(
    dbt_to_float(vec![value.clone()]).unwrap(),
    Edn::List(EdnListView(vec![Edn::Number(4.0), Edn::Number(4.0)]))
  );

  let digits = dbt_to_digits(vec![parse("&23.456")]).unwrap();
  assert_eq!(
    digits,
    Edn::List(EdnListView(vec![
      Edn::List(EdnListView(vec![Edn::Number(1.0), Edn::Number(2.0)])),
      Edn::List(EdnListView(vec![Edn::Number(0.0), Edn::Number(3.0)])),
      Edn::List(EdnListView(vec![Edn::Number(-1.0), Edn::Number(4.0)])),
      Edn::List(EdnListView(vec![Edn::Number(-2.0), Edn::Number(5.0)])),
      Edn::List(EdnListView(vec![Edn::Number(-3.0), Edn::Number(6.0)])),
    ]))
  );

  let buffer = dbt_to_buffer(vec![value.clone()]).unwrap();
  assert!(matches!(buffer, Edn::Buffer(_)));
  assert_eq!(format(buffer.clone()), "&88");
  assert_eq!(dbt_equal(vec![value, buffer]).unwrap(), Edn::Bool(true));
}

#[test]
fn rounds_and_validates_numeric_arguments() {
  assert_eq!(format(dbt_round(vec![parse("&3.333"), Edn::Number(2.0)]).unwrap()), "&3.33");
  assert_eq!(format(dbt_from_digit(vec![Edn::Number(8.0)]).unwrap()), "&8");

  for precision in [f64::NAN, -1.0, 1.5] {
    assert!(dbt_round(vec![parse("&1"), Edn::Number(precision)]).is_err());
  }
  for digit in [0.0, 1.5, 10.0, f64::INFINITY] {
    assert!(dbt_from_digit(vec![Edn::Number(digit)]).is_err());
  }
  assert!(dbt_from_float(vec![Edn::Number(f64::NAN), Edn::Number(0.0)]).is_err());
}

#[test]
fn reports_ffi_errors_instead_of_panicking() {
  assert!(dbt_parse(vec![]).is_err());
  assert!(dbt_parse(vec![Edn::str("missing-prefix")]).is_err());
  assert!(dbt_format(vec![Edn::Number(1.0)]).is_err());
  assert!(dbt_format(vec![Edn::any_ref(String::from("not a DBT"))]).is_err());
  assert!(dbt_add(vec![parse("&1")]).is_err());
  assert!(dbt_div(vec![parse("&1"), parse("&5")]).is_err());
  assert!(dbt_pow(vec![parse("&1"), Edn::Number(-1.0)]).is_err());
  assert!(dbt_move_by(vec![parse("&1"), Edn::Number(1.5)]).is_err());
  assert!(dbt_f9_add(vec![Edn::Number(0.0), Edn::Number(1.0)]).is_err());
}
