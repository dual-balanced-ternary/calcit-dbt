# Calcit DBT

Calcit bindings for [`dual_balanced_ternary`](https://crates.io/crates/dual_balanced_ternary).

Calcit 的双平衡三进制绑定。Native 扩展使用
[`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi) 的 C-safe
buffer protocol v1；descriptor、Cirru EDN transport、panic isolation 与 buffer
ownership 不再由本仓库重复实现。

The native extension uses C-safe buffer protocol v1 from
[`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi), rather
than duplicating descriptors, Cirru EDN transport, panic isolation, and buffer
ownership locally.

## API

```cirru
dbt 1.2

dbt:format $ dbt 1.2
dbt:round (dbt 1.234) 2 ; precision is explicit

dbt:add (dbt 1.2) (dbt 3.4)
dbt:sub (dbt 1.2) (dbt 3.4)
dbt:mul (dbt 1.2) (dbt 3.4)
dbt:div (dbt 1.2) (dbt 3.4)
dbt:conjugate $ dbt 8
dbt:norm $ dbt 8
dbt:pow (dbt 8) 4
dbt:move-by (dbt 1.2) 2

; carry-free arithmetic in F9, using digit numbers 1 through 9
dbt:f9-add 8 8
dbt:f9-mul 8 8
dbt:f9-inverse 8
dbt:f9-pow 8 8
dbt:f9-trace 8
dbt:f9-norm 8

dbt:to-float $ dbt 12.34
dbt:from-float 4 4
dbt:to-digits $ dbt 12.34
dbt:from-digit 8

; lossless transport through Cirru EDN Buffer
dbt.core/dbt:to-buffer $ dbt 12.34

dbt:equal a b
```

DBT 值在 Calcit 中统一使用 lossless `Buffer` 表示，因此可安全穿过 C ABI、保存或
传递，并且仍能直接传给 `dbt:add` 等公开运算。`dbt:parse` 只接受 String；已有
Buffer 本身就是 DBT 值，不需要再次 parse。`dbt:round` 的 precision 现在必须显式传入。

Calcit-facing DBT values uniformly use a lossless `Buffer` representation, so
they can cross the C ABI, be stored, and still compose directly with operations
such as `dbt:add`. `dbt:parse` accepts String only because an existing Buffer is
already a DBT value. `dbt:round` now requires an explicit precision.

## Development

Requires Rust 1.85+ and Calcit 0.13.57+.

```bash
cargo fmt -- --check
cargo clippy --all-targets -- -D warnings
cargo test --all-targets
./build.sh
bash scripts/check-c-safe-ffi.sh
caps --strict --ci
calcit --check-only
calcit analyze quality
calcit analyze dynamic-methods --max 0
calcit
```

`calcit.cirru` is the canonical machine-generated snapshot. Modify it with
`calcit edit`/`calcit tree`, not a text editor.

## License

MIT
