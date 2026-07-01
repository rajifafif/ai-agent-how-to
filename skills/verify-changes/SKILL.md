---
name: verify-changes
description: Verify current repository changes before commits, pull requests, releases, or handoff.
---

# Verify Changes

Use when the user says:
- verify this
- check current changes
- review diff
- did this pass?
- pre-commit check

Also use before `create-commits`, `create-pull-request`, and `make-release` when changes are present.

## Required Source Order

1. Read `AGENTS.md`.
2. Read workflow and verification docs when present:
   - `docs/ai-workflows.md`
   - `docs/testing.md`
   - `docs/project-context.md`
   - `checklists/pre-commit-checklist.md`
3. Use repository evidence over generic conventions.
4. Do not invent commands. If commands are missing, report `Needs confirmation`.

## Workflow

1. Inspect `git status --short --branch`.
2. Inspect tracked and untracked changes relevant to the task.
3. Identify changed areas:
   - docs only;
   - source code;
   - tests;
   - build/dependency files;
   - migrations/data changes;
   - auth, permissions, tenant scope, PII, payments, health data, or other sensitive areas.
4. Select verification from repository docs and discovered package files.
5. Run the smallest relevant local checks first.
6. For docs-only changes, run local docs/link/template validation when available.
7. For code changes, run focused tests/lint/typecheck/build when available.
8. Review for accidental secrets, real credentials, private keys, production data, or unnecessary PII.
9. Report actual command output summary and final verdict.

## Verdicts

Use exactly one verdict:

- `PASS`: relevant checks ran and passed.
- `PASS WITH WARNINGS`: checks passed but there are limitations, skipped checks, or non-blocking risks.
- `FAIL`: a relevant check failed.
- `BLOCKED`: verification cannot proceed without missing commands, dependencies, credentials, environment, or human confirmation.

## Expected Output

```text
Verification verdict: PASS | PASS WITH WARNINGS | FAIL | BLOCKED

Scope checked:
- ...

Commands run:
- command: result

Checks not run:
- check: reason

Security/sensitive areas:
- ...

Notes / follow-up:
- ...
```

## Safety Rules

- Do not claim a check passed unless it actually ran successfully.
- Do not run destructive commands.
- Do not modify files unless verification requires updating generated local-only artifacts and the user approved it.
- Do not commit or push.
- Stop and ask when verification requires secrets, production access, destructive migrations, or ambiguous human approval.
