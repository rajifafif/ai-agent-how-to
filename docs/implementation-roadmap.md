# Implementation Roadmap

Status: Active roadmap

This roadmap helps a team adopt the toolkit incrementally. It does not assume a specific
company structure, CI system, framework, or release calendar.

## Adoption Principles

- Start with the smallest useful workflow that can be piloted in one repository.
- Keep organization-specific values configurable: owners, SLA targets, KPI targets,
  escalation contacts, approval roles, and tool stack.
- Do not copy every document into every project unless the team will use it.
- Treat English files as the primary source of truth unless a specific translated file
  says it is maintained in sync.
- AI agents must inspect the target repository and discover real commands before writing
  project-specific instructions.

## Q3 Dev-QA Output Checklist

Use `docs/roadmap/devqa-q3-output-checklist.md` to see which Q3 action-item outputs
already exist, which references to use, and which outputs are still missing.

## Phase 1 — Minimum Foundation

| Field | Content |
| --- | --- |
| Required outputs | Social Contract draft, PR checklist, bug-report template, `AGENTS.md`, verified setup/test commands, basic Dev-QA workflow. |
| Owner roles | Tech Lead, QA Lead, representative Developer, representative QA Engineer. |
| Prerequisites | One pilot repository, agreement on where project docs live, access to run safe local checks. |
| Acceptance criteria | Team can explain how work moves from refinement to QA handover; `AGENTS.md` contains real commands or `Needs confirmation`; PRs include evidence; bug reports are reproducible or clearly blocked. |
| Suggested pilot scope | One low-to-medium risk feature or bugfix in one repository. |
| Review checkpoint | After the first PR and QA handover, update templates for unclear fields. |

## Phase 2 — Quality and Security

| Field | Content |
| --- | --- |
| Required outputs | Verification standard, QA handover checklist, security checklist, release quality gate, environment readiness checklist. |
| Owner roles | Tech Lead, QA Lead, Security Reviewer, DevOps. |
| Prerequisites | Phase 1 artifacts used in at least one real change. |
| Acceptance criteria | High-risk changes require human approval; test evidence is recorded; environment/config changes are documented; release gate identifies blockers. |
| Suggested pilot scope | A feature with at least one API/config/security consideration. |
| Review checkpoint | Compare actual review comments with the checklist and remove duplicate/confusing items. |

## Phase 3 — Automation

| Field | Content |
| --- | --- |
| Required outputs | Automation testing standard, starter harness guidance, KPI baseline, CI reporting approach, flaky-test management rules. |
| Owner roles | QA Automation Lead, Developers owning testable modules, DevOps. |
| Prerequisites | Existing manual regression pain points or agreed automation candidates. |
| Acceptance criteria | Automation candidates are prioritized by risk/value; metrics have definitions, formulas, data sources, owners, limitations, and anti-gaming notes; flaky tests have an owner and quarantine policy. |
| Suggested pilot scope | One smoke or regression slice with stable data and clear business value. |
| Review checkpoint | Review whether automation reduced risk or feedback time, not just test count. |

## Phase 4 — Operational Maturity

| Field | Content |
| --- | --- |
| Required outputs | Incident response playbook, RCA guide, architecture improvement workflow, ADR process, recurring quality review. |
| Owner roles | Engineering Manager, Tech Lead, QA Lead, DevOps, Security Reviewer. |
| Prerequisites | Release workflow and ownership boundaries are understood. |
| Acceptance criteria | Incidents have timelines, impact, mitigation, validation, and follow-up owners; architecture proposals include evidence/options/trade-offs; recurring reviews use real quality signals. |
| Suggested pilot scope | One production bug or simulated incident review plus one architecture decision. |
| Review checkpoint | Confirm CAPA items are tracked to closure and do not use blame-oriented language. |

## Definition of Done for Adoption Phases

A phase is adopted only when:

1. Required artifacts exist in the pilot repository or are linked as external toolkit files.
2. People know which artifact is mandatory and which is a template.
3. At least one real or simulated workflow used the artifact.
4. Feedback from Developers and QA was captured.
5. Unknown organization-specific values are still marked configurable.
6. The next maintenance owner is named.

## Suggested Pilot Flow

1. Select one target repository and one feature or bugfix.
2. Install or generate `AGENTS.md` using the AI-agent-ready setup prompt.
3. Verify setup/test/lint/build commands that actually exist.
4. Use the Social Contract workshop checklist for a 45-60 minute team agreement session.
5. Run the change through planning, implementation, verification, PR, QA handover, and
   release gate.
6. Capture unclear template fields and update the toolkit before broader rollout.
