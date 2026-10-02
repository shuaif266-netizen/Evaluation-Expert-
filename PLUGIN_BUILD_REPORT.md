# Plugin 构建报告

日期：2026-10-02  
版本：0.2.0  
目标仓库：shuaif266-netizen/Evaluation-Expert-

## 本轮变化

- 保留主 Skill ID nssfc-proposal-reviewer，避免破坏已有调用；描述扩展到社会科学项目申请书评审。
- Marketplace 使用本仓库快照中的本地相对源 path: ./；外层 Git ref 成为唯一版本选择，不再由内部 source 跳回 main。
- 新增 proposal-reviewer-calibrator Skill，分离申请书评审与 Reviewer 校准。
- 新增 8 个 Activation Eval、强机制申请案例和 Prompt Injection 案例。
- 增加研究范式、自适应输出、S 级反事实校准和材料指令隔离规则。
- 新增版本一致性脚本、Release Checklist 和 v1.0 前审计报告。

## 分发与隐私

Plugin 只包含 anonymized Skills、方法论摘要、模板和合成 Eval。没有真实申请书、原始课件、个人信息、私人专家意见或个案评审报告。Skill 只依赖 Plugin 包内的 references、assets 和 knowledge。

## 安装与调用

官方文档确认 Marketplace CLI 可固定 Git ref；桌面版安装路径通过 Plugins Directory。安装 tag v0.2.0 时：

    codex plugin marketplace add shuaif266-netizen/Evaluation-Expert- --ref v0.2.0

主 Reviewer：

    $nssfc-proposal-reviewer quick
    $nssfc-proposal-reviewer section
    $nssfc-proposal-reviewer full
    $nssfc-proposal-reviewer red-team

校准 Reviewer：

    $proposal-reviewer-calibrator

Marketplace source 使用相对路径 ./，所以安装包与外层 tag/ref 来自同一 Git 快照。

## 校验状态

版本一致性通过 scripts/check-version.ps1。官方 Plugin 文档确认 portable manifest、固定 skills/ 目录、Marketplace 相对路径和 Git ref/sha source 选择器。Codex CLI 0.159.2 help 另列出 plugin add/remove；这些命令的 CLI 安装流程应标注为本机版本确认，不宣称为官方文档稳定教程。

实际 clean install、Eval 行为测试和剩余限制见 SKILL_PLUGIN_AUDIT_REPORT.md。未完成模型行为验证时，不将静态结构检查描述为语义 Regression 通过。
