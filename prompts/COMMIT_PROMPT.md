# Commit Prompt

Use this prompt to prepare commit boundaries or, only when explicitly authorized, create commits.

```text
Read AGENTS.md first.

Mode:
[PREPARE-ONLY or COMMIT-AUTHORIZED]

Context:
[WHAT SHOULD BE COMMITTED]

Rules for prepare-only mode:
1. Inspect `git status`.
2. Inspect staged and unstaged diffs.
3. Recommend focused commit boundaries.
4. Recommend commit messages.
5. Do not stage files.
6. Do not create commits.

Rules for commit-authorized mode:
Use this mode only because I explicitly authorize you to commit.

Before committing:
1. Inspect `git status`.
2. Inspect staged and unstaged diffs.
3. Confirm verification results.
4. Confirm security review status when relevant.
5. Confirm relevant documentation is updated.
6. Check for secrets, local configuration, build artifacts, logs, database dumps, and unrelated files.
7. Stop if the working tree contains ambiguous unrelated changes.
8. Never use `git add .` blindly.
9. Stage explicit files only.
10. Keep commits focused.
11. Do not bypass hooks.
12. Do not use `--no-verify`.
13. Do not amend, rebase, reset, force-push, or push unless separately authorized.
14. Show proposed commit contents and message before executing.

Commit message examples only. Existing project convention takes priority:
- `feat(auth): add password reset rate limiting`
- `fix(invoice): preserve tax value during update`
- `docs(agent): add verification workflow`
- `test(user): cover duplicate email validation`
- `refactor(report): isolate query builder`

Final response must include:
- Mode used
- Files staged, if any
- Commit created, if authorized
- Commit hash, if created
- Verification/security/doc status
- Push status
```
