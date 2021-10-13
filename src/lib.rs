use cirru_edn::Edn;
use dual_balanced_ternary::{parse_ternary, DualBalancedTernary};

#[no_mangle]
pub fn db_ternary(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    match &args[0] {
      Edn::Str(s) => match parse_ternary(s) {
        Ok(v) => Ok(Edn::Buffer(v.to_buffer()?)),
        Err(e) => Err(e),
      },
      Edn::Buffer(buf) => Ok(Edn::Buffer(buf.to_owned())),
      a => Err(format!("unknown value for dbt: {}", a)),
    }
  } else {
    Err(format!("db-ternary expected 1 argument, got: {:?}", args))
  }
}

pub fn format_dbt(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::Buffer(buf) = &args[0] {
      match DualBalancedTernary::from_buffer(buf.to_owned()) {
        Ok(v) => Ok(Edn::Str(format!("{}", v))),
        Err(e) => Err(e),
      }
    } else {
      Err(format!(
        "db-ternary expected a dbt value, got: {:?}",
        args[0]
      ))
    }
  } else {
    Err(format!("db-ternary expected 1 argument, got: {:?}", args))
  }
}

#[cfg(test)]
mod tests {
  #[test]
  fn it_works() {
    assert_eq!(2 + 2, 4);
  }
}
