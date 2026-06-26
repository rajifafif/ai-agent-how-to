# Commit Guide

Agents should not commit by default. A commit is a human-approved checkpoint.

## Safe Commit Lifecycle

1. Finish implementation.
2. Review the full diff.
3. Run verification.
4. Run security review when relevant.
5. Update documentation.
6. Prepare a completion report.
7. Obtain human approval.
8. Stage explicit files.
9. Create focused commits.
10. Review the commit.
11. Push only when authorized.

## Do Not Commit

Do not commit:

- secrets or real `.env` files
- local configuration
- debug logs
- temporary files
- database dumps
- build artifacts unless the project intentionally tracks them
- unrelated local changes
- dependency lockfile changes unrelated to the task
- generated files unless required and reviewed

## Unrelated Local Changes

If unrelated changes exist:

1. Identify them clearly.
2. Do not overwrite them.
3. Do not stage them.
4. Stop if commit boundaries are ambiguous.
5. Ask the human how to proceed.

## Commit Granularity

Good commits are focused and reviewable. Split by purpose, for example:

- feature code
- tests
- documentation
- mechanical refactor
- migration and model changes

Do not split so much that each commit cannot stand on its own.

## Commit Messages

Follow the project’s existing convention first. Conventional Commit examples are
optional:

- `feat(auth): add password reset rate limiting`
- `fix(invoice): preserve tax value during update`
- `docs(agent): add verification workflow`
- `test(user): cover duplicate email validation`
- `refactor(report): isolate query builder`

## Why Avoid Risky Git Commands

- `git add .` can stage secrets, build artifacts, or unrelated files.
- `--no-verify` bypasses project safety checks.
- Automatic amend rewrites the previous commit without human intent.
- Rebase, reset, and force-push can destroy or hide work.
- Push publishes changes beyond the local repository.

Agents must not amend, rebase, reset, force-push, or push unless separately authorized.
