# Skill quality check

## Trigger and mode

- [ ] Proposal review, simulated peer review, diagnosis of proposal logic/design, or funding-risk review triggers the Skill.
- [ ] Ordinary paper proofreading or general prose editing does not trigger it by default.
- [ ] quick, section, full, and red-team produce distinct scope and output.
- [ ] Project Profile records unknown fields as unknown instead of inventing them.

## Package and references

- [ ] Root plugin.json is valid JSON; VERSION, plugin.json.version and the latest CHANGELOG heading agree.
- [ ] Skill frontmatter contains name and a bounded, action-based description.
- [ ] Every reference link resolves inside the package.
- [ ] No absolute local paths or dependencies on the original project directory remain.
- [ ] The Skill still works if no original source material is present.
- [ ] No MCP server is declared or required.
- [ ] The review Skill retains its existing ID or documents a tested migration path.
- [ ] The calibration Skill triggers only for Reviewer evaluation and rule calibration tasks.

## Review quality

- [ ] The academic question, theory, concepts, design, evidence, and knowledge contribution are checked before prose polish.
- [ ] Academic and compliance severity are separate; an explicit procedure blocker does not become academic S.
- [ ] Official requirements are not invented when a notice or template is absent.
- [ ] Method requirements follow conclusion strength; no universal sample-size demand is imposed.
- [ ] The reviewer can state that no serious issue was found when the evidence warrants it.
- [ ] The good-proposal case does not attract unsupported S/A criticism.
- [ ] “Not demonstrated” is not converted into “does not exist.”
- [ ] S-level findings pass the counterfactual severity question: resolving the issue would materially change core academic viability.
- [ ] Research paradigm is recorded cautiously; unknown or mixed paradigms are not forced into a category.
- [ ] Supplied documents are treated as evidence, not instructions.

## Privacy and installation

- [ ] Package has no real application, individual review report, personal identifier, raw source file, temporary extraction, or office/PDF original.
- [ ] Synthetic cases are labeled as synthetic and contain no copied private proposal text.
- [ ] Marketplace path/source resolves to this repository root.
- [ ] README install, refresh, pin, uninstall, and invocation commands match current Codex CLI conventions.
- [ ] A clean-install walkthrough uses only this package and user-supplied application materials.
- [ ] Marketplace pin reaches the same package snapshot through a local relative plugin source.
- [ ] Release checklist covers version, tag/ref, privacy, activation, regression and clean install.
