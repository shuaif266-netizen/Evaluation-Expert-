# Plugin 构建报告

日期：2026-10-02  
版本：0.1.1  
目标仓库：shuaif266-netizen/Evaluation-Expert-

## 原结构与新结构

远端原来以单独 Reviewer Skill 和项目工作目录材料为主，没有 portable Plugin manifest、版本制度或独立调用模式。本次将仓库根目录升级为 skills-only Plugin，按固定目录分发 Skill、方法论知识、合成 Eval 和 Marketplace。

旧仓库中的方法论摘要、校准记录、报告模板和评审标准经匿名化、筛选后纳入新包；私人报告、原始材料路径和项目工作区说明从当前发布树移除。

## 新建与整理

- plugin.json：portable manifest，版本 0.1.0，只声明 Skill，不声明 MCP。
- skills/nssfc-proposal-reviewer/：主 Skill、规则参考、匿名来源索引、报告模板和资产说明。
- knowledge/：六份匿名化方法论摘要及证据等级说明。
- evals/：benchmark、匿名校准摘要、质量检查表和七个最小合成案例。
- .agents/plugins/marketplace.json：指向 GitHub 仓库根目录的 Marketplace 条目。
- README.md、CHANGELOG.md、VERSION、.gitignore：用户安装、调用、升级、版本和隐私入口。
- 本报告：记录 Plugin 结构与验证结果。

本地原始资料和逐案评审材料没有复制到分发包。Skill 只依赖包内 references 和 knowledge。

## 安装、调用与更新

首次安装：

    codex plugin marketplace add shuaif266-netizen/Evaluation-Expert- --ref main
    codex plugin add evaluation-expert@evaluation-expert

调用：

    $nssfc-proposal-reviewer quick
    $nssfc-proposal-reviewer section
    $nssfc-proposal-reviewer full
    $nssfc-proposal-reviewer red-team

刷新 Marketplace：

    codex plugin marketplace upgrade evaluation-expert

固定版本时，用已知的 Git commit SHA 或发布 tag 作为 --ref。刷新已安装文件时，按 README 说明移除并重新安装。卸载及移除 Marketplace 的命令也见 README。

## 验证结果

- 按 OpenAI 官方 portable plugin 结构使用根目录 plugin.json 与 skills/；无 MCP 声明。
- Skill 相对引用指向包内 references 和 knowledge；不依赖本地绝对路径。
- Marketplace source 指向 GitHub 仓库根目录；安装、刷新、固定 ref 和移除命令已对照官方文档及本机 Codex CLI。
- 七个合成案例覆盖目标能力，包括测试误报克制的良好申请书案例。
- 发布清单只含匿名化文本和合成测试材料，不含私人申请书、个案评审报告、原始课件、个人身份信息或临时转换文件。
- 当前运行环境的 Skill 快速校验脚本缺少 PyYAML 依赖，因此未运行该脚本；已通过 JSON、元数据、目录、相对路径、测试案例和隐私检查。

## 限制与下一步

- GitHub 仓库为私有仓库，安装账户须有访问权限。
- 尚未在全新 Codex 用户配置中实际完成安装会话；构建检查不等同于运行时安装验证。
- 第二次盲测应使用不同学科和研究范式，重点测良好案例误报克制、学术与合规分轨、理论问题识别和概念层级判断。
- 后续重要校准应同步更新 CHANGELOG、VERSION 和 evals/calibration-log.md。
