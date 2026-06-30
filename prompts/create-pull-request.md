# Create Pull Request Prompt

Use this prompt only when the human explicitly asks to prepare or create a pull request.

```text
Read AGENTS.md first.

Objective: prepare or create a pull request for the current branch.

Process:
1. Inspect `git status`, branch, commits, and diff against the target branch.
2. Follow `standards/pull-request-standard.md`, `checklists/pull-request-checklist.md`, and `skills/create-pull-request/SKILL.md`.
3. Collect actual verification evidence; state `Not run` with reason for missing checks.
4. Identify API, config, migration, security, performance, rollback, and QA handover notes.
5. Draft PR title/body from the repository evidence.
6. Create the PR only if explicitly requested and required CLI/auth is available.

Constraints:
- Do not push or create remote PR metadata unless explicitly asked.
- Do not invent issue links, reviewers, CI status, or test results.
- Mark unknown owner/release/rollback values as `Needs confirmation`.

Output:
- PR title/body or created PR URL.
- Verification evidence.
- Risks and human confirmations needed.
```

Detailed legacy prompt: `PREPARE_PULL_REQUEST_PROMPT.md`.
