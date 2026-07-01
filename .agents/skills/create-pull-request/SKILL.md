---
name: create-pull-request
description: Prepare or create a pull request from the current branch when the user says create PR, create pull request, prepare PR, or open PR.
---

# Create Pull Request

Use when the user says:
- create PR
- create pull request
- prepare PR
- open PR
- make PR
- pull request this branch

## Required Source Order

1. Read `AGENTS.md`.
2. Read PR/review guidance if present:
   - `.github/pull_request_template.md`
   - `.github/PULL_REQUEST_TEMPLATE.md`
   - `.github/PULL_REQUEST_TEMPLATE/*`
   - `standards/pull-request-standard.md`
   - `checklists/pull-request-checklist.md`
   - `docs/ai-workflows.md`
   - `docs/project-context.md`
   - `docs/testing.md`
   - `docs/security-review.md`
3. If `.agents/skills/create-pull-request/SKILL.md` exists, use it as the repository-local PR workflow.
4. Use repository evidence and the actual PR template over generic conventions.

## Intent Semantics

- `prepare PR`, `draft PR body`, `PR description` = prepare-only mode; do not push or create the PR.
- `create PR`, `create pull request`, `open PR`, `make PR` = PR-authorized mode, but only after required branch/remote/auth checks.
- PR creation does not imply merge permission.
- Pushing a branch is allowed only when needed to create the requested PR and after confirming the target remote/branch when ambiguous.

## Workflow

1. Inspect `git status --short --branch`.
2. Ensure there are no unintended uncommitted changes. If changes remain, ask whether to commit, exclude, or prepare a draft only.
3. Inspect current branch, upstream, remotes, and likely base branch.
4. Inspect commits and diff against the base branch.
5. Read PR template and required checklist sections.
6. Collect verification evidence from actual checks, recent command output, or run relevant safe checks when practical.
7. Identify scope, affected modules, API/config/migration changes, security impact, performance risk, rollback notes, release notes, and QA handover.
8. Draft PR title and body from repository evidence.
9. If user requested PR creation, verify CLI/auth availability (`gh auth status` when using GitHub) and remote branch state.
10. Push only the current branch when required for PR creation and when safe/confirmed.
11. Create the PR with the drafted title/body.
12. Show final PR URL and status.

## PR Body Requirements

Use the repository PR template when present. Otherwise include:

```markdown
## Summary
- ...

## Changes
- ...

## Verification
- [command] -> [actual result]
- Not run: [reason]

## Risk / Impact
- API: ...
- Data/migration: ...
- Auth/security: ...
- Rollback: ...

## QA Notes
- ...

## Needs confirmation
- ...
```

## Validation Guidance

Before preparing or creating a PR:
- Prefer checks documented in `AGENTS.md`, `docs/testing.md`, package scripts, Makefiles, or CI docs.
- For docs-only branches, run docs/link validation when available.
- For code branches, run focused tests/lints when practical.
- If checks are missing, expensive, or blocked, report `Not run` with reason.
- Do not claim CI status unless checked from the actual provider or `gh pr checks` after PR creation.

## Expected Output

Prepare-only mode:
- PR title.
- PR body.
- Target base branch assumption.
- Verification evidence.
- Risks and `Needs confirmation` items.
- Statement that no PR was created.

PR-created mode:
- PR URL.
- PR title/body summary.
- Base/head branches.
- Verification evidence.
- Risks and `Needs confirmation` items.
- Anything not pushed/created.

## Human Confirmation Required

Ask before:
- pushing a branch when remote/branch/ownership is unclear;
- creating PR against an unclear base branch;
- adding reviewers, labels, milestones, assignees, projects, or auto-merge;
- including failing checks as acceptable;
- opening a PR with unresolved blocking `Needs confirmation` items.

## Pitfalls

- Do not merge PRs unless explicitly requested.
- Do not invent issue links, reviewers, CI status, test results, or release notes.
- Do not expose secrets, credentials, tokens, patient data, production data, or unnecessary PII.
- Do not create a PR from a dirty working tree unless the user explicitly wants a draft from current commits only and understands unstaged changes are excluded.
- Do not push unrelated branches or tags.
