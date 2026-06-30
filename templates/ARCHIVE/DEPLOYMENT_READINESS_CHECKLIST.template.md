# Deployment Readiness Checklist

Release/change: Needs confirmation
Environment: Needs confirmation
Deployment owner: Needs confirmation
Rollback owner: Needs confirmation

## Scope and Approval

- [ ] Release scope is clear.
- [ ] Required approvals are complete or marked Needs confirmation.
- [ ] Security-sensitive approval completed when required.

## Configuration and Dependencies

- [ ] Config/env changes documented or N/A.
- [ ] Secret changes documented without exposing values or N/A.
- [ ] Dependency changes documented or N/A.
- [ ] Infrastructure changes documented or N/A.

## Data and Services

- [ ] Database migrations reviewed or N/A.
- [ ] Rollback/mitigation for migrations documented or N/A.
- [ ] Seeds/backfills documented or N/A.
- [ ] External services, queues, schedulers, storage impacts documented or N/A.

## Validation

- [ ] Health check defined.
- [ ] Smoke check defined.
- [ ] Monitoring/observability owner assigned.
- [ ] Rollback trigger defined.
- [ ] Post-deployment validation owner assigned.

## Decision

Decision: Ready / Ready with conditions / Blocked / Needs confirmation
Conditions/blockers:
-
