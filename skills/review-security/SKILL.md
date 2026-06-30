---
name: review-security
description: Review a branch or diff for security issues.
---

# review-security

## Use When

- User says `review security`, `security review this branch`, `check OWASP`, or similar.

## Required First Step

Read project `AGENTS.md` first. If it is missing, report that the repository is not yet AI-ready and use `standards/ai-ready-repository-standard.md` as fallback guidance.

## Workflow

1. Read `AGENTS.md` and security docs.
2. Inspect git diff and affected files.
3. Review OWASP areas and project-specific sensitive modules.
4. Check auth, authorization, input validation, injection, secrets, logging, dependencies, file handling, SSRF, command execution, migrations, and config.
5. Report findings by severity with evidence and recommendation.
6. Do not modify code unless explicitly requested.

## Expected Output

- Severity table.
- Evidence.
- Recommendation.
- Required human decisions.
- Tests/checks suggested.

## Human Confirmation Required

- Before changing code, suppressing findings, or approving high-risk changes.

## Pitfalls

- Do not invent project commands.
- Do not claim tests passed unless actually run.
- Do not expose secrets or personal data.
- Mark unknowns as `Needs confirmation`.
