---
name: qa-handover
description: Prepare QA handover for a branch or change.
---

# qa-handover

## Use When

- User says `prepare QA handover`, `review for QA readiness`, or similar.

## Required First Step

Read project `AGENTS.md` first. If it is missing, report that the repository is not yet AI-ready and use `standards/ai-ready-repository-standard.md` as fallback guidance.

## Workflow

1. Read `AGENTS.md`, PR content if available, and changed files.
2. Identify changed behavior, affected modules, acceptance criteria, test data, risks, regression areas, security/config impacts.
3. Use project handover template when available.
4. Separate verified evidence from assumptions.

## Expected Output

- QA handover checklist.
- Test focus areas.
- Evidence.
- Risks and limitations.
- Open questions.

## Human Confirmation Required

- Before declaring QA-ready if acceptance criteria, environment, test data, or verification evidence are missing.

## Pitfalls

- Do not invent project commands.
- Do not claim tests passed unless actually run.
- Do not expose secrets or personal data.
- Mark unknowns as `Needs confirmation`.
