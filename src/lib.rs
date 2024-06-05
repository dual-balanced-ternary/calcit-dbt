use cirru_edn::{Edn, EdnListView};
use dual_balanced_ternary::{complex::ComplexXy, dbt_digits, DualBalancedTernary, DualBalancedTernaryDigit};
use std::{convert::TryFrom, str::FromStr};

#[no_mangle]
pub fn abi_version() -> String {
  String::from("0.0.9")
}

#[no_mangle]
pub fn dbt_parse(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    match &args[0] {
      Edn::Str(s) => match DualBalancedTernary::from_str(s) {
        Ok(v) => Ok(Edn::any_ref(v)),
        Err(e) => Err(e),
      },
      Edn::Buffer(buf) => match DualBalancedTernary::try_from(buf) {
        Ok(v) => Ok(Edn::any_ref(v)),
        Err(e) => Err(e),
      },
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
      match DualBalancedTernary::try_from(buf) {
        Ok(v) => Ok(Edn::str(v.to_string())),
        Err(e) => Err(e),
      }
    } else if let Edn::AnyRef(v) = &args[0] {
      if let Some(v) = v
        .0
        .read()
        .map_err(|e| e.to_string())?
        .as_any()
        .downcast_ref::<DualBalancedTernary>()
      {
        Ok(Edn::str(v.to_string()))
      } else {
        Err(format!("dbt-format expected a dbt value, got: {:?}", args[0]))
      }
    } else {
      Err(format!("db-ternary expected a dbt value, got: {:?}", args[0]))
    }
  } else {
    Err(format!("db-ternary expected 1 argument, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_to_float(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::Buffer(buf) = &args[0] {
      match DualBalancedTernary::try_from(buf) {
        Ok(v) => {
          let xy = ComplexXy::from(v);
          Ok(Edn::List(EdnListView(vec![Edn::Number(xy.x), Edn::Number(xy.y)])))
        }
        Err(e) => Err(e),
      }
    } else if let Edn::AnyRef(f) = &args[0] {
      if let Some(v) = f
        .0
        .read()
        .map_err(|e| e.to_string())?
        .as_any()
        .downcast_ref::<DualBalancedTernary>()
      {
        let xy = ComplexXy::from(v.clone());
        Ok(Edn::List(EdnListView(vec![Edn::Number(xy.x), Edn::Number(xy.y)])))
      } else {
        Err(format!("db-to-float expected a dbt value, got: {:?}", args[0]))
      }
    } else {
      Err(format!("db-to-float expected a dbt value, got: {:?}", args[0]))
    }
  } else {
    Err(format!("db-to-float expected 1 argument, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_from_float(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    match (&args[0], &args[1]) {
      (Edn::Number(x), Edn::Number(y)) => {
        let v = DualBalancedTernary::new(x.to_owned(), y.to_owned());
        Ok(Edn::any_ref(v))
      }
      (a, b) => Err(format!("dbt-from-pair expected 2 any-refs, got: {} {}", a, b)),
    }
  } else {
    Err(format!("dbt-from-pair expected 2 arguments, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_add(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    match (&args[0], &args[1]) {
      (Edn::AnyRef(v1), Edn::AnyRef(v2)) => {
        if let Some(v1) = v1
          .0
          .read()
          .map_err(|e| e.to_string())?
          .as_any()
          .downcast_ref::<DualBalancedTernary>()
        {
          if let Some(v2) = v2
            .0
            .read()
            .map_err(|e| e.to_string())?
            .as_any()
            .downcast_ref::<DualBalancedTernary>()
          {
            let v = v1.clone() + v2.clone();
            Ok(Edn::any_ref(v))
          } else {
            Err(format!("dbt-add expected 2 dbt values, got: {} {:?}", v1, v2))
          }
        } else {
          Err(format!("dbt-add expected 2 dbt values, got: {:?} {:?}", v1, v2))
        }
      }
      (a, b) => Err(format!("dbt-add expected 2 any-refs, got: {} {}", a, b)),
    }
  } else {
    Err(format!("dbt-add expected 2 arguments, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_sub(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    match (&args[0], &args[1]) {
      (Edn::AnyRef(v1), Edn::AnyRef(v2)) => {
        if let Some(v1) = v1
          .0
          .read()
          .map_err(|e| e.to_string())?
          .as_any()
          .downcast_ref::<DualBalancedTernary>()
        {
          if let Some(v2) = v2
            .0
            .read()
            .map_err(|e| e.to_string())?
            .as_any()
            .downcast_ref::<DualBalancedTernary>()
          {
            let v = v1.clone() - v2.clone();
            Ok(Edn::any_ref(v))
          } else {
            Err(format!("dbt-sub expected 2 dbt values, got: {} {:?}", v1, v2))
          }
        } else {
          Err(format!("dbt-sub expected 2 dbt values, got: {:?} {:?}", v1, v2))
        }
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
      (Edn::AnyRef(v1), Edn::AnyRef(v2)) => {
        if let Some(v1) = v1
          .0
          .read()
          .map_err(|e| e.to_string())?
          .as_any()
          .downcast_ref::<DualBalancedTernary>()
        {
          if let Some(v2) = v2
            .0
            .read()
            .map_err(|e| e.to_string())?
            .as_any()
            .downcast_ref::<DualBalancedTernary>()
          {
            let v = v1.clone() * v2.clone();
            Ok(Edn::any_ref(v))
          } else {
            Err(format!("dbt-mul expected 2 dbt values, got: {} {:?}", v1, v2))
          }
        } else {
          Err(format!("dbt-mul expected 2 dbt values, got: {:?} {:?}", v1, v2))
        }
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
      (Edn::AnyRef(v1), Edn::AnyRef(v2)) => {
        if let Some(v1) = v1
          .0
          .read()
          .map_err(|e| e.to_string())?
          .as_any()
          .downcast_ref::<DualBalancedTernary>()
        {
          if let Some(v2) = v2
            .0
            .read()
            .map_err(|e| e.to_string())?
            .as_any()
            .downcast_ref::<DualBalancedTernary>()
          {
            let v = v1.clone() / v2.clone();
            Ok(Edn::any_ref(v))
          } else {
            Err(format!("dbt-div expected 2 dbt values, got: {} {:?}", v1, v2))
          }
        } else {
          Err(format!("dbt-div expected 2 dbt values, got: {:?} {:?}", v1, v2))
        }
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
      (Edn::AnyRef(v1), Edn::Number(n)) => {
        if let Some(v1) = v1
          .0
          .read()
          .map_err(|e| e.to_string())?
          .as_any()
          .downcast_ref::<DualBalancedTernary>()
        {
          let v = v1.round_n(n.floor() as usize);
          Ok(Edn::any_ref(v))
        } else {
          Err(format!("dbt-round expected a dbt value, got: {:?}", args[0]))
        }
      }
      (a, b) => Err(format!("dbt-round expected a buffer and a size, got: {} {}", a, b)),
    }
  } else {
    Err(format!("dbt-round expected 2 arguments, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_to_digits(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::AnyRef(v) = &args[0] {
      if let Some(v) = v
        .0
        .read()
        .map_err(|e| e.to_string())?
        .as_any()
        .downcast_ref::<DualBalancedTernary>()
      {
        let mut xs: Vec<Edn> = vec![];
        for (i, d) in dbt_digits(v.to_owned()) {
          xs.push(Edn::List(EdnListView(vec![
            Edn::Number(i as f64),
            Edn::Number(Into::<u8>::into(d) as f64),
          ])))
        }
        Ok(Edn::List(EdnListView(xs)))
      } else {
        Err(format!("dbt-digits expected a dbt value, got: {:?}", args[0]))
      }
    } else {
      Err(format!("dbt-digits expected a dbt value, got: {:?}", args[0]))
    }
  } else {
    Err(format!("dbt-digits expected 1 argument, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_from_digit(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::Number(n) = &args[0] {
      let v = DualBalancedTernaryDigit::try_from(*n as u8)?;
      Ok(Edn::any_ref(DualBalancedTernary {
        integral: vec![v],
        fractional: vec![],
      }))
    } else {
      Err(format!("dbt-from-digit expected a dbt value, got: {:?}", args[0]))
    }
  } else {
    Err(format!("dbt-from-digit expected 1 argument, got: {:?}", args))
  }
}

#[no_mangle]
pub fn dbt_equal(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 2 {
    match (&args[0], &args[1]) {
      (Edn::AnyRef(v1), Edn::AnyRef(v2)) => {
        if let Some(v1) = v1
          .0
          .read()
          .map_err(|e| e.to_string())?
          .as_any()
          .downcast_ref::<DualBalancedTernary>()
        {
          if let Some(v2) = v2
            .0
            .read()
            .map_err(|e| e.to_string())?
            .as_any()
            .downcast_ref::<DualBalancedTernary>()
          {
            Ok(Edn::Bool(v1 == v2))
          } else {
            Err(format!("dbt-equal expected 2 dbt values, got: {} {:?}", v1, v2))
          }
        } else {
          Err(format!("dbt-equal expected 2 dbt values, got: {:?} {:?}", v1, v2))
        }
      }
      (a, b) => Err(format!("dbt-equal expected 2 any-refs, got: {} {}", a, b)),
    }
  } else {
    Err(format!("dbt-equal expected 2 arguments, got: {:?}", args))
  }
}
