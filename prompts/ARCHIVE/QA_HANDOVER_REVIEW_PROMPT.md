# QA Handover Review Prompt

```text
Read AGENTS.md first.

Review this change for QA readiness.

Objective:
Determine whether QA has enough scope, evidence, environment, and risk information to
validate the change.

Inputs:
- PR/diff/change description: [LINK OR TEXT]
- QA handover if present: [PATH OR TEXT]
- Environment/build: [VALUE OR NEEDS CONFIRMATION]

Process:
1. Read docs/dev-qa/quality-workflow.md if it exists.
2. Read templates/QA_HANDOVER_CHECKLIST.template.md if it exists.
3. Inspect the actual diff or PR content when available.
4. Check scope, affected areas, verification evidence, risk areas, test data, known
   limitations, and release notes.
5. Do not run destructive tests or modify code.
6. Do not invent test results.

Expected output:
- QA readiness verdict: READY / READY WITH GAPS / BLOCKED.
- Missing information.
- Suggested QA test focus.
- Regression areas.
- Risk/security/release concerns.
- Questions for Developer/Product/Lead.

Human confirmation required when:
- Environment/build is unknown.
- High-risk areas are changed.
- Critical/High defect risk is suspected.
- Release decision is needed.
```
