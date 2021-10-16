use cirru_edn::Edn;
use dual_balanced_ternary::{
  create_dual_balanced_ternary_from_pair, dbt_digits, parse_ternary, DualBalancedTernary,
  DualBalancedTernaryDigit,
};

#[no_mangle]
pub fn dbt_parse(args: Vec<Edn>) -> Result<Edn, String> {
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
    Err(format!("dbt-parse expected 1 argument, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_format(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::Buffer(buf) = &args[0] {
      match DualBalancedTernary::from_buffer(buf) {
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

#[no_mangle]
pub fn dbt_to_float(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::Buffer(buf) = &args[0] {
      match DualBalancedTernary::from_buffer(buf) {
        Ok(v) => {
          let xy = v.to_float();
          Ok(Edn::List(vec![Edn::Number(xy.x), Edn::Number(xy.y)]))
        }
        Err(e) => Err(e),
      }
    } else {
      Err(format!(
        "db-to-float expected a dbt value, got: {:?}",
        args[0]
      ))
    }
  } else {
    Err(format!("db-to-float expected 1 argument, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_from_float(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    match (&args[0], &args[1]) {
      (Edn::Number(x), Edn::Number(y)) => Ok(Edn::Buffer(
        create_dual_balanced_ternary_from_pair(x.to_owned(), y.to_owned()).to_buffer()?,
      )),
      (a, b) => Err(format!(
        "dbt-from-pair expected 2 buffers, got: {} {}",
        a, b
      )),
    }
  } else {
    Err(format!(
      "dbt-from-pair expected 2 arguments, got: {:?}",
      args
    ))
  }
}

#[no_mangle]
pub fn dbt_add(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    match (&args[0], &args[1]) {
      (Edn::Buffer(buf1), Edn::Buffer(buf2)) => {
        let v1 = DualBalancedTernary::from_buffer(buf1)?;
        let v2 = DualBalancedTernary::from_buffer(buf2)?;
        Ok(Edn::Buffer((v1 + v2).to_buffer()?))
      }
      (a, b) => Err(format!("dbt-add expected 2 buffers, got: {} {}", a, b)),
    }
  } else {
    Err(format!("dbt-add expected 2 arguments, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_sub(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    match (&args[0], &args[1]) {
      (Edn::Buffer(buf1), Edn::Buffer(buf2)) => {
        let v1 = DualBalancedTernary::from_buffer(buf1)?;
        let v2 = DualBalancedTernary::from_buffer(buf2)?;
        Ok(Edn::Buffer((v1 - v2).to_buffer()?))
      }
      (a, b) => Err(format!("dbt-sub expected 2 buffers, got: {} {}", a, b)),
    }
  } else {
    Err(format!("dbt-sub expected 2 arguments, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_mul(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    match (&args[0], &args[1]) {
      (Edn::Buffer(buf1), Edn::Buffer(buf2)) => {
        let v1 = DualBalancedTernary::from_buffer(buf1)?;
        let v2 = DualBalancedTernary::from_buffer(buf2)?;
        Ok(Edn::Buffer((v1 * v2).to_buffer()?))
      }
      (a, b) => Err(format!("dbt-mul expected 2 buffers, got: {} {}", a, b)),
    }
  } else {
    Err(format!("dbt-mul expected 2 arguments, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_div(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    match (&args[0], &args[1]) {
      (Edn::Buffer(buf1), Edn::Buffer(buf2)) => {
        let v1 = DualBalancedTernary::from_buffer(buf1)?;
        let v2 = DualBalancedTernary::from_buffer(buf2)?;
        Ok(Edn::Buffer((v1 / v2).to_buffer()?))
      }
      (a, b) => Err(format!("dbt-div expected 2 buffers, got: {} {}", a, b)),
    }
  } else {
    Err(format!("dbt-div expected 2 arguments, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_round(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    match (&args[0], &args[1]) {
      (Edn::Buffer(buf1), Edn::Number(n)) => {
        let v1 = DualBalancedTernary::from_buffer(buf1)?;
        let v2 = n.floor() as usize;
        Ok(Edn::Buffer((v1.round_n(v2)).to_buffer()?))
      }
      (a, b) => Err(format!(
        "dbt-round expected a buffer and a size, got: {} {}",
        a, b
      )),
    }
  } else {
    Err(format!("dbt-round expected 2 arguments, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_to_digits(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::Buffer(buf) = &args[0] {
      match DualBalancedTernary::from_buffer(buf) {
        Ok(v) => {
          let mut xs: Vec<Edn> = vec![];
          for (i, d) in dbt_digits(v) {
            xs.push(Edn::List(vec![
              Edn::Number(i as f64),
              Edn::Number(d.to_u8() as f64),
            ]))
          }
          Ok(Edn::List(xs))
        }
        Err(e) => Err(e),
      }
    } else {
      Err(format!(
        "dbt-digits expected a dbt value, got: {:?}",
        args[0]
      ))
    }
  } else {
    Err(format!("dbt-digits expected 1 argument, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_from_digit(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::Number(n) = &args[0] {
      let v = DualBalancedTernaryDigit::from_u8(*n as u8)?;
      Ok(Edn::Buffer(
        (DualBalancedTernary {
          integral: vec![v],
          fractional: vec![],
        })
        .to_buffer()?,
      ))
    } else {
      Err(format!(
        "dbt-from-digit expected a dbt value, got: {:?}",
        args[0]
      ))
    }
  } else {
    Err(format!(
      "dbt-from-digit expected 1 argument, got: {:?}",
      args
    ))
  }
}
