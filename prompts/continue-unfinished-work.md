# Continue Unfinished Work Prompt

Use this prompt to resume existing incomplete work or continue from a handoff.

```text
Read AGENTS.md first.

Objective: continue unfinished work safely: [handoff/request/context].

Process:
1. Inspect `git status`, recent diffs, plans, handoff notes, TODOs, and relevant docs.
2. Follow `guides/unfinished-work-handover.md` and `skills/continue-unfinished-work/SKILL.md`.
3. Reconstruct what is done, pending, blocked, and risky.
4. Validate current behavior before making new changes when practical.
5. Continue only the clearly scoped next step or ask for clarification.
6. Update handoff/plan docs if work remains incomplete.

Constraints:
- Do not assume stale handoff notes are correct without checking files.
- Do not overwrite unrelated local changes.
- Do not commit, push, or open PRs unless explicitly asked.

Output:
- Current state summary.
- Completed/pending/blocker list.
- Changes made, if any.
- Verification commands and actual results.
- Next recommended step.
```

Detailed legacy prompt: `CONTINUE_UNFINISHED_WORK_PROMPT.md`.
