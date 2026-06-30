# Incident Triage Prompt

```text
Read AGENTS.md first.

Triage this production issue or suspected incident.

Objective:
Classify the issue, capture evidence, identify impact, propose containment/mitigation,
and list human decisions required.

Inputs:
- Observation/alert/report: [DETAILS]
- Environment: [ENVIRONMENT OR NEEDS CONFIRMATION]
- Evidence/logs/metrics: [PATHS OR LINKS]

Process:
1. Read docs/incidents/incident-response-playbook.md if it exists.
2. Do not expose secrets or personal data.
3. Separate known facts from assumptions.
4. Classify as normal product bug, urgent production bug, service incident, or security
   incident.
5. Estimate severity from impact and evidence.
6. Identify immediate containment or mitigation options.
7. Identify owner, escalation, communication, validation, and monitoring gaps.
8. Do not make destructive changes unless explicitly authorized.
9. Do not commit or push unless explicitly authorized.

Expected output:
- Classification and severity with rationale.
- Known facts and unknowns.
- Impact summary.
- Evidence captured or needed.
- Immediate containment/mitigation options.
- Communication/escalation needs.
- Validation plan.
- Human decisions required.

Human confirmation required when:
- Production, security, data loss, payment, privacy, rollback, or public communication is involved.
```
