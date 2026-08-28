#!/usr/bin/env bash

set -euo pipefail

case "$(uname -s)" in
  Darwin)
    library="dylibs/libcalcit_dbt.dylib"
    symbols="$(nm -gU "$library")"
    ;;
  Linux)
    library="dylibs/libcalcit_dbt.so"
    symbols="$(nm -D --defined-only "$library")"
    ;;
  *)
    echo "unsupported platform for symbol audit: $(uname -s)" >&2
    exit 1
    ;;
esac

expected=(
  calcit_ffi_buffer_version
  calcit_ffi_buffer_free
  dbt_parse_calcit_ffi_v1
  dbt_format_calcit_ffi_v1
  dbt_to_float_calcit_ffi_v1
  dbt_from_float_calcit_ffi_v1
  dbt_add_calcit_ffi_v1
  dbt_sub_calcit_ffi_v1
  dbt_mul_calcit_ffi_v1
  dbt_div_calcit_ffi_v1
  dbt_conjugate_calcit_ffi_v1
  dbt_norm_calcit_ffi_v1
  dbt_pow_calcit_ffi_v1
  dbt_move_by_calcit_ffi_v1
  dbt_f9_add_calcit_ffi_v1
  dbt_f9_mul_calcit_ffi_v1
  dbt_f9_inverse_calcit_ffi_v1
  dbt_f9_pow_calcit_ffi_v1
  dbt_f9_trace_calcit_ffi_v1
  dbt_f9_norm_calcit_ffi_v1
  dbt_round_calcit_ffi_v1
  dbt_to_digits_calcit_ffi_v1
  dbt_from_digit_calcit_ffi_v1
  dbt_to_buffer_calcit_ffi_v1
  dbt_equal_calcit_ffi_v1
)

for symbol in "${expected[@]}"; do
  if ! grep -Eq "[[:space:]]_?${symbol}$" <<<"$symbols"; then
    echo "missing C-safe export: $symbol" >&2
    exit 1
  fi
done

if grep -Eq '[[:space:]]_?(abi_version|edn_version|dbt_parse|dbt_format|dbt_add|dbt_sub|dbt_mul|dbt_div)$' <<<"$symbols"; then
  echo "legacy Rust ABI export is still visible" >&2
  exit 1
fi

echo "verified ${#expected[@]} C-safe calcit-dbt exports and no legacy Rust ABI symbols in $library"
