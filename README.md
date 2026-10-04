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

开发工具链使用 Rust 1.85+ 和正式 Calcit 0.28.0，不再固定旧 alpha。
Development uses Rust 1.85+ and stable Calcit 0.28.0 rather than the previous alpha.

```bash
cargo fmt -- --check
cargo clippy --all-targets -- -D warnings
cargo test --all-targets
./build.sh
bash scripts/check-c-safe-ffi.sh
caps --strict --ci
calcit --check-only
calcit analyze quality
calcit analyze dynamic-methods --summary-only --format json | jq -e '.data.summary.findings == 0'
calcit analyze check-public --ns dbt.core --ns dbt.main --ns dbt.util --summary-only --format json
calcit
```

`calcit.cirru` is the canonical machine-generated snapshot. Modify it with
`calcit edit`/`calcit tree`, not a text editor.

`dbt` 宏先区分标量语法再转换文本，保留 Number、String、Symbol、Tag、Bool、Nil
原转换和 `&` 前缀处理；这些标量能否构成有效 DBT 仍由原 parser 判断。宏不会求值
调用表达式；非标量输入现在在宏边界给出明确错误。公开运算继续使用既有
Buffer/Number/String/Bool/Unit 合同，不引入 AnyRef、unsafe coercion 或放宽质量预算。

The `dbt` macro narrows scalar syntax before text conversion, preserving the
existing scalar conversion and ampersand prefix. The original parser still
decides whether that scalar represents valid DBT data. Expressions are not
evaluated; non-scalar syntax now receives an explicit macro-boundary error.
Public operations retain the Buffer/Number/String/Bool/Unit contracts.

CI 保留原 Rust 测试、strict Clippy、25 个 C-safe 导出审计和真实 dylib smoke，
并检查全部 31 个公开定义、零质量债务和零动态方法。纯原生绑定没有前端资源，
不新增 COS/CDN 配置、固定 fix workflow 或额外测试脚本。

CI retains the Rust tests, strict Clippy, 25-symbol C-safe audit and real dylib
smoke, plus all 31 public definitions and zero-debt gates. This native-only
binding has no frontend assets and needs no COS/CDN workflow or extra test scripts.

## License

MIT
