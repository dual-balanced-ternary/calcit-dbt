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

## 使用者影响 / User impact

候选 Git 模块 0.1.5 配对正式 Calcit 0.30.0；Rust 运算、C-safe 协议和现有
Buffer/Number/String/Bool/List API 保持不变。23 个动态库返回边界使用现有
`decode-map-as` 校验，不再只依赖返回 schema；错误形状会立即报错，不转换、
补默认值或静默接受。标量/Buffer 检查不做文本序列化，列表结果会递归检查并重建，
有与元素数量相关的开销。此项目仍是 native-only，不新增 JS/WASM 或 COS 支持。

Candidate Git module 0.1.5 pairs with formal Calcit 0.30.0. Rust arithmetic,
the C-safe protocol and the existing public value types are unchanged. The 23
native return boundaries now use the existing `decode-map-as` checker. Invalid
shapes raise instead of being trusted or coerced; scalar/Buffer checks do not
serialize text, while list checking/reconstruction costs scale with element count.
This remains a native-only binding, without new JS/WASM or COS support.

本次从 0.1.4 升级只更新 Calcit 工具链与完整 strict 门禁，不修改 Snapshot、
Rust 源码或原断言。仍需先构建本平台 dylib；Rust crate 没有变更，不重复发布 crate。
正式 module tag 发布前不要引用候选版本，也不将生产依赖固定为 alpha。

This upgrade from 0.1.4 only updates the Calcit toolchain and complete strict gate;
the Snapshot, Rust sources and original assertions are unchanged. Build the native
dylib first. The Rust crate is unchanged and is not being republished. Do not pin
an unreleased module candidate or use an alpha toolchain for this stable update.

## API

```cirru
ns app.main $ :require
  dbt.core :refer $ dbt dbt:format dbt:round dbt:add dbt:sub dbt:mul dbt:div dbt:conjugate dbt:norm dbt:pow dbt:move-by dbt:f9-add dbt:f9-mul dbt:f9-inverse dbt:f9-pow dbt:f9-trace dbt:f9-norm dbt:to-float dbt:from-float dbt:to-digits dbt:from-digit dbt:equal

dbt 1.2

dbt:format $ dbt 1.2
; precision is explicit
dbt:round (dbt 1.234) 2

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

dbt:equal (dbt 1) (dbt 1)
```

DBT 值在 Calcit 中统一使用 lossless `Buffer` 表示，因此可安全穿过 C ABI、保存或
传递，并且仍能直接传给 `dbt:add` 等公开运算。`dbt:parse` 只接受 String；已有
Buffer 本身就是 DBT 值，不需要再次 parse。`dbt:round` 的 precision 现在必须显式传入。

Calcit-facing DBT values uniformly use a lossless `Buffer` representation, so
they can cross the C ABI, be stored, and still compose directly with operations
such as `dbt:add`. `dbt:parse` accepts String only because an existing Buffer is
already a DBT value. `dbt:round` now requires an explicit precision.

## Development

开发工具链使用 Rust 1.85+ 和正式 Calcit 0.30.0，不再固定旧 alpha。
Development uses Rust 1.85+ and stable Calcit 0.30.0 rather than the previous alpha.

```bash
cargo fmt -- --check
cargo clippy --all-targets -- -D warnings
cargo test --all-targets
./build.sh
bash scripts/check-c-safe-ffi.sh
caps --strict --ci
calcit fix --workflow strict --verify --format edn
calcit analyze quality
calcit analyze weak-types --only dynamic-method --summary-only --format json | jq -e '.data.summary.findings == 0'
calcit --check-only --ns dbt.core --ns dbt.main --ns dbt.util --summary-only --format json
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
不新增 COS/CDN 配置、固定改写规则或额外测试脚本。

CI retains the Rust tests, strict Clippy, 25-symbol C-safe audit and real dylib
smoke, plus all 31 public definitions and zero-debt gates. This native-only
binding has no frontend assets and needs no COS/CDN workflow or extra test scripts.

原 `analyze quality` strict-zero 门禁暂时保留，不因入口弃用而删除零债务要求；
已移除未被 CI 使用且记录旧债务的 baseline 文件。两个旧调用改为 `dbg` 和 `match`。
The existing `analyze quality` strict-zero gate is retained despite its CLI
deprecation; the unused historical debt baseline is removed. Deprecated calls
now use `dbg` and `match`.

## License

MIT
