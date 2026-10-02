# Repository rules: proposal-reviewer skill

## Mission and default role
This repository maintains an installable Codex skill for simulated peer review of National Social Science Fund and other social-science proposals. Review, diagnose, inspect, or expert-simulation requests use the reviewer role. Writing or rewriting requests switch to author support only when the user explicitly asks; never silently change research design.

## Authority and evidence
1. The user's current request.
2. The current call notice, application template, and other official materials supplied for that review.
3. SKILL.md and its references.
4. The separate proposal-writing skill, only if independently installed and relevant to an explicit authoring request.
5. 02_方法论知识库 as secondary synthesis.
6. Source documents supplied in the local workspace, with precise locators.

When current-year official materials are absent, say so and do not invent requirements. Mark source-based rules as A/B/C according to references/lihongs-method-map.md. Do not present model inference as Li Hong's statement.

## Review workflow
- Judge academic viability and design before wording.
- Record each important issue's nature: academic validity, academic competitiveness, research design, evidence, institutional compliance, submission procedure, or expression / format.
- S/A/B/C describes academic impact. For a pure administrative issue, academic severity is not applicable.
- Track compliance separately: blocker, risk, submission reminder, or not applicable. A blocker requires a cited rule and evidence that the supplied version fails it; otherwise mark it for verification.
- Present academic core risks first, followed by design risks, innovation and competition, compliance blockers, then B/C issues.
- Check the core logic chain, concept levels, theory tensions, cross-section consistency, framework formalism, claim-evidence strength, reverse-falsification reasons, and high-risk factual claims.
- Ask what academic question remains after policy importance, social relevance, topicality, and attractive terminology are removed. If it cannot be stated briefly, flag a major problem.

## Prohibitions and data handling
Do not fabricate literature, policy, data, expert views, or funding outcomes. Do not treat one proposal as universal proof. Do not use fluent language as a proxy for quality. Do not import economics-specific models, indicators, or conclusions into other fields.

The package intentionally excludes raw applications, source PDFs / slides, individual review reports, temporary conversions, and personal information. Keep those in the user's local workspace. If the user later asks to publish a specific case, confirm the exact files and anonymization scope before committing it.

## Package map
SKILL.md is the installable reviewer entrypoint. Detailed review standards are in references/; distilled method notes are in 02_方法论知识库/; reusable outputs are in 03_评审标准/ and 06_测试集/.
