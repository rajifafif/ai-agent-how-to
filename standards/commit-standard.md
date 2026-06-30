# Commit Standard

Developers should be able to ask: `Create commits for the completed work`.

## Format

```text
<type>(<scope>): <summary>
```

Types: `feat`, `fix`, `docs`, `test`, `refactor`, `perf`, `build`, `ci`, `chore`, `security`.

## AI Commit Rules

- Read `AGENTS.md` first.
- Inspect diff and status.
- Identify unrelated changes.
- Exclude secrets/debug/generated files unless intentional.
- Group changes logically.
- Run or report validation status.
- Propose commit plan.
- Commit only after explicit authorization.
- Commit permission does not imply push permission.
