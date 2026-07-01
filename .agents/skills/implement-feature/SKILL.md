---
name: implement-feature
description: Implement an approved feature plan safely.
---

# implement-feature

## Use When

- User says `implement this feature`, `build this`, or `apply the approved plan`.

## Required First Step

Read project `AGENTS.md` first. If it is missing, report that the repository is not yet AI-ready and use `standards/ai-ready-repository-standard.md` as fallback guidance.

## Workflow

1. Read `AGENTS.md` and the approved plan if present.
2. Inspect current branch state.
3. Implement smallest scoped changes following existing patterns.
4. Add or update relevant tests.
5. Run safe verification commands from project docs.
6. Update affected documentation.
7. Summarize changes, tests, risks, and follow-up.

## Expected Output

- Files changed.
- Tests run with results.
- Tests not run with reasons.
- Security/docs impacts.
- Remaining work.

## Human Confirmation Required

- Before broad refactors, dependency additions, migrations, auth/payment/sensitive-data changes, or commits.

## Pitfalls

- Do not invent project commands.
- Do not claim tests passed unless actually run.
- Do not expose secrets or personal data.
- Mark unknowns as `Needs confirmation`.
