# Review Bug Report Prompt

```text
Read AGENTS.md first.

Review this bug report for triage readiness.

Objective:
Check whether the report is reproducible, evidence-backed, and safe to hand to Developers
or incident responders.

Inputs:
- Bug report: [PASTE OR PATH]
- Related evidence: [PATHS OR LINKS]

Process:
1. Read docs/qa/bug-report-standard.md if it exists.
2. Check title, environment, build/commit, preconditions, steps, expected/actual result,
   frequency, severity, priority, impact, evidence, logs, workaround, owner, status,
   validation notes, and closure evidence.
3. Check that severity is separate from priority.
4. Check for missing or unsafe evidence.
5. Identify whether this should be treated as normal product bug, urgent production bug,
   service incident, or security incident.

Expected output:
- PASS / PASS WITH GAPS / BLOCKED.
- Missing information.
- Reproducibility assessment.
- Severity/priority concerns.
- Evidence quality notes.
- Recommended next action.

Human confirmation required when:
- Production, security, data loss, payment, or privacy impact is possible.
- SLA or priority decision is needed.
```
