# Create Bug Report Prompt

```text
Read AGENTS.md first.

Create a bug report from the provided observation.

Objective:
Produce a reproducible, triage-ready bug report using the repository or team template.

Inputs:
- Observation: [WHAT HAPPENED]
- Environment/build/commit if known: [VALUE OR NEEDS CONFIRMATION]
- Evidence files/logs/screenshots if available: [PATHS OR LINKS]

Process:
1. Read docs/ARCHIVE/qa/bug-report-standard.md if it exists.
2. Read docs/ARCHIVE/qa/bug-severity-and-sla.md if it exists.
3. Read templates/BUG_REPORT.template.md if it exists.
4. Separate facts from assumptions.
5. Redact secrets, tokens, personal data, and restricted information.
6. Identify missing reproduction details as Needs confirmation.
7. Suggest severity based on impact, and priority only if business context is provided.

Expected output:
- Completed bug report draft.
- Missing information checklist.
- Suggested severity with rationale.
- Priority as Needs confirmation unless business ordering is provided.
- Evidence list.

Human confirmation required when:
- Severity is Critical or High.
- Priority/SLA target is needed.
- Data loss, security, payment, privacy, or production impact may be involved.
```
