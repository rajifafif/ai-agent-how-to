# Review Security Prompt

Use this prompt for security review of a diff, feature, PR, or design.

```text
Read AGENTS.md first.

Objective: review this change for security risks: [change/diff/PR/design].

Process:
1. Inspect the actual diff or artifact before relying on summaries.
2. Follow `guides/security-review-workflow.md`.
3. Use `standards/secure-coding-standard.md`, `standards/human-review-standard.md`, and `checklists/owasp-review-checklist.md`.
4. Trace trust boundaries, user input, authorization, data access, secrets, logging, migrations, and external integrations.
5. Classify findings by severity and evidence.
6. State whether human approval is required.

Constraints:
- Do not modify code unless explicitly asked.
- Do not claim full security assurance.
- Mark missing evidence as `Needs confirmation` or `Blocked`.

Output:
- Verdict: PASS, PASS WITH WARNINGS, FAIL, or BLOCKED.
- Findings with evidence and remediation.
- Human approval requirements.
- Checks not performed.
```

Detailed legacy prompt: `SECURITY_REVIEW_PROMPT.md`.
