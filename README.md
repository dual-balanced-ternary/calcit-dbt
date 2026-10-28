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

模块 `0.1.5` 候选配对正式 Calcit **0.31.0**，不再依赖 alpha；发布状态以同名
Git tag 为准。调用方需同步 CLI 并先构建本平台动态库，不将 Linux CI 视为所有平台
已有正式预编译 CLI 或均已验收。本模块仅支持 native，没有 JS runtime 或前端资源。
Rust crate 仍为 `0.1.1`，数学实现、Snapshot、Buffer API 与原断言不变，不重复发布 crate。

Candidate Git module `0.1.5` pairs with formal Calcit **0.31.0**, not an alpha;
check the matching Git tag for publication. Update the CLI and build the platform
dylib first. Linux CI does not certify every platform or promise prebuilt CLI assets.
This is native-only, without a JS runtime or frontend assets. Rust crate `0.1.1`,
arithmetic, Snapshot, Buffer API and original assertions are unchanged; no crate republication.

独立构建不再要求仓库外的 `../dual_balanced_ternary.rs`：改用精确的 crates.io 正式
`dual_balanced_ternary =0.2.0`。已核对发布包的全部数学源码和测试与基线兄弟仓库一致，
CI 不再额外检出兄弟目录；Rust 数学行为和 crate 发布版本不变。
独立目录解析的失败与修复跟踪 [#20](https://github.com/dual-balanced-ternary/calcit-dbt/issues/20)。

Standalone builds now use the exact published `dual_balanced_ternary =0.2.0`
crate instead of an external sibling checkout. Published math sources and tests
are byte-identical to the baseline sibling; CI no longer supplies that directory
([#20](https://github.com/dual-balanced-ternary/calcit-dbt/issues/20)).

原 `analyze quality` 零债务要求迁到公开 `weak-types` 视图：完整覆盖、五类弱类型
命中和弃用调用分别必须为零；动态方法门禁保留。核对了旧 gate 在该 CLI release 中
使用的同一组 coverage/weak/deprecated 输入，没有通过删除检查或放宽预算迁移。
不新增验证脚本、编译器规则或 COS 配置。

The retired quality command is replaced by current coverage, weak-type and
deprecated-call views without weakening its zero-debt requirements. The original
dynamic-method gate remains. No new checker script, compiler rule or COS workflow
is added.

本轮使用正式 Calcit 0.31.0 核对现有源码：33/33 全定义（含元数据）、31/31 完整
类型覆盖、完整 strict、五类弱类型命中、弃用调用及动态方法零债务门禁均通过。
现有 Buffer 边界已满足新工具链要求，无需强行改写 Snapshot 或增加适配器。
Rust fmt/test/strict Clippy、25 个 C-safe 导出审计与新构建 dylib 的原入口 smoke
由原流程继续执行；Linux CI 结果与本地平台结果分别记录，不互相替代。

Formal Calcit 0.31.0 passes all33 definitions including metadata, full31 type
coverage, complete strict, and the original zero-debt gates for weak types,
deprecated calls and dynamic methods. Existing Buffer boundaries already meet
the new toolchain requirements: no forced Snapshot rewrite or new adapter.
The original Rust fmt/tests/strict Clippy, 25-symbol C-safe audit and entry smoke
with a newly built dylib remain required. Linux CI and local platform evidence
are reported separately rather than treated as interchangeable.

本地 macOS 已通过原 6 项 Rust 集成测试、fmt、strict Clippy、release 构建、
25 个 C-safe 导出审计及 Calcit 0.31.0 真实 dylib 入口断言。Linux 结果以本 PR CI 为准。
The local macOS run passes the original six Rust integration tests, fmt, strict
Clippy, release build, 25 C-safe exports and real dylib entry assertions with
Calcit 0.31.0. See this PR's CI for Linux results.

### 已有类型与兼容合同 / Existing type and compatibility contracts

Rust 运算、C-safe 协议和现有 Buffer/Number/String/Bool/List API 保持不变。
此前 23 个动态库返回边界使用现有
`decode-map-as` 校验，不再只依赖返回 schema；错误形状会立即报错，不转换、
补默认值或静默接受。标量/Buffer 检查不做文本序列化，列表结果会递归检查并重建，
有与元素数量相关的开销。此项目仍是 native-only，不新增 JS/WASM 或 COS 支持。

Rust arithmetic, the C-safe protocol and existing public value types are unchanged. The 23
native return boundaries now use the existing `decode-map-as` checker. Invalid
shapes raise instead of being trusted or coerced; scalar/Buffer checks do not
serialize text, while list checking/reconstruction costs scale with element count.
This remains a native-only binding, without new JS/WASM or COS support.

当前升级不再强制改写已通过检查的源码，也不新增强转、预算豁免或测试脚本。
Do not force source rewrites where existing contracts pass, or add casts, budget waivers or checker scripts.

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

开发工具链使用 Rust 1.85+ 和正式 Calcit 0.31.0。
Development uses Rust 1.85+ and formal Calcit 0.31.0.

```bash
cargo fmt -- --check
cargo clippy --all-targets -- -D warnings
cargo test --all-targets
./build.sh
bash scripts/check-c-safe-ffi.sh
caps --strict --ci
caps deps.cirru verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format edn
calcit analyze weak-types --only coverage --summary-only --format json | jq -e '.data.summary.levels.none == 0 and .data.summary.levels.partial == 0'
calcit analyze weak-types --only unsafe-coerce,schema-dynamic,unresolved-type-slot,code-dynamic,code-nil --summary-only --format json | jq -e '.data.summary.hits == 0'
calcit analyze weak-types --only deprecated-call --summary-only --format json | jq -e '.data.summary.calls == 0'
calcit analyze weak-types --only dynamic-method --summary-only --format json | jq -e '.data.summary.findings == 0'
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
smoke, plus all33 definitions (including the31 public definitions and metadata)
and zero-debt gates. Strict must pass with empty diagnostics. This native-only
binding has no frontend assets and needs no COS/CDN workflow or extra test scripts.

原零债务要求由当前 `weak-types` 视图继续执行；历史迁移已移除未被 CI 使用的旧 baseline，
并把两个兼容调用改为 `dbg` 和 `match`。本轮没有需要改写的旧调用或类型合同。
Current `weak-types` views retain zero-debt enforcement. The earlier migration
removed the unused baseline and replaced old calls with `dbg` and `match`;
this round found no further legacy calls or type contracts to rewrite.

## License

MIT
