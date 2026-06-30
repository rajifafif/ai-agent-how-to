# Create Automation Test Prompt

```text
Read AGENTS.md first.

Create or update automated tests for this requirement or risk area.

Objective:
Implement maintainable automated tests at the right layer using the repository's existing
stack and conventions.

Inputs:
- Requirement/risk: [DESCRIPTION]
- Acceptance criteria: [CRITERIA]
- Preferred test layer if known: [UNIT/API/UI/ETC OR NEEDS CONFIRMATION]

Process:
1. Inspect the repository before editing.
2. Read docs/qa/automation-testing-standard.md if it exists.
3. Read templates/AUTOMATION_TEST_PLAN.template.md if it exists.
4. Detect existing test frameworks, commands, directory structure, fixtures, and CI rules.
5. Propose the test layer and files before editing when scope is non-trivial.
6. Implement tests using existing conventions.
7. Run the smallest relevant test command first, then broader checks when practical.
8. Record actual command results.
9. Do not invent commands, frameworks, or pass results.
10. Do not commit or push unless explicitly authorized.

Expected output:
- Files changed.
- Test layer rationale.
- Commands run and results.
- Coverage/risk addressed.
- Flaky-test or data concerns.
- Remaining human decisions.

Human confirmation required when:
- Framework choice is unclear.
- Test requires external services, credentials, production-like data, or destructive setup.
- High-risk behavior is being tested or changed.
```
