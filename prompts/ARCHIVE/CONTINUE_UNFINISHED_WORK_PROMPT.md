# Continue Unfinished Work Prompt

Copy and paste this prompt from the target repository root.

```text
Read AGENTS.md first.

Continue unfinished work from:
[PLAN OR HANDOFF FILE]

Current objective:
[CURRENT OBJECTIVE]

New constraints:
[NEW CONSTRAINTS]

Rules:
1. Read the referenced plan or handoff file completely.
2. Inspect current `git status` and complete diff.
3. Verify completed items against actual code.
4. Never trust plan status without checking the repository.
5. Identify:
   - completed work
   - partial work
   - pending work
   - blocked work
   - obsolete plan items
   - unverified assumptions
6. Show a revised execution plan before editing.
7. Continue from the first valid unfinished step.
8. Avoid repeating completed work.
9. Preserve previous decisions unless evidence requires changing them.
10. Update the plan or handoff file during the task.
11. Run relevant verification.
12. End with a refreshed handoff.
13. Do not commit unless I explicitly ask you to commit.

Final response must include:
- What was already complete
- What was continued
- Files changed
- Plan or handoff updates
- Exact verification commands and results
- Remaining work
- Next exact step
- Commit status
```
