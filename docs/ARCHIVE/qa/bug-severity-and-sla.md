# Bug Severity and SLA

Status: Detail reference

This guide defines a reusable severity model and a customizable SLA matrix. It does not
set fictional organization-specific targets.

## Severity Model

| Severity | Meaning | Example indicators |
| --- | --- | --- |
| Critical | System unavailable, data loss/corruption, security breach, payment-blocking issue, or no viable workaround for a core business flow. | Production outage, unauthorized access, irreversible deletion, checkout impossible. |
| High | Major functionality broken for many users or important workflow blocked with limited workaround. | Cannot submit key form, API failure for important integration, severe regression. |
| Medium | Functionality degraded or broken with workaround; limited user/business impact. | Incorrect non-critical UI state, intermittent failure with retry workaround. |
| Low | Minor defect, cosmetic issue, documentation mismatch, or low-impact edge case. | Typo, layout issue, unclear message. |

## Priority Model

Priority is the business scheduling decision.

| Priority | Meaning |
| --- | --- |
| P0 | Must be handled immediately. |
| P1 | Should be handled in the current release/sprint or nearest safe window. |
| P2 | Planned backlog item. |
| P3 | Low urgency or opportunistic cleanup. |

## Customizable SLA Matrix

Replace placeholders with approved organization values.

| Severity | Initial response target | Triage target | Resolution / mitigation target | Escalation owner | Notes |
| --- | --- | --- | --- | --- | --- |
| Critical | Needs confirmation | Needs confirmation | Needs confirmation | Needs confirmation | Example only: require immediate incident triage. |
| High | Needs confirmation | Needs confirmation | Needs confirmation | Needs confirmation | Example only: review in next working window. |
| Medium | Needs confirmation | Needs confirmation | Needs confirmation | Needs confirmation | Example only: plan by priority. |
| Low | Needs confirmation | Needs confirmation | Needs confirmation | Needs confirmation | Example only: batch with routine work. |

## SLA Rules

- SLA targets must be approved by team leadership or the responsible organization.
- Severity can change when new evidence changes impact.
- Priority can change when business context changes.
- Security incidents must follow the security incident process, not only the product bug SLA.
- Production incidents must follow the incident playbook when available.
