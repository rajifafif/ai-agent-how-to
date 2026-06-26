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
3. Identify root cause before changing code.
4. Explain why the bug happens.
5. Make the minimal safe fix.
6. Do not perform unrelated refactoring.
7. Add a regression test where practical.
8. Verify both the failing case and nearby behavior.
9. Update documentation if behavior, caveats, setup, or operational guidance changes.
10. Do not commit unless I explicitly ask you to commit.

Final response must include:
- Root cause
- Fix made
- Files changed
- Regression test status
- Exact verification commands and results
- Nearby behavior checked
- Documentation updates, if any
- Remaining risks or unverified items
- Commit status
```
