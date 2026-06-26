# Verify Changes Prompt

Copy and paste this prompt from the target repository root after implementation.

```text
Read AGENTS.md and relevant testing documentation first.

Verify the current changes. Do not edit code unless I explicitly ask you to fix findings. Do not commit.

Steps:
1. Inspect `git status`.
2. Inspect the complete diff, including staged and unstaged changes.
3. Confirm changed files match the requested scope.
4. Detect and report:
   - unrelated edits
   - debug statements
   - temporary files
   - generated files
   - commented-out code
   - accidental formatting changes
   - hardcoded secrets
5. Run the most relevant available verification commands:
   - tests
   - focused tests
   - lint
   - typecheck
   - build
   - migration validation
   - targeted manual checks
6. Report the exact command and result for every command executed.
7. Never report a command as passed unless it was executed successfully.
8. Clearly list commands that could not be run and why.

Use this verdict format:
- PASS: scope is clean and relevant verification passed.
- PASS WITH WARNINGS: verification passed or mostly passed, but there are non-blocking concerns.
- FAIL: a relevant check failed or a blocking issue was found.
- BLOCKED: verification could not be completed because required environment, dependency, credentials, or information is unavailable.

Final response:
Verdict: PASS | PASS WITH WARNINGS | FAIL | BLOCKED

Scope review:
- ...

Diff findings:
- ...

Commands run:
- `command` — result

Commands not run:
- `command` — reason

Risks / notes:
- ...
```
