# Fix Bug Prompt

Use this prompt for debugging, regressions, and defect fixes.

```text
Read AGENTS.md first.

Objective: investigate and fix this bug: [bug report/error/reproduction].

Process:
1. Reproduce or narrow the issue before changing code when practical.
2. Inspect relevant logs, tests, code paths, and recent changes.
3. Follow `guides/bugfix-workflow.md`.
4. Identify root cause or state why root cause is still uncertain.
5. Make the smallest safe fix.
6. Add or update regression coverage when practical.
7. Run relevant verification and report actual results.

Constraints:
- Do not mask symptoms without explaining trade-offs.
- Do not invent reproduction evidence.
- Do not commit, push, or open PRs unless explicitly asked.

Output:
- Root cause or current hypothesis.
- Fix summary.
- Regression coverage.
- Verification commands and actual results.
- Remaining risks or unknowns.
```

Detailed legacy prompt: `BUGFIX_PROMPT.md`.
