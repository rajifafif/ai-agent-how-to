# Review Security Prompt

Use this prompt for security review of a diff, feature, PR, current module, or design.

This prompt is portable. It must work in repositories that were initialized with
`prompts/bootstrap-existing-project.md`, where the target project may only have
`AGENTS.md`, `docs/`, and copied `.agents/skills/` instead of this toolkit's
`guides/`, `standards/`, and `checklists/` folders.

```text
Read AGENTS.md first.

Objective: review security risks for [change/diff/PR/current module/design].

Repository-aware source order:
1. Read AGENTS.md.
2. Read docs/security-review.md if it exists. Treat it as the target project's local security review guide.
3. Read project-specific context docs if they exist: docs/project-context.md, docs/testing.md, docs/repository-readiness-checklist.md, and relevant docs under docs/.
4. If .agents/skills/owasp-top-10/ exists, read .agents/skills/owasp-top-10/SKILL.md and relevant files under .agents/skills/owasp-top-10/references/.
5. If local toolkit files exist, use them as supporting references only after project-local docs:
   - guides/security-review-workflow.md
   - standards/secure-coding-standard.md
   - standards/human-review-standard.md
   - checklists/owasp-review-checklist.md
6. If a referenced file/folder is missing, do not block automatically. Continue with available project docs and mark the missing reference under Checks not performed.

Review target selection:
- For a PR/branch/diff: inspect the actual diff first, then inspect affected files and nearby call paths.
- For current uncommitted changes: inspect git status and git diff first.
- For a current module: inspect the module entrypoints, routes/controllers/handlers, models, services, jobs, configs, tests, and integration boundaries.
- For a design/spec: inspect the artifact and any referenced implementation files before relying on summaries.

Process:
1. Inspect the actual code, diff, module, or artifact before relying on summaries.
2. Identify trust boundaries, user input, authentication, authorization, tenant/org scoping, data access, secrets, logging, migrations, jobs, file handling, dependencies, and external integrations.
3. Review against docs/security-review.md and OWASP Top 10 2025 guidance from .agents/skills/owasp-top-10/ when available.
4. Map relevant risks to OWASP Top 10 2025 categories:
   - A01 Broken Access Control
   - A02 Security Misconfiguration
   - A03 Software Supply Chain Failures
   - A04 Cryptographic Failures
   - A05 Injection
   - A06 Insecure Design
   - A07 Authentication Failures
   - A08 Software or Data Integrity Failures
   - A09 Security Logging and Alerting Failures
   - A10 Mishandling of Exceptional Conditions
5. Include SSRF/outbound request risks under Injection, Insecure Design, and external request handling even if SSRF is not a separate 2025 top-level category.
6. Classify findings by severity and cite concrete evidence: file path, function/class, route, config, dependency, or diff hunk.
7. State whether human approval is required.

Constraints:
- Do not modify code unless explicitly asked.
- Do not claim full security assurance.
- Do not print secrets, tokens, credentials, private keys, production data, patient data, or unnecessary PII.
- Do not invent commands, architecture, approval roles, or policy requirements.
- Mark missing evidence as `Needs confirmation` or `Blocked`.

Output:
- Verdict: PASS, PASS WITH WARNINGS, FAIL, or BLOCKED.
- Scope reviewed: PR/diff/current changes/module/design, with paths reviewed.
- OWASP Top 10 2025 areas touched.
- Findings table: severity, OWASP area, evidence, risk, recommendation.
- Human approval requirements.
- Checks performed and actual results.
- Checks not performed / missing references.
- Needs confirmation.
```

Detailed legacy prompt: `SECURITY_REVIEW_PROMPT.md`.
