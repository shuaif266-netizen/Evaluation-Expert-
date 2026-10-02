# Skill / Plugin v1.0 前审计报告

日期：2026-10-02  
候选版本：0.2.0  
状态：审计执行中；尚未达到 v1.0。

## 初步发现

| 优先级 | 问题 | 初步修复 |
|---|---|---|
| P1 | Marketplace 条目嵌套 source.ref=main，外层固定的 Git Marketplace snapshot 可能再次跳回 main | 改为 source.local + path: ./，由外层 Git ref 唯一固定整个仓库快照 |
| P1 | Reviewer 未明确将附件中的指令视为待分析数据 | 主 Skill 增加材料/指令隔离，并建立 Prompt Injection Eval |
| P1 | Reviewer 与自我校准没有独立边界和 Skill | 新增 proposal-reviewer-calibrator |
| P2 | 缺少是否应该调用 Reviewer 的测试 | 新增 activation Eval |
| P2 | VERSION、Plugin manifest、CHANGELOG 缺少动态一致性脚本 | 新增 scripts/check-version.ps1 |
| P2 | Profile 缺少研究范式；完整模板可能被机械填满；S 级校准不足 | 增加研究范式、自适应输出和 S 级反事实检查 |
| P2 | Skill 名称偏国家社科，但已有用户调用依赖该 ID | 暂保留 nssfc-proposal-reviewer；未发现官方 alias 机制依据 |

## 尚待完成

- Marketplace ref → local plugin path → 实际安装版本的 clean-install 验证。
- Activation、Regression、Good Proposal、跨范式和 Prompt Injection 的运行结果。
- 最终 CLI 命令证据表和 v1.0 准入结论。

审计未完成前，不宣称 clean install 或模型行为 Regression 通过。完成后将用实测结果更新本报告。
