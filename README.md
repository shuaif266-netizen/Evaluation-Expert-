# Evaluation Expert

Evaluation Expert 是面向社会科学科研项目申请书的 Codex 评审插件，以证据为依据模拟审慎的同行评审，重点检查学术问题、理论逻辑、概念结构、研究设计、方法—证据匹配、创新和竞争力风险。

它不能保证资助结果，也不替代主管部门资格审查。正式评审时，请在对话中提供申请书，以及可获得的当年申报通知和模板。

GitHub 分发包只含匿名化 Skill、方法论摘要、模板和合成测试案例；不含私人申请书、原始课件、个案评审报告或个人信息。本仓库为私有仓库，Codex/GitHub 账户需有访问权限。

## 安装

在 Codex CLI 中添加 marketplace 并安装插件：

    codex plugin marketplace add shuaif266-netizen/Evaluation-Expert- --ref main
    codex plugin add evaluation-expert@evaluation-expert

仓库也提供项目级 marketplace 文件：.agents/plugins/marketplace.json。Codex 桌面版添加仓库后，重启应用，在 Plugins Directory 中选择 Evaluation Expert 安装。

## 四种评审模式

提供申请书和官方材料后，调用：

    $nssfc-proposal-reviewer quick
    $nssfc-proposal-reviewer section
    $nssfc-proposal-reviewer full
    $nssfc-proposal-reviewer red-team

- quick：5 分钟专家初审，最多列出三个学术风险；明确的合规阻断项另列。
- section：深审指定章节，只核对判断所必需的相邻章节。
- full：从 5 分钟初审开始，完成结构、逻辑、证据、竞争力、合规和修改优先级评审。
- red-team：提出最有力的三个有据可查的反对理由，并判断申请书是否回应。

用户要求完整评审但未指定模式时，默认使用 full。

## 更新、固定版本与卸载

刷新 marketplace：

    codex plugin marketplace upgrade evaluation-expert

刷新已安装的插件文件时，先卸载再安装：

    codex plugin remove evaluation-expert@evaluation-expert
    codex plugin add evaluation-expert@evaluation-expert

版本记录在 VERSION、plugin.json 和 CHANGELOG.md。固定到某个不可变提交或发布标签时，将其 Git ref 传给 --ref：

    codex plugin marketplace add shuaif266-netizen/Evaluation-Expert- --ref <commit-sha-or-tag>

卸载插件，并可选择移除 marketplace 源：

    codex plugin remove evaluation-expert@evaluation-expert
    codex plugin marketplace remove evaluation-expert

## 评审边界与隐私

评审结论受本次申请书、通知、模板和学科范式限制。草稿没有证明的事项，会表述为“现有材料未证明”，不推断为客观不存在。插件不预测资助结果；学术严重度与提交合规分轨，优先报告学术命门。

Manifest、Skill 目录和 Marketplace 约定见 [OpenAI 官方 Plugin 打包文档](https://developers.openai.com/plugins/build/plugins)。
