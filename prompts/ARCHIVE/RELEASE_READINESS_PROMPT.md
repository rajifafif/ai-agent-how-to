# Release Readiness Prompt

```text
Read AGENTS.md first.

Review release readiness for the provided change set or release candidate.

Objective:
Assess whether the release has enough evidence, ownership, rollback, smoke testing, and
risk acceptance to proceed.

Inputs:
- Release scope: [PRs/issues/changes]
- Target environment/version: [VALUE OR NEEDS CONFIRMATION]
- QA results: [PATH OR SUMMARY]
- Known defects: [PATH OR SUMMARY]

Process:
1. Read docs/dev-qa/quality-workflow.md if it exists.
2. Read templates/RELEASE_QUALITY_GATE.template.md if it exists.
3. Review PR status, verification evidence, QA validation, regression status, security
   review needs, environment readiness, rollback plan, smoke plan, monitoring ownership,
   and open defects.
4. Separate release blockers from warnings.
5. Do not invent approvals, owners, or test results.

Expected output:
- Go / No-Go / Conditional Go / Blocked recommendation.
- Evidence summary.
- Open defects by severity and release decision needed.
- Missing approvals or owners.
- Smoke and monitoring checklist.
- Remaining human decisions.

Human confirmation required when:
- Critical/High defects remain open.
- Security review is required or incomplete.
- Rollback plan is missing.
- Release approval role is unknown.
```
