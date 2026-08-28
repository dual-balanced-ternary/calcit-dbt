# 迁移共享 C-safe FFI / Migrate to shared C-safe FFI

## 中文

- 使用 `calcit_native_ffi 0.1.1` 生成 buffer protocol 与 23 个同步 EDN 导出，删除 Rust-layout ABI。
- 将 Calcit 可见的 DBT 值从不可序列化 `AnyRef` 改为 lossless `Buffer`，公开运算仍可直接组合。
- `dbt:parse` 收窄为 String→Buffer；`dbt:round` 要求显式 precision。
- 用 Calcit 0.13.51 一次性迁移三个 legacy macro schema，再由 0.13.57 将全部 31 个定义收紧到完整静态覆盖。
- CI 增加严格依赖、零类型债务、零动态分派、25 symbol 审计与真实 dylib 回归。

## English

- Use `calcit_native_ffi 0.1.1` for buffer protocol and 23 synchronous EDN exports, removing the Rust-layout ABI.
- Replace non-serializable Calcit-facing `AnyRef` DBT values with lossless `Buffer` values while preserving direct operation composition.
- Narrow `dbt:parse` to String→Buffer and require explicit precision for `dbt:round`.
- Use Calcit 0.13.51 once to migrate three legacy macro schemas, then tighten all 31 definitions to full static coverage with 0.13.57.
- Add strict dependency, zero type-debt, zero dynamic-dispatch, 25-symbol, and real-dylib CI gates.
