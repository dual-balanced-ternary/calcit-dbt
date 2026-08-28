//! Calcit FFI bindings for dual balanced ternary arithmetic.

use cirru_edn::{Edn, EdnListView};
use dual_balanced_ternary::{DualBalancedTernary, DualBalancedTernaryDigit, F9, complex::ComplexXy, dbt_digits};
use std::{convert::TryFrom, str::FromStr};

calcit_native_ffi::export_buffer_abi_v1!();

fn expect_arity(args: &[Edn], expected: usize, name: &str) -> Result<(), String> {
  if args.len() == expected {
    Ok(())
  } else {
    Err(format!("{name} expected {expected} argument(s), got {}: {args:?}", args.len()))
  }
}

fn read_dbt(value: &Edn, name: &str) -> Result<DualBalancedTernary, String> {
  match value {
    Edn::AnyRef(value) => value
      .0
      .read()
      .map_err(|error| format!("{name} could not read DBT value: {error}"))?
      .as_any()
      .downcast_ref::<DualBalancedTernary>()
      .cloned()
      .ok_or_else(|| format!("{name} expected a DBT value, got {value:?}")),
    Edn::Buffer(buffer) => DualBalancedTernary::try_from(buffer.as_slice()),
    other => Err(format!("{name} expected a DBT value or buffer, got {other}")),
  }
}

fn write_dbt(value: DualBalancedTernary) -> Result<Edn, String> {
  Vec::<u8>::try_from(value).map(Edn::Buffer)
}

fn unary_dbt(args: Vec<Edn>, name: &str, operation: impl FnOnce(DualBalancedTernary) -> Result<Edn, String>) -> Result<Edn, String> {
  expect_arity(&args, 1, name)?;
  operation(read_dbt(&args[0], name)?)
}

fn binary_dbt(
  args: Vec<Edn>,
  name: &str,
  operation: impl FnOnce(DualBalancedTernary, DualBalancedTernary) -> Result<DualBalancedTernary, String>,
) -> Result<Edn, String> {
  expect_arity(&args, 2, name)?;
  let left = read_dbt(&args[0], name)?;
  let right = read_dbt(&args[1], name)?;
  operation(left, right).and_then(write_dbt)
}

fn read_u32(value: &Edn, name: &str) -> Result<u32, String> {
  let Edn::Number(number) = value else {
    return Err(format!("{name} expected a non-negative integer, got {value}"));
  };
  if !number.is_finite() || number.fract() != 0.0 || *number < 0.0 || *number > f64::from(u32::MAX) {
    return Err(format!("{name} expected a non-negative integer up to {}, got {number}", u32::MAX));
  }
  Ok(*number as u32)
}

fn read_i32(value: &Edn, name: &str) -> Result<i32, String> {
  let Edn::Number(number) = value else {
    return Err(format!("{name} expected an integer, got {value}"));
  };
  if !number.is_finite() || number.fract() != 0.0 || *number < f64::from(i32::MIN) || *number > f64::from(i32::MAX) {
    return Err(format!(
      "{name} expected an integer from {} through {}, got {number}",
      i32::MIN,
      i32::MAX
    ));
  }
  Ok(*number as i32)
}

fn read_f9(value: &Edn, name: &str) -> Result<F9, String> {
  let Edn::Number(number) = value else {
    return Err(format!("{name} expected a DBT digit from 1 through 9, got {value}"));
  };
  if !number.is_finite() || number.fract() != 0.0 || !(1.0..=9.0).contains(number) {
    return Err(format!("{name} expected a DBT digit from 1 through 9, got {number}"));
  }
  Ok(F9::new(DualBalancedTernaryDigit::try_from(*number as u8)?))
}

fn f9_number(value: F9) -> Edn {
  Edn::Number(f64::from(u8::from(value.digit())))
}

pub fn dbt_parse(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 1, "dbt-parse")?;
  match &args[0] {
    Edn::Str(source) => DualBalancedTernary::from_str(source).and_then(write_dbt),
    other => Err(format!("dbt-parse expected a string, got {other}")),
  }
}

pub fn dbt_format(args: Vec<Edn>) -> Result<Edn, String> {
  unary_dbt(args, "dbt-format", |value| Ok(Edn::str(value.to_string())))
}

pub fn dbt_to_float(args: Vec<Edn>) -> Result<Edn, String> {
  unary_dbt(args, "dbt-to-float", |value| {
    let xy = ComplexXy::from(&value);
    Ok(Edn::List(EdnListView(vec![Edn::Number(xy.x), Edn::Number(xy.y)])))
  })
}

pub fn dbt_from_float(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 2, "dbt-from-float")?;
  match (&args[0], &args[1]) {
    (Edn::Number(x), Edn::Number(y)) => DualBalancedTernary::try_new(*x, *y).and_then(write_dbt),
    (x, y) => Err(format!("dbt-from-float expected two numbers, got {x} and {y}")),
  }
}

pub fn dbt_add(args: Vec<Edn>) -> Result<Edn, String> {
  binary_dbt(args, "dbt-add", |left, right| Ok(left + right))
}

pub fn dbt_sub(args: Vec<Edn>) -> Result<Edn, String> {
  binary_dbt(args, "dbt-sub", |left, right| Ok(left - right))
}

pub fn dbt_mul(args: Vec<Edn>) -> Result<Edn, String> {
  binary_dbt(args, "dbt-mul", |left, right| Ok(left * right))
}

pub fn dbt_div(args: Vec<Edn>) -> Result<Edn, String> {
  binary_dbt(args, "dbt-div", |left, right| left.checked_div(&right))
}

pub fn dbt_conjugate(args: Vec<Edn>) -> Result<Edn, String> {
  unary_dbt(args, "dbt-conjugate", |value| write_dbt(value.conjugate()))
}

pub fn dbt_norm(args: Vec<Edn>) -> Result<Edn, String> {
  unary_dbt(args, "dbt-norm", |value| write_dbt(value.norm()))
}

pub fn dbt_pow(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 2, "dbt-pow")?;
  let value = read_dbt(&args[0], "dbt-pow")?;
  write_dbt(value.pow(read_u32(&args[1], "dbt-pow")?))
}

pub fn dbt_move_by(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 2, "dbt-move-by")?;
  let value = read_dbt(&args[0], "dbt-move-by")?;
  write_dbt(value.move_by(i64::from(read_i32(&args[1], "dbt-move-by")?)))
}

pub fn dbt_f9_add(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 2, "dbt-f9-add")?;
  Ok(f9_number(read_f9(&args[0], "dbt-f9-add")? + read_f9(&args[1], "dbt-f9-add")?))
}

pub fn dbt_f9_mul(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 2, "dbt-f9-mul")?;
  Ok(f9_number(read_f9(&args[0], "dbt-f9-mul")? * read_f9(&args[1], "dbt-f9-mul")?))
}

pub fn dbt_f9_inverse(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 1, "dbt-f9-inverse")?;
  let value = read_f9(&args[0], "dbt-f9-inverse")?;
  value
    .inverse()
    .map(f9_number)
    .ok_or_else(|| String::from("dbt-f9-inverse cannot invert zero digit 5"))
}

pub fn dbt_f9_pow(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 2, "dbt-f9-pow")?;
  Ok(f9_number(
    read_f9(&args[0], "dbt-f9-pow")?.pow(u64::from(read_u32(&args[1], "dbt-f9-pow")?)),
  ))
}

pub fn dbt_f9_trace(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 1, "dbt-f9-trace")?;
  Ok(f9_number(read_f9(&args[0], "dbt-f9-trace")?.trace()))
}

pub fn dbt_f9_norm(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 1, "dbt-f9-norm")?;
  Ok(f9_number(read_f9(&args[0], "dbt-f9-norm")?.norm()))
}

pub fn dbt_round(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 2, "dbt-round")?;
  let value = read_dbt(&args[0], "dbt-round")?;
  let Edn::Number(places) = args[1] else {
    return Err(format!("dbt-round expected a numeric precision, got {}", args[1]));
  };
  if !places.is_finite() || places < 0.0 || places.fract() != 0.0 || places > usize::MAX as f64 {
    return Err(format!("dbt-round precision must be a non-negative integer, got {places}"));
  }
  write_dbt(value.round_n(places as usize))
}

pub fn dbt_to_digits(args: Vec<Edn>) -> Result<Edn, String> {
  unary_dbt(args, "dbt-to-digits", |value| {
    let digits = dbt_digits(value)
      .into_iter()
      .map(|(position, digit)| Edn::List(EdnListView(vec![Edn::Number(position as f64), Edn::Number(u8::from(digit) as f64)])))
      .collect();
    Ok(Edn::List(EdnListView(digits)))
  })
}

pub fn dbt_from_digit(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 1, "dbt-from-digit")?;
  let Edn::Number(number) = args[0] else {
    return Err(format!("dbt-from-digit expected an integer from 1 through 9, got {}", args[0]));
  };
  if !number.is_finite() || number.fract() != 0.0 || !(1.0..=9.0).contains(&number) {
    return Err(format!("dbt-from-digit expected an integer from 1 through 9, got {number}"));
  }
  let digit = DualBalancedTernaryDigit::try_from(number as u8)?;
  write_dbt(DualBalancedTernary {
    integral: vec![digit],
    fractional: vec![],
  })
}

pub fn dbt_to_buffer(args: Vec<Edn>) -> Result<Edn, String> {
  unary_dbt(args, "dbt-to-buffer", |value| Vec::<u8>::try_from(value).map(Edn::Buffer))
}

pub fn dbt_equal(args: Vec<Edn>) -> Result<Edn, String> {
  expect_arity(&args, 2, "dbt-equal")?;
  Ok(Edn::Bool(read_dbt(&args[0], "dbt-equal")? == read_dbt(&args[1], "dbt-equal")?))
}

calcit_native_ffi::export_edn_buffer_method_v1!(dbt_parse_calcit_ffi_v1, dbt_parse);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_format_calcit_ffi_v1, dbt_format);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_to_float_calcit_ffi_v1, dbt_to_float);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_from_float_calcit_ffi_v1, dbt_from_float);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_add_calcit_ffi_v1, dbt_add);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_sub_calcit_ffi_v1, dbt_sub);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_mul_calcit_ffi_v1, dbt_mul);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_div_calcit_ffi_v1, dbt_div);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_conjugate_calcit_ffi_v1, dbt_conjugate);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_norm_calcit_ffi_v1, dbt_norm);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_pow_calcit_ffi_v1, dbt_pow);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_move_by_calcit_ffi_v1, dbt_move_by);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_f9_add_calcit_ffi_v1, dbt_f9_add);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_f9_mul_calcit_ffi_v1, dbt_f9_mul);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_f9_inverse_calcit_ffi_v1, dbt_f9_inverse);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_f9_pow_calcit_ffi_v1, dbt_f9_pow);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_f9_trace_calcit_ffi_v1, dbt_f9_trace);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_f9_norm_calcit_ffi_v1, dbt_f9_norm);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_round_calcit_ffi_v1, dbt_round);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_to_digits_calcit_ffi_v1, dbt_to_digits);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_from_digit_calcit_ffi_v1, dbt_from_digit);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_to_buffer_calcit_ffi_v1, dbt_to_buffer);
calcit_native_ffi::export_edn_buffer_method_v1!(dbt_equal_calcit_ffi_v1, dbt_equal);
