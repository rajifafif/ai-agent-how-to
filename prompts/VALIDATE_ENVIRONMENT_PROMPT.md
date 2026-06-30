# Validate Environment Prompt

```text
Read AGENTS.md first.

Validate environment documentation and readiness for this repository.

Objective:
Identify missing or inconsistent environment setup information without exposing secrets.

Inputs:
- Target environment: [LOCAL/DEV/TEST/STAGING/PROD OR NEEDS CONFIRMATION]
- Existing environment docs/files: [PATHS OR NEEDS CONFIRMATION]

Process:
1. Inspect existing environment docs, `.env.example`, container files, package files, CI
   config, deployment docs, and scripts.
2. Read docs/devops/environment-standard.md if it exists.
3. Read templates/ENVIRONMENT_INVENTORY.template.md if it exists.
4. Identify required/optional variables, dependencies, migrations, seeds, services,
   queues, schedulers, storage, health checks, and observability.
5. Do not print real secrets or credentials.
6. Mark unknown values as Needs confirmation.
7. Do not modify production config.

Expected output:
- Environment readiness summary.
- Missing documentation.
- Risk/drift findings.
- Safe proposed updates.
- Human decisions required.

Human confirmation required when:
- Production configuration, secrets, migrations, or infrastructure changes are involved.
```
