# Initialize Project Prompt

Use this prompt to prepare a new or existing repository for AI-assisted development.

```text
Read AGENTS.md first if it exists.

Objective: make this repository AI-ready without inventing project facts.

Process:
1. Inspect the repository structure, README, package/build files, scripts, tests, CI, and existing docs.
2. Determine whether this is a new project or legacy project.
3. Follow `guides/make-new-project-ai-ready.md` or `guides/make-legacy-project-ai-ready.md`.
4. Use `standards/ai-ready-repository-standard.md` and `templates/STARTER_PACK/README.md` as the source of truth.
5. Generate or update only the project-local files that are useful for this repository.
6. Mark unknown commands, owners, environments, SLAs, or approval roles as `Needs confirmation`.
7. Run available lightweight validation commands and report actual results.

Constraints:
- Do not copy the whole toolkit into the project.
- Do not overwrite existing useful docs without merging.
- Do not invent commands, architecture, owners, CI, or deployment details.
- Do not commit or push unless explicitly asked.

Output:
- Files created/updated.
- Unknowns needing confirmation.
- Validation commands run and actual results.
```

Detailed legacy prompt: `INITIAL_AI_AGENT_READY_PROMPT.md`.
