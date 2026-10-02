# Release checklist

在创建 GitHub release tag 前逐项检查。Plugin 版本未达 v1.0 时，仍按相同门槛执行。

## Package and version

- [ ] VERSION、plugin.json.version、CHANGELOG 最新版本一致。
- [ ] 运行 scripts/check-version.ps1；发布 tag 后在 tag checkout 中运行 scripts/check-version.ps1 -RequireTag。
- [ ] Marketplace 插件 source 使用仓库快照内的相对路径 ./，不另行指向 main。
- [ ] README 说明当前 release tag，以及官方文档确认和本机 CLI help 确认的命令边界。
- [ ] VERSION、CHANGELOG 和插件内容都已包含在待发布提交中。

## Skills and Evals

- [ ] 两个 Skill 的 frontmatter 有效，描述能区分评审与校准。
- [ ] 所有 references、scripts 和 knowledge 相对路径可解析。
- [ ] Activation Eval、Prompt Injection Eval 和核心 Regression 案例均已检查。
- [ ] Good proposal、强机制设计与跨范式案例未出现无依据 S/A 误报。
- [ ] 合规阻断不计为学术 S；S 级均通过严重度反事实追问。
- [ ] 校准变化及 Regression 结果已记录在 evals/calibration-log.md。

## Privacy and install

- [ ] 隐私扫描通过；没有真实申请书、身份信息、原始课件、私人专家意见或临时提取物。
- [ ] 从准确 tag/ref 建立隔离 CODEX_HOME 完成 Marketplace snapshot 与 plugin install。
- [ ] 安装缓存内的 Plugin 文件和 Skills 路径来自同一 tag/ref。
- [ ] README 命令已按官方 Plugin 文档和目标 Codex CLI help 标明证据范围。
- [ ] 如无法完成真实模型调用，明确记录限制，不声称 Skill 行为测试通过。
