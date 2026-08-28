# 维护指南 / Maintainer guide

## 中文

- 修改 `calcit.cirru` 前运行 `calcit docs agents --full`；Snapshot 只使用 `calcit edit` / `calcit tree` 修改。
- C-safe buffer、Cirru EDN codec、panic adapter 与导出 wrapper 由 `calcit_native_ffi` 维护。
- DBT 在 Calcit 边界使用 lossless `Buffer` 表示；不要重新引入不可序列化的 `AnyRef`。
- Issue、PR、README 和迁移说明使用中英双语。
- 提交前运行 Rust fmt/test/strict Clippy、symbol audit、Calcit quality/dynamic-method gates 和真实 dylib smoke。

## English

- Run `calcit docs agents --full` before changing `calcit.cirru`; mutate the Snapshot only with `calcit edit` / `calcit tree`.
- `calcit_native_ffi` owns C-safe buffers, Cirru EDN codecs, panic adapters, and exported wrappers.
- DBT values use lossless `Buffer` representation at the Calcit boundary; do not reintroduce non-serializable `AnyRef` values.
- Keep Issues, PRs, README content, and migration notes bilingual.
- Before committing, run Rust fmt/tests/strict Clippy, symbol audit, Calcit quality/dynamic-method gates, and a real dylib smoke.
