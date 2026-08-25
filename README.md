# Calcit DBT

Calcit bindings for [`dual_balanced_ternary`](https://crates.io/crates/dual_balanced_ternary).
The native extension targets the Calcit FFI ABI `0.0.9` and `cirru_edn` 0.8.

## API

```cirru
dbt 1.2

dbt:format $ dbt 1.2
dbt:round (dbt 1.234) 2

dbt:add (dbt 1.2) (dbt 3.4)
dbt:sub (dbt 1.2) (dbt 3.4)
dbt:mul (dbt 1.2) (dbt 3.4)
dbt:div (dbt 1.2) (dbt 3.4)

dbt:to-float $ dbt 12.34
dbt:from-float 4 4
dbt:to-digits $ dbt 12.34
dbt:from-digit 8

; lossless transport through Cirru EDN Buffer
dbt.core/dbt:to-buffer $ dbt 12.34

dbt:equal a b
```

DBT values use `Edn::AnyRef` inside the current process. Use `dbt:to-buffer`
and `dbt:parse` when a value must cross a serialization boundary.

## Development

Requires Rust 1.85+ and Calcit 0.13.44+.

```bash
cargo fmt -- --check
cargo clippy --all-targets -- -D warnings
cargo test --all-targets
./build.sh
calcit --check-only
calcit analyze quality --baseline config/calcit-quality.json
calcit
```

`calcit.cirru` is the canonical machine-generated snapshot. Modify it with
`calcit edit`/`calcit tree`, not a text editor.

## License

MIT
