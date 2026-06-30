# Dev-QA Social Contract Guide

Status: Detail reference

A Dev-QA Social Contract is a reusable agreement for how Developers, QA Engineers, Tech
Leads, and QA Leads collaborate. It is not a fictional final agreement. Use this guide to
facilitate a team workshop and produce a customized agreement from
`templates/DEV_QA_SOCIAL_CONTRACT.template.md`.

## Purpose

The contract reduces ambiguity around ownership, evidence, communication, AI-generated
changes, urgent work, and escalation. It should be short enough to use during real work.

## Inputs

- Team workflow and release cadence.
- Existing Definition of Ready and Definition of Done, if any.
- Current pain points from recent PRs, bugs, releases, and incidents.
- Compliance/security constraints, if any.
- Organization-specific response expectations and escalation paths.

## Facilitation Checklist

Use this as a 45-60 minute workshop agenda.

1. Confirm scope.
   - Product/team/repository covered: `Needs confirmation`.
   - Work types covered: feature, bugfix, hotfix, incident, refactor, documentation.
2. Identify shared outcomes.
   - Faster feedback, fewer escaped defects, clearer handover, safer AI use.
3. Define shared responsibilities.
   - What Developers own before QA.
   - What QA owns before release.
   - What Product/Lead roles must clarify.
4. Agree on Definition of Ready.
   - Requirement clarity.
   - Acceptance criteria.
   - Testability.
   - Risk and dependency visibility.
5. Agree on Definition of Done.
   - Implementation complete.
   - Developer verification evidence.
   - PR content complete.
   - QA handover ready.
   - Documentation/security/release checks done when relevant.
6. Define evidence requirements.
   - Commands run.
   - Manual checks.
   - Screenshots/recordings.
   - API examples.
   - Logs with sensitive data redacted.
7. Agree on communication rules.
   - Where questions are asked.
   - Response expectations.
   - Blocking issue escalation.
   - Respectful disagreement rules.
8. Define urgent-work rules.
   - What bypasses normal flow.
   - Minimum evidence still required.
   - Follow-up cleanup requirement.
9. Define AI-generated-change rules.
   - Human accountability.
   - Review and verification expectations.
   - High-risk human approval boundaries.
10. Set review cadence.
   - Renewal owner: `Needs confirmation`.
   - Review frequency: `Needs confirmation`.

## Adoption Steps

1. Copy `templates/DEV_QA_SOCIAL_CONTRACT.template.md` into the target repository or team
   workspace.
2. Fill only values the team has agreed on.
3. Leave unresolved organization-specific values as `Needs confirmation`.
4. Link the contract from the repository `AGENTS.md`, PR template, QA handover checklist,
   and release quality gate where applicable.
5. Review after one pilot PR and one QA handover.

## Acceptance Criteria

The Social Contract is adopted only when:

- It names owner roles, not just activities.
- It separates Developer verification from QA validation.
- It defines what blocks progression.
- It includes rules for urgent work and AI-generated changes.
- It contains configurable placeholders instead of fictional company policy.
- Developers and QA both reviewed it.
