#!/usr/bin/env bash
set -euo pipefail

cargo build --release

case "$(uname -s)" in
  Darwin) extension="dylib" ;;
  Linux) extension="so" ;;
  MINGW*|MSYS*|CYGWIN*) extension="dll" ;;
  *) echo "Unsupported operating system: $(uname -s)" >&2; exit 1 ;;
esac

install -d dylibs
cp -v "target/release/libcalcit_dbt.${extension}" dylibs/
