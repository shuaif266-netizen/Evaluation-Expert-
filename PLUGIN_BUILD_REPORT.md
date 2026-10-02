# Plugin 构建报告

日期：2026-10-02  
版本：0.2.1  
目标仓库：shuaif266-netizen/Evaluation-Expert-

## 0.2.x 架构

仓库采用 portable skills-only Plugin：根目录 plugin.json 自动发现 skills/；当前不包含 MCP Server。Marketplace 的插件 source 使用本仓库快照内的 local path: ./，版本由添加 Marketplace 时指定的 Git tag/ref 决定，避免外层 ref 固定后内层再次跳回 main。

## 能力与维护文件

- skills/nssfc-proposal-reviewer/：主评审 Skill，保留旧调用 ID，并支持 quick、section、full、red-team。
- skills/proposal-reviewer-calibrator/：独立校准 Skill，比较 Reviewer 与人工判断、分类差异并执行 Regression。
- knowledge/：六份匿名化方法论摘要；来源索引属于开发 provenance，不是每次评审的权威标准。
- evals/：核心评审案例、Activation Eval、Prompt Injection Eval、质量指标和校准记录。
- scripts/check-version.ps1：用 PowerShell 标准库检查 VERSION、plugin.json、最新 CHANGELOG 版本及可选 Git tag。
- RELEASE_CHECKLIST.md：版本、ref、Evals、隐私和 clean install 检查项。
- SKILL_PLUGIN_AUDIT_REPORT.md：本轮发现、修复、实测和 v1.0 准入结论。

## 安装方式

固定到当前发布 tag 时，使用 OpenAI 文档确认的 Git Marketplace --ref：

    codex plugin marketplace add shuaif266-netizen/Evaluation-Expert- --ref v0.2.1

Marketplace 内部使用相对本地 source ./，所以安装文件与所固定的仓库快照一致。Codex 桌面版也可从 Plugins Directory 安装 repo Marketplace。

Marketplace add/list/upgrade/remove 与 --ref 由 OpenAI Plugin 文档确认。Plugin add/remove 虽出现在本机 Codex CLI 0.159.2 help 且实测成功，但官方 Plugin 打包文档未将其列为稳定接口；README 已明确区分。

## 测试与限制

Codex CLI 0.159.2 已从 v0.2.0 与 v0.2.1 tag 建立 Marketplace snapshot 并安装 Plugin；v0.2.1 的隔离 CODEX_HOME 安装缓存版本、两个 Skill 路径、snapshot SHA 和 tag SHA 一致。Reviewer/Calibrator 合成行为回归在 Reviewer 指令未改变的 v0.2.0 Skill 上运行；v0.2.1 修订强机制 Eval 夹具、版本说明和审计记录。历史提交隐私项及 v1.0 阻断项见 SKILL_PLUGIN_AUDIT_REPORT.md。
