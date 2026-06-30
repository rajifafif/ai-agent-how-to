# Root Cause Analysis Guide

RCA explains what happened, why it happened, why it was not prevented or detected sooner,
and what will change. It is blameless and evidence-based.

## Terms

| Term | Meaning |
| --- | --- |
| Root cause | Underlying condition that allowed the incident/bug to occur. |
| Trigger | Immediate event that exposed the problem. |
| Contributing factor | Condition that increased likelihood or impact. |
| Detection gap | Why the issue was not detected earlier. |
| Response gap | Why response, mitigation, communication, or recovery was slower/harder than desired. |
| Corrective action | Fixes the immediate problem. |
| Preventive action | Reduces chance or impact of recurrence. |

## RCA Process

1. Confirm scope and timeline.
2. Gather evidence before conclusions.
3. Identify impact and affected users/systems.
4. Separate trigger from root cause.
5. Identify contributing factors.
6. Identify detection gaps.
7. Identify response gaps.
8. Define corrective actions.
9. Define preventive actions.
10. Assign owners and due dates.
11. Review completion of follow-up work.

## Blameless Language

Use:

- "The deployment process allowed..."
- "Monitoring did not detect..."
- "The runbook lacked..."

Avoid:

- "Developer forgot..."
- "QA missed..."
- "Ops failed..."

Focus on systems, process, tooling, assumptions, and decision points.

## RCA Acceptance Criteria

An RCA is complete when:

- timeline is factual;
- impact is clear;
- evidence is linked or summarized;
- root cause, trigger, contributing factors, detection gap, and response gap are separated;
- CAPA items have owners and due dates;
- follow-up review cadence is defined;
- sensitive data is redacted.
