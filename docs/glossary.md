# Glossary

Use these terms consistently across guides, prompts, and templates.

| Term | Meaning |
| --- | --- |
| AI agent | A tool that can inspect repository files and propose or edit changes. It is not a trusted reviewer by default. |
| AI-assisted development | Development where an AI agent helps plan, implement, test, review, or document work while humans remain accountable. |
| Source of truth | The canonical file for a rule or workflow. Other files should link to it instead of duplicating it. |
| Template | A reusable starting point that teams copy and customize. Unknown values should remain placeholders or `Needs confirmation`. |
| Standard | A normative rule set the team agrees to follow. Standards should be small, actionable, and linked from navigation. |
| Guide | Explanatory instructions for adopting or applying a standard/template. |
| Prompt | Copy-pasteable instruction for an AI agent. Prompts should route to source-of-truth guides instead of repeating all rules. |
| Definition of Ready | Minimum conditions before implementation should start. |
| Definition of Done | Minimum evidence and acceptance criteria before work is considered complete. |
| QA handover | Developer-to-QA package containing scope, risk, environment, test evidence, known limitations, and validation notes. |
| Severity | Technical/user impact of a bug or incident. Separate from business priority. |
| Priority | Business ordering decision for when to address work. Separate from severity. |
| SLA | Customizable service-level expectation for response or resolution. This toolkit provides a template, not organization-specific targets. |
| Security-sensitive change | Change touching high-risk areas such as auth, permissions, payments, sensitive data, migrations, production config, cryptography, dependencies, or infrastructure. |
| Human approval boundary | A change category where an AI review is insufficient and a named human role must approve. |
| Automation coverage | Evidence that automated tests cover important requirements, risks, or code paths. Not the same as number of tests. |
| Flaky test | A test that can pass or fail without a relevant code change. |
| Quarantine | Temporary isolation of a flaky/broken test with an owner, reason, and repair deadline. |
| Incident | An event that affects service reliability, security, data integrity, or user/business operations beyond a normal product bug. |
| RCA | Root Cause Analysis. A blameless review that separates root cause, trigger, contributing factors, detection gap, and response gap. |
| CAPA | Corrective and Preventive Action. Follow-up work to fix immediate and systemic causes. |
| ADR | Architecture Decision Record. A concise record of a decision, context, options, trade-offs, and consequences. |
