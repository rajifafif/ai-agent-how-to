# Implement Feature Prompt

Use this prompt after scope is clear enough to start implementation.

```text
Read AGENTS.md first.

Objective: implement this feature safely: [feature/request].

Process:
1. Inspect the current repository state and relevant files before editing.
2. Confirm scope and constraints from the request, issue, or approved plan.
3. Follow `guides/feature-development-workflow.md` and `skills/implement-feature/SKILL.md`.
4. Make focused changes only for the approved scope and task list.
5. Update tests and docs when behavior, commands, APIs, or workflows change.
6. Update the plan/tasks at the end: mark completed work done, record blocked/follow-up items, and keep verification evidence.
7. Run the smallest relevant verification first, then broader checks when practical.
8. Run review/security prompts or checklists when the feature touches risky areas; high-risk features require both pre-implementation impact review and post-implementation diff review.
9. Review the diff for unrelated changes, secrets, debug output, and risky behavior.
10. Prepare commits, push, or create a PR only when explicitly asked.

Constraints:
- Do not claim tests passed unless actually run.
- Do not commit, push, or open PRs unless explicitly asked.
- Ask before destructive actions, production changes, migrations, or security-sensitive decisions.

Output:
- Summary of changes.
- Files changed.
- Verification commands and actual results.
- Risks, limitations, and follow-up items.
```

Detailed legacy prompt: `FEATURE_IMPLEMENTATION_PROMPT.md`.
