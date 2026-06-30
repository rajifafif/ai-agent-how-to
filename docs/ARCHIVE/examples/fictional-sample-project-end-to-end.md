# Fictional Example: Sample Clinic Portal End-to-End Workflow

Status: Example

This example is fictional and non-sensitive. It demonstrates how the toolkit can be used
from repository setup through incident learning. Do not treat commands, names, URLs, or
owners as real project facts.

Project: `Sample Clinic Portal`
Stack: Example only — web frontend + backend API
Team: Example only — Developer, QA Engineer, Tech Lead, QA Lead, DevOps, Security Reviewer

## 1. Initial AI-Agent-Ready Setup

The team copies the toolkit into a temporary `guide-templates/` folder in the target
repository. The AI agent is instructed to inspect the repository first, discover real
commands, and generate project-local docs.

Example prompt:

```text
Read guide-templates/prompts/INITIAL_AI_AGENT_READY_PROMPT.md completely and execute it.
Inspect the real repository before documenting it. Do not invent commands. Mark unknowns
as Needs confirmation. Do not commit or push.
```

Example output artifacts:

- `AGENTS.md`
- `docs/architecture.md`
- `docs/testing.md`
- `docs/environment.md`
- `docs/ai-workflows.md`
- `prompts/`
- `templates/`

Validation:

```text
example only
scripts/validate-ai-agent-readiness.sh
```

## 2. Feature Planning

Feature: show upcoming appointments on patient dashboard.

The Developer starts with:

```text
Read AGENTS.md first. Plan this feature before implementation: show upcoming appointments
on patient dashboard.
```

The plan uses `templates/IMPLEMENTATION_PLAN.template.md` and identifies:

- API endpoint impact;
- UI dashboard impact;
- permission check requirement;
- test data needs;
- QA scenarios;
- security review because patient data is involved.

## 3. Implementation Plan Creation

The agent writes a phased plan:

| Phase | Purpose | Verification |
| --- | --- | --- |
| 1 | Inspect current dashboard/API patterns. | No code changes. Findings recorded. |
| 2 | Implement backend read endpoint using existing auth pattern. | API/unit tests. |
| 3 | Implement frontend dashboard card. | UI tests/manual browser check. |
| 4 | Update docs and QA handover. | Link and template checks. |

Human approval is required before the patient-data phase proceeds.

## 4. Developer Verification

Developer runs actual project commands discovered from the repository. Example only:

```text
example only — not real output
npm test -- appointment-dashboard
npm run lint
npm run build
```

If a command cannot run, the PR must say why, for example:

```text
Not run: integration test requires staging API credentials. Needs confirmation.
```

## 5. PR Preparation

The Developer uses:

```text
Read AGENTS.md first. Prepare Pull Request content for the current repository changes.
```

The PR includes:

- summary;
- purpose;
- affected modules;
- API contract notes;
- security impact because patient data is shown;
- actual verification evidence;
- QA handover section;
- rollback notes.

The AI agent inspects `git status` and the diff before drafting PR content.

## 6. QA Handover

Developer fills `templates/QA_HANDOVER_CHECKLIST.template.md`.

QA focus:

- patient sees only their own appointments;
- no cancelled appointments unless requirement says so;
- empty state is readable;
- loading and API error states work;
- responsive layout is acceptable;
- no sensitive data appears in logs.

QA uses:

```text
Read AGENTS.md first. Review this change for QA readiness.
```

## 7. Bug Reporting

QA finds that cancelled appointments still appear.

QA uses `templates/BUG_REPORT.template.md` and separates severity from priority:

- Severity: Medium, because the displayed data is wrong but not blocking login or care
  workflow in this fictional example.
- Priority: Needs confirmation, because business ordering belongs to Product/Lead.

Evidence includes screenshot and sanitized API response.

## 8. Security Review

Because patient data and authorization are involved, Security Reviewer uses:

```text
Read AGENTS.md first. Perform an adversarial security review of the current diff. Do not
modify code.
```

Review focus:

- server-side authorization;
- patient ownership filtering;
- no sensitive logging;
- API response shape;
- error handling;
- dependency changes, if any.

## 9. Release Quality Gate

QA Lead uses `templates/RELEASE_QUALITY_GATE.template.md`.

Gate checks:

- PR approved;
- Developer verification evidence exists;
- QA validation passed;
- security review completed;
- no Critical/High defects open;
- smoke plan defined;
- rollback owner known.

## 10. Incident Report

After release, users report the dashboard is intermittently unavailable.

The team classifies it as a service incident if availability is affected. They use:

- `templates/PRODUCTION_INCIDENT_REPORT.template.md`
- `prompts/INCIDENT_TRIAGE_PROMPT.md`

Triage separates:

- known facts;
- unknowns;
- impact;
- mitigation;
- owner;
- next update time.

## 11. Root Cause Analysis

After recovery, the team uses:

- `docs/incidents/root-cause-analysis-guide.md`
- `templates/ROOT_CAUSE_ANALYSIS.template.md`
- `templates/CORRECTIVE_PREVENTIVE_ACTION.template.md`

The RCA separates:

- trigger: appointment API timeout after deployment;
- root cause: missing query index in the fictional sample database;
- contributing factor: no performance test for appointment list;
- detection gap: dashboard latency alert missing;
- response gap: rollback owner unclear.

CAPA examples:

- add database index migration review checklist;
- add latency dashboard alert;
- add API performance smoke test;
- define rollback owner in release gate.

## 12. Handoff for Unfinished Work

If the fix cannot be completed in one session, the agent writes a handoff using
`templates/HANDOFF.template.md`:

- current status;
- files changed;
- commands run;
- blockers;
- next exact step;
- risks;
- no commit/push unless explicitly authorized.

## End-to-End Acceptance

This fictional pilot demonstrates the toolkit when:

- `AGENTS.md` routes short prompts;
- PR content is based on real diff/evidence;
- QA has a usable handover;
- bug reports are reproducible;
- security review is separate from normal verification;
- release gate records risk decisions;
- incidents become RCA/CAPA follow-up;
- unfinished work survives outside chat.
