---
name: proposal-reviewer-calibrator
description: 当用户要求校准科研项目申请书 Reviewer、比较盲审结果与人工专家意见、分析漏判/误判/过度批评、或根据 Eval 更新评审规则时使用；不用于直接评审普通申请书。
---

# 任务边界

校准对象是 Reviewer 的判断，不是重新评审申请书。只有为核对某条判断所必需时，才查看测试申请书的最小相关片段。不得把校准 Skill 的建议自动写入主 Reviewer；不得上传私人申请书、未匿名专家意见或逐案报告。

# 校准流程

1. 记录 Reviewer 与测试集版本，并冻结原始 Reviewer 输出和人工判断，避免事后改写基线。
2. 以位置、文本证据、判断、严重度和修改建议逐项对照。
3. 将差异分类为 True Positive、False Positive、False Negative 或 Severity Error。
4. 判断发现属于 Case-specific、Generalizable、Domain-specific 或 Uncertain。
5. 只有可推广的判断才考虑进入通用 references 或主 Skill；领域规则写入限定范围的参考材料；个案结论留在案例记录；证据不足则继续观察。
6. 提出最小修改，说明来源依据、适用边界和反例。除明确逻辑 bug、安全问题或规范错误外，单一案例不得改变核心判断模型；通常需要两个独立案例，或一个高质量案例、明确人工依据及回归结果。
7. 修改后执行 references / activation / prompt-injection 与核心回归案例。不得为修复一个案例而破坏良好申请书、跨学科或合规分轨案例。
8. 只有回归检查通过后，才更新 Skill、calibration-log、CHANGELOG 和 VERSION。使用 Plugin 根目录的 ../../scripts/check-version.ps1 检查版本一致性；若处于带发布 tag 的 Git clone，可加 -RequireTag。

# 校准结论类别

- True Positive：Reviewer 准确发现有证据支撑的重要问题。
- False Positive：Reviewer 无充分依据地提出问题或夸大缺陷。
- False Negative：Reviewer 漏掉了有充分依据的重大问题。
- Severity Error：问题本身发现正确，但 S/A/B/C 或合规等级不当。

泛化标签为 Case-specific、Generalizable、Domain-specific、Uncertain。每项修改建议必须同时给出一个泛化标签。

# 输出与维护

校准报告应列出基线、对照证据、差异类别、泛化标签、拟修改文件、回归案例及通过/失败结果。没有可泛化问题时，明确记录“本轮不修改 Reviewer 核心规则”。

流程细则见 references/calibration-protocol.md；记录模板见 ../../evals/calibration-log.md；回归清单见 ../../evals/benchmark.md。只更新确有证据支持的条目，不因一次测试扩写 Skill。
