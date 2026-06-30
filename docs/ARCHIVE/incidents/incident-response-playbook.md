# Incident Response Playbook

Status: Detail reference

This playbook covers urgent production bugs, service incidents, and security incidents.
It separates normal product bugs from incidents and uses blameless language.

## Classification

| Type | Meaning | Workflow |
| --- | --- | --- |
| Normal product bug | Defect without urgent production/service/security impact. | Bug report and normal triage. |
| Urgent production bug | Defect affecting production users or business flow with urgency. | Expedited triage, mitigation, validation, follow-up. |
| Service incident | Availability, reliability, data integrity, or operational impact. | Incident response and RCA. |
| Security incident | Suspected or confirmed confidentiality, integrity, authorization, credential, or abuse issue. | Security incident escalation and restricted comms. |

## Incident Lifecycle

1. Detection.
2. Initial triage.
3. Severity and impact assessment.
4. Evidence capture.
5. Containment.
6. Mitigation.
7. Communication.
8. Escalation.
9. Ownership assignment.
10. Timeline recording.
11. Recovery.
12. Validation.
13. Root cause analysis.
14. Contributing factors review.
15. Corrective action.
16. Preventive action.
17. Follow-up ownership and due dates.
18. Post-incident review.
19. Lessons learned.

## Severity Model

Use organization-specific severity names if already defined. If not, start with:

| Severity | Meaning |
| --- | --- |
| Critical | Major outage, data loss/corruption, security breach, payment-blocking issue, or severe business impact. |
| High | Significant user/business impact with limited workaround. |
| Medium | Degraded service or limited impact with workaround. |
| Low | Minor production issue or low-impact operational defect. |

Severity must be based on impact and evidence. Business priority and communication urgency
may be handled separately.

## Initial Triage Checklist

- What is happening?
- When did it start?
- Who/what is impacted?
- Is impact growing?
- Is data/security/payment involved?
- Is there a safe mitigation?
- Who is incident owner?
- Who must be informed?
- What evidence has been captured?
- What should not be changed until evidence is preserved?

## Communication Rules

- Be factual and concise.
- Do not blame individuals.
- State known facts, unknowns, impact, mitigation, owner, and next update time.
- Do not expose secrets, personal data, or restricted security details.
- For security incidents, follow restricted communication policy and approved contacts.

## Recovery and Validation

Recovery is not complete until:

- mitigation/fix is deployed or operational workaround is active;
- health/smoke checks pass;
- affected user/business flow is validated;
- monitoring confirms stability for the agreed window;
- rollback or additional mitigation remains available if needed;
- owner records recovery time and evidence.

## Templates and Prompts

- Incident report: `../../templates/PRODUCTION_INCIDENT_REPORT.template.md`
- RCA: `../../templates/ROOT_CAUSE_ANALYSIS.template.md`
- CAPA: `../../templates/CORRECTIVE_PREVENTIVE_ACTION.template.md`
- Triage prompt: `../../prompts/INCIDENT_TRIAGE_PROMPT.md`
- RCA prompt: `../../prompts/ROOT_CAUSE_ANALYSIS_PROMPT.md`
