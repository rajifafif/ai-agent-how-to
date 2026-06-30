# Review Automation Test Prompt

```text
Read AGENTS.md first.

Review the current automated test changes.

Objective:
Check whether tests are meaningful, maintainable, deterministic, correctly layered, and
safe for CI.

Inputs:
- Current diff or PR: current diff unless provided.
- Requirement/risk being covered: [DESCRIPTION OR NEEDS CONFIRMATION]

Process:
1. Inspect the actual test diff.
2. Read standards/testing-standard.md if it exists.
3. Check assertions, setup, cleanup, test data, fixtures, mocking boundaries, naming,
   selectors, tags, reporting, CI integration, retries, and flaky risk.
4. Verify whether tests would fail for the intended regression.
5. Check that commands/results are real if verification evidence is present.
6. Do not modify code unless explicitly asked.

Expected output:
- Verdict: PASS / PASS WITH WARNINGS / FAIL / BLOCKED.
- Meaningful coverage assessment.
- Flaky-test risk assessment.
- CI/readiness notes.
- Required fixes or follow-up.

Human confirmation required when:
- Test layer or framework choice is disputed.
- CI resources or external services are needed.
- Risk acceptance is required for missing automation.
```
