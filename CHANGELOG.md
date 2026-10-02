# Changelog

版本遵循语义化版本：PATCH 用于不改变判断框架的小修正；MINOR 用于新增模式或重要校准；MAJOR 用于改变核心评审模型或输出协议。

## 0.1.1 — 2026-10-02

- 修正构建报告中 Skill 校验器依赖的表述，明确为本机快速校验脚本缺少 PyYAML。

## 0.1.0 — 2026-10-02

- 将已验证的 proposal reviewer 规范封装为根目录 portable plugin manifest 与 skills-only Codex plugin。
- 支持 quick、section、full、red-team 四种调用模式，并在正式评审中建立 Project Profile。
- 将方法论摘要、评审模板、规则参考和七个合成 Eval 案例纳入独立分发包。
- 匿名化分发材料中的来源称谓；不打包原始课件、申请书或个案报告。
- 建立 marketplace、版本记录、安装更新说明及质量检查清单。
