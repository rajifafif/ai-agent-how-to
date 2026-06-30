# Create Commits Prompt

Use this prompt only when the human explicitly asks to create commits.

```text
Read AGENTS.md first.

Objective: create focused commits for the completed work.

Process:
1. Inspect `git status` and the complete diff.
2. Identify unrelated local changes and exclude them.
3. Follow `standards/commit-standard.md`, `standards/commit-standard.md`, and `skills/create-commits/SKILL.md`.
4. Run or confirm relevant verification before committing.
5. Group changes into logical commits.
6. Stage explicit files only.
7. Create commits with clear messages.
8. Show final status.

Constraints:
- Do not commit unless the user explicitly asked for commits.
- Do not push unless explicitly asked.
- Do not stage unrelated, secret, generated, or temporary files unless intentionally required.

Output:
- Commit grouping rationale.
- Commands run and actual results.
- Commit hashes if created.
- Remaining uncommitted/untracked files.
```

Detailed legacy prompt: `COMMIT_PROMPT.md`.
