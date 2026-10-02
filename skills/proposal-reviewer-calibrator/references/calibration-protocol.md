# Reviewer 校准协议

## 输入与冻结

适用输入包括匿名测试申请书、冻结的 Reviewer 结果、人工复核或真实专家意见、当前 Skill/Plugin 版本和对应 Eval。先登记文件来源与匿名状态，再冻结 Reviewer 原始输出。不得先给 Reviewer 看人工意见，再要求它预测相同意见。

真实专家意见未经匿名或未获授权时，不复制进 GitHub；仅在本地作最小必要比较。

## 差异分类

| 类别 | 判定问题 |
|---|---|
| True Positive | Reviewer 是否定位了真实存在、对判断有实质影响的问题，并给出充分文本依据？ |
| False Positive | Reviewer 是否把合理做法说成缺陷、过度升级严重度，或提出材料并不支持的要求？ |
| False Negative | 是否漏掉了能改变学术成立性、设计或合规判断的问题？ |
| Severity Error | 问题发现正确，但学术严重度或合规严重度是否过高、过低或混轨？ |

每个判断需标出申请书位置、证据、Reviewer 原判断、人工判断和判定理由。

## 泛化判断

- Case-specific：依赖这一项目的题材、字段、通知或个案事实，不写入通用 Skill。
- Generalizable：跨学科可重复使用的论证、证据或严重度规则，可进入主 Skill 或共享 reference。
- Domain-specific：只对特定学科或范式适用，放入标明范围的 reference。
- Uncertain：独立案例或依据不足，记录观察，不修改规则。

## 采纳门槛

单一普通案例不得改变核心 Reviewer 模型。例外仅限明确的逻辑 bug、安全问题或违反官方规范。一般规则需有至少两个独立案例；或一个高质量真实案例、明确人工专家依据和针对该修改的 Regression Eval。

修改应优先放在 reference；只有所有 Reviewer 运行都必须遵循的短规则才进入主 Skill。不要把个案主题、术语或固定样本要求泛化。

## Regression

至少检查：核心问题、概念层级、方法—证据、创新、良好申请书、合规分轨、跨学科、Activation Eval 和 Prompt Injection Eval。记录每个案例是通过、失败、未运行或不适用。任一关键案例退化时，撤回或缩小修改范围。

## 发布

每次采纳修改都更新 calibration-log.md、CHANGELOG.md 和 VERSION；运行版本脚本。发布 tag 应与 Plugin VERSION 匹配。不得声称 Eval 通过，除非已运行并保留结果。
