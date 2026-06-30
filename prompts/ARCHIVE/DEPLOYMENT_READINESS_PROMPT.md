# Deployment Readiness Prompt

```text
Read AGENTS.md first.

Assess deployment readiness for this change or release candidate.

Objective:
Check whether deployment can proceed with clear scope, validation, monitoring, and
rollback/mitigation.

Inputs:
- Change/release scope: [PRs/issues/commits]
- Target environment: [ENVIRONMENT]
- Deployment window/owner if known: [VALUE OR NEEDS CONFIRMATION]

Process:
1. Read docs/ARCHIVE/devops/deployment-readiness.md if it exists.
2. Read templates/DEPLOYMENT_READINESS_CHECKLIST.template.md if it exists.
3. Inspect changed files and release notes when available.
4. Check config, secrets, dependencies, migrations, seeds, services, queues, storage,
   health checks, smoke checks, observability, rollback, and approvals.
5. Do not invent owners, commands, approvals, or results.
6. Do not expose secrets.

Expected output:
- Ready / Ready with conditions / Blocked / Needs confirmation.
- Evidence checklist.
- Missing owners/approvals.
- Rollback/mitigation gaps.
- Smoke and monitoring plan gaps.

Human confirmation required when:
- Production deployment, migrations, secret changes, infrastructure changes, or high-risk
  release decisions are involved.
```
