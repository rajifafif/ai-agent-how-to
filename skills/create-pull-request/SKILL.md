---
name: create-pull-request
description: Prepare or create a pull request from the current branch.
---

# create-pull-request

## Use When

- User says `create PR`, `create pull request`, `prepare PR`, or `create pull request from this branch`.

## Required First Step

Read project `AGENTS.md` first. If it is missing, report that the repository is not yet AI-ready and use `standards/ai-ready-repository-standard.md` as fallback guidance.

## Workflow

1. Read `AGENTS.md` and PR template.
2. Inspect current branch, base branch, commit history, and diff.
3. Identify scope, affected modules, tests, security considerations, migrations/config/API changes, risks, rollback, and QA handover.
4. Run safe validation if available or report not run.
5. Draft PR title/body.
6. Create PR only when repository access is available and user explicitly authorizes PR creation.

## Expected Output

- PR title.
- PR body.
- Tests run/not run.
- Security and risk notes.
- QA handover.
- PR URL if created.

## Human Confirmation Required

- Creating PR, pushing branch, or setting reviewers/labels requires explicit authorization when not already requested.

## Pitfalls

- Do not invent project commands.
- Do not claim tests passed unless actually run.
- Do not expose secrets or personal data.
- Mark unknowns as `Needs confirmation`.
