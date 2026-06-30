---
name: plan-feature
description: Create an implementation plan before modifying code.
---

# plan-feature

## Use When

- User says `plan this feature`, `create implementation plan`, or asks to implement a non-trivial feature.

## Required First Step

Read project `AGENTS.md` first. If it is missing, report that the repository is not yet AI-ready and use `standards/ai-ready-repository-standard.md` as fallback guidance.

## Workflow

1. Read `AGENTS.md` and relevant project docs.
2. Inspect relevant code paths and existing patterns.
3. Identify objective, scope, affected modules, risks, security considerations, tests, docs, rollback/config impacts.
4. Ask or mark unknown acceptance criteria.
5. Save plan under `docs/plans/` when project convention allows.

## Expected Output

- Objective.
- Scope.
- Affected files/modules.
- Implementation steps.
- Test plan.
- Security notes.
- Open questions.

## Human Confirmation Required

- Before implementation if requirements, API contract, data model, or security boundaries are unclear.

## Pitfalls

- Do not invent project commands.
- Do not claim tests passed unless actually run.
- Do not expose secrets or personal data.
- Mark unknowns as `Needs confirmation`.
