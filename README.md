# AI Agent How-To

Guide and templates for making team projects AI Agent Ready.

## Files

- `docs/ai-agent-guide.md` — main team guide with checklist, workflows, and prompts.
- `templates/AGENTS.template.md` — copy this to a project's root as `AGENTS.md`, then fill project-specific details.

## Recommended Usage

1. Copy `templates/AGENTS.template.md` into target project root as `AGENTS.md`.
2. Ask the AI agent to inspect the project and fill it in.
3. Add project-specific docs under `docs/`.
4. Require team members to start AI sessions with: `Read AGENTS.md first.`

## First Prompt

```text
Please make this project AI Agent Ready.
Read the repository, create/update AGENTS.md, document setup/test/lint/typecheck/build commands, and summarize project architecture.
Do not commit.
Show plan before editing.
```
