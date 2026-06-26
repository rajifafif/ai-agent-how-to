# Bugfix Prompt

Copy and paste this prompt from the target repository root.

```text
Read AGENTS.md first.
Use systematic debugging.

Bug symptoms:
[SYMPTOMS]

Reproduction steps:
[REPRODUCTION STEPS]

Expected result:
[EXPECTED RESULT]

Actual result:
[ACTUAL RESULT]

Logs, errors, screenshots, or evidence:
[LOGS OR EVIDENCE]

Rules:
1. Gather evidence or reproduce the issue before editing.
2. Inspect nearby code and relevant tests.
3. For non-trivial bugs, create or update a persistent investigation plan in `docs/plans/` using `templates/IMPLEMENTATION_PLAN.template.md` before editing.
4. Identify root cause before changing code.
5. Explain why the bug happens.
6. Make the minimal safe fix.
7. Keep the persistent plan updated as evidence, root cause, and fix status change.
8. Do not perform unrelated refactoring.
9. Add a regression test where practical.
10. Verify both the failing case and nearby behavior.
11. Update documentation if behavior, caveats, setup, or operational guidance changes.
12. If work is unfinished, create or update a handoff in `docs/handoffs/` using `templates/HANDOFF.template.md`.
13. Do not commit unless I explicitly ask you to commit.

Final response must include:
- Root cause
- Fix made
- Files changed
- Investigation plan path and status, if used
- Handoff path, if work is unfinished
- Regression test status
- Exact verification commands and results
- Nearby behavior checked
- Documentation updates, if any
- Remaining risks or unverified items
- Commit status
```
