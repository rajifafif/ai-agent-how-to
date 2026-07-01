---
name: create-commits
description: Automatically create focused logical commits from current repository changes when the user says make commits, commits, create commits, or commit this.
---

# Create Commits

Use when the user says:
- make commits
- commits
- create commits
- commit this
- commit current changes

Do not use for `prepare commit` or `commit rules`; those are prepare-only unless the user also explicitly asks to commit.

## Required Source Order

1. Read `AGENTS.md`.
2. Read project commit guidance if present:
   - `standards/commit-standard.md`
   - `docs/ai-workflows.md`
   - `docs/project-context.md`
   - `docs/testing.md`
3. If `.agents/skills/create-commits/SKILL.md` exists, use it as the repository-local commit workflow.
4. Use repository evidence over generic conventions.

## Intent Semantics

- `make commits`, `commits`, `create commits`, `commit this` = commit-authorized mode.
- `prepare commit`, `commit plan`, `commit rules` = prepare-only mode; do not commit.
- Commit permission does not imply push permission.
- Push requires explicit wording such as `push` or `push commits`.

## Workflow

1. Inspect `git status --short --branch`.
2. Inspect the complete diff for tracked changes.
3. Inspect untracked files before staging them.
4. Identify unrelated, generated, temporary, sensitive, credential, binary, or risky files.
5. Stop and ask if commit boundaries are ambiguous or unrelated local changes would be mixed.
6. Run relevant lightweight validation before committing when available.
7. Group changes into logical commits by purpose, not by file type only.
8. Generate commit title and body from actual changed files and diff evidence.
9. Stage explicit files only. Never use `git add .` blindly.
10. Create focused commits.
11. Show final status and commit hashes.

## Commit Message Rules

Prefer the repository convention when present. Otherwise use concise conventional-style messages:

```text
<type>: <short imperative summary>

- Explain the main changed behavior/docs/workflow.
- Mention important validation or safety context when useful.
```

Common types:
- `feat`
- `fix`
- `docs`
- `test`
- `refactor`
- `chore`
- `ci`
- `build`

The title must come from the diff, not from guesses. The body should explain why the grouping exists when the change is not obvious.

## Validation Guidance

Before committing:
- Run project-specific fast checks if documented.
- For docs-only changes, run link/docs validation when available.
- For code changes, run focused tests/lints when available.
- If validation cannot run, report why.
- If validation fails, do not commit unless the user explicitly confirms committing with known failing checks.

## Expected Output

- Commit grouping rationale.
- Validation commands and actual results.
- Created commit hashes.
- Files excluded and why.
- Remaining uncommitted/untracked files.
- Reminder that nothing was pushed unless push was explicitly requested.

## Human Confirmation Required

Ask before committing when:
- unrelated changes are present;
- generated/build artifacts appear necessary;
- secrets, credentials, private keys, or production data are detected;
- validation fails;
- destructive or high-risk files are involved;
- commit boundaries are unclear.

## Pitfalls

- Do not push unless explicitly asked.
- Do not stage all files blindly.
- Do not commit secrets, credentials, tokens, private keys, production data, patient data, or unnecessary PII.
- Do not claim checks passed unless they actually ran.
- Do not invent commit contents; inspect the diff.
