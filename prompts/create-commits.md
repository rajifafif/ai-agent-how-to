# Create Commits Prompt

Use this prompt when the human says `make commits`, `commits`, `create commits`,
`commit this`, or otherwise explicitly asks to create commits.

```text
Read AGENTS.md first.

Objective: create focused logical commits for the current repository changes.

Source order:
1. Read AGENTS.md.
2. Read docs/ai-workflows.md if present.
3. Read .agents/skills/create-commits/SKILL.md if present.
4. Read standards/commit-standard.md if present.
5. Use repository evidence over generic conventions.

Intent rules:
- `make commits`, `commits`, `create commits`, `commit this` means commit-authorized mode.
- `prepare commit`, `commit plan`, or `commit rules` means prepare-only mode; do not commit.
- Commit permission does not imply push permission.
- Push requires explicit wording such as `push` or `push commits`.

Process:
1. Inspect `git status --short --branch`.
2. Inspect the complete tracked diff.
3. Inspect untracked files before staging them.
4. Identify unrelated, generated, sensitive, credential, binary, or risky files.
5. Stop and ask if unrelated changes or unclear commit boundaries are present.
6. Run or confirm relevant verification before committing.
7. Group changes into logical commits by purpose.
8. Generate commit titles and bodies from actual changed files and diff evidence.
9. Stage explicit files only. Never use `git add .` blindly.
10. Create focused commits.
11. Show final status.

Constraints:
- Do not push unless explicitly asked.
- Do not stage unrelated, secret, generated, or temporary files unless intentionally required.
- If validation fails, do not commit unless the user explicitly confirms committing with known failing checks.
- Do not claim checks passed unless they actually ran.

Output:
- Commit grouping rationale.
- Commands run and actual results.
- Commit hashes if created.
- Files excluded and why.
- Remaining uncommitted/untracked files.
- Reminder that nothing was pushed unless push was explicitly requested.
```
