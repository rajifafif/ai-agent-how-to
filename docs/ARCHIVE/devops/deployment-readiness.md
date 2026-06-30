# Deployment Readiness

Status: Detail reference

Deployment readiness means the team understands what will be deployed, how to validate it,
how to monitor it, and how to roll back or mitigate if it fails.

## Required Areas

- Release scope.
- Environment target.
- Configuration changes.
- Secret changes.
- Dependency changes.
- Database migrations.
- Seeds/backfills.
- External services.
- Queues/schedulers/workers.
- Storage changes.
- Health checks.
- Smoke checks.
- Observability and monitoring.
- Rollback or mitigation plan.
- Post-deployment validation owner.

## Deployment Readiness Decision

Use `../../templates/DEPLOYMENT_READINESS_CHECKLIST.template.md`.

A deployment should be blocked or escalated when:

- rollback/mitigation is unknown for high-risk changes;
- migration safety is unclear;
- required secrets/config values are missing;
- smoke checks are undefined;
- monitoring owner is missing;
- release approval is missing;
- security-sensitive change lacks approval.

## Acceptance Criteria

Deployment readiness is satisfied when:

- required checklist items are complete or explicitly accepted as exceptions;
- deployment and rollback owners are known;
- validation commands/checks are real or marked `Needs confirmation`;
- production secrets are not exposed;
- post-deployment smoke and monitoring are assigned.
