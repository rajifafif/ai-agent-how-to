# Environment Standard

Status: Detail reference

Environments do not need to be identical, but they should have consistent structure,
naming, dependency declaration, secret handling, validation, migration, rollback, health,
and observability expectations.

## Covered Environments

- local;
- development;
- testing;
- staging;
- production.

## Required Documentation

- `.env.example` with placeholders only.
- Required versus optional variables.
- Safe defaults.
- Secret-management expectations.
- Dependency versions and runtime requirements.
- Containers when relevant.
- Infrastructure configuration when relevant.
- Database setup.
- Migrations and seeds.
- External services.
- Queues, schedulers, and workers.
- Storage.
- Health checks.
- Observability expectations.
- Configuration drift detection.

## Environment Variable Rules

- Never document real credentials, tokens, addresses, or production secrets.
- Use placeholders such as `Needs confirmation` or `example.invalid`.
- Explain required vs optional variables.
- Explain which variables differ by environment and why.
- Keep `.env.example` safe to commit.

## Drift Control

Use `../../templates/ENVIRONMENT_INVENTORY.template.md` to record expected differences.
Review drift when:

- a release fails due configuration;
- a new environment is created;
- dependencies or infrastructure change;
- secrets or external services rotate;
- incidents reveal environment mismatch.

## Acceptance Criteria

Environment documentation is usable when:

- a new contributor can identify required variables without seeing secrets;
- setup/migration/seed commands are real or marked `Needs confirmation`;
- external dependencies are listed;
- health/smoke checks are documented;
- production-specific values are not exposed;
- owners for unresolved environment facts are identified.
