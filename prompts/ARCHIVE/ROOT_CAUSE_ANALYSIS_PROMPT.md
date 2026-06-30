# Root Cause Analysis Prompt

```text
Read AGENTS.md first.

Create or review a root cause analysis for this incident or serious bug.

Objective:
Produce a blameless, evidence-based RCA that separates root cause, trigger, contributing
factors, detection gap, and response gap.

Inputs:
- Incident report or bug report: [PATH OR TEXT]
- Timeline/evidence: [PATHS OR LINKS]
- Follow-up constraints: [CONSTRAINTS OR NEEDS CONFIRMATION]

Process:
1. Read docs/ARCHIVE/incidents/root-cause-analysis-guide.md if it exists.
2. Read templates/ROOT_CAUSE_ANALYSIS.template.md if it exists.
3. Read templates/CORRECTIVE_PREVENTIVE_ACTION.template.md if it exists.
4. Build a factual timeline before conclusions.
5. Separate root cause, trigger, contributing factors, detection gap, and response gap.
6. Use blameless language.
7. Define corrective and preventive actions with owners and due dates.
8. Mark unknown facts as Needs confirmation.
9. Do not invent evidence, owners, or due dates.

Expected output:
- RCA draft or review verdict.
- Timeline summary.
- Root cause/trigger/factor/detection/response separation.
- CAPA table.
- Missing evidence and human decisions.

Human confirmation required when:
- Root cause is uncertain.
- CAPA owners/due dates are not assigned.
- Security, legal, customer communication, or production risk decisions are involved.
```
