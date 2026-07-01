# Make a New Project AI-Ready

Use when starting a new repository.

## Use This Prompt

For most new projects, start by running the self-contained bootstrap prompt from the target project root:

```text
prompts/bootstrap-existing-project.md
```

Even though the prompt name says "existing project", it supports New Project Mode when the repository is nearly empty. Use it as the default bootstrap path so new and existing projects get the same AI-agent readiness standard.

## Steps

1. Open the target project root in the AI coding agent.
2. Paste and run `prompts/bootstrap-existing-project.md`.
3. Let the agent inspect stack and project structure before writing docs.
4. Create or update `AGENTS.md` and the minimum project docs.
5. Add PR and issue templates only when useful for the project.
6. Add `scripts/verify.sh` only if practical and backed by real commands.
7. Mark unknown values as `Needs confirmation`.
8. Run validation.

Expected output: a project where AI agents can read local instructions before acting and follow the same feature workflow standard used by existing projects.
