# Create Pull Request Prompt

Use this prompt when the human says `create PR`, `create pull request`, `prepare PR`,
`open PR`, `make PR`, or otherwise explicitly asks to prepare or create a pull request.

```text
Read AGENTS.md first.

Objective: prepare or create a pull request for the current branch.

Source order:
1. Read AGENTS.md.
2. Read .agents/skills/create-pull-request/SKILL.md if present.
3. Read the repository PR template if present.
4. Read standards/pull-request-standard.md and checklists/pull-request-checklist.md if present.
5. Read docs/testing.md and docs/security-review.md if present.
6. Use repository evidence over generic conventions.

Intent rules:
- `prepare PR`, `draft PR body`, or `PR description` means prepare-only mode; do not push or create the PR.
- `create PR`, `create pull request`, `open PR`, or `make PR` means PR-authorized mode after branch/remote/auth checks.
- PR creation does not imply merge permission.
- Adding reviewers, labels, assignees, projects, milestones, or auto-merge requires explicit authorization unless repository convention requires it.

Process:
1. Inspect `git status --short --branch`.
2. Inspect current branch, upstream, remotes, likely base branch, commits, and diff against base.
3. If uncommitted changes remain, ask whether to commit, exclude, or prepare a draft only.
4. Read the PR template and required checklist items.
5. Collect actual verification evidence; state `Not run` with reason for missing checks.
6. Identify scope, affected modules, API/config/migration changes, security impact, performance risk, rollback notes, release notes, and QA handover.
7. Draft PR title/body from repository evidence.
8. Create the PR only if explicitly requested and required CLI/auth/remote branch are available.
9. Show final PR URL if created.

Constraints:
- Do not merge PRs unless explicitly requested.
- Do not invent issue links, reviewers, CI status, test results, or release notes.
- Do not expose secrets, credentials, tokens, patient data, production data, or unnecessary PII.
- Mark unknown owner/release/rollback/base-branch values as `Needs confirmation`.

Output:
- PR title/body or created PR URL.
- Base/head branch.
- Verification evidence.
- Risks and human confirmations needed.
- Whether anything was pushed or created.
```
