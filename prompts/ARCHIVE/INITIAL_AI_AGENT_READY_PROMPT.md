# Initial AI Agent Ready Prompt

Copy and paste this prompt from the target repository root.

```text
Please make this project AI Agent Ready.

First, locate the AI Agent Ready guide.

Preferred source paths, in order:
1. If `guide-templates/docs/ai-agent-guide.md` exists, read it completely and use `guide-templates/templates/AGENTS.template.md` as the source template if present. Also read `guide-templates/prompts/plan-feature.md` if present.
2. Otherwise, if `guides/opencode-adoption-guide.md` already exists, read it completely and follow it as the operating guide for this setup. Also read `prompts/plan-feature.md` if present.
3. Otherwise, ask the user whether they want to bootstrap from the `ai-agent-how-to` repository.

If no source guide is available because this is an empty, legacy, or not-yet-prepared project:
- Do not fail immediately.
- Continue using the instructions in this prompt as the minimum bootstrap checklist.
- Create `guides/opencode-adoption-guide.md` in this repository as part of the setup when appropriate.
- Mark unknown repository facts as “Needs confirmation”.

If `guide-templates/` exists:
- Treat it as temporary source material only.
- Use it to generate project-local files.
- Install the reusable prompt files into `prompts/` before deleting `guide-templates/`.
- Install the reusable template files into `templates/` before deleting `guide-templates/`.
- Create `docs/plans/` and `docs/handoffs/` when the project will use persistent plans or handoffs.
- Create or update `prompts/plan-feature.md` when the project will use phased plans for larger tasks.
- Do not leave final project instructions pointing to `guide-templates/`.
- Delete `guide-templates/` only after setup is complete, verified, and the required prompt/template files exist in their final locations, unless the user asks to keep it.

Before editing, inspect the real repository. Do not invent architecture, commands, tools, or workflows.

Tasks:
1. Inspect repository structure, tech stack, package manager, command runners, scripts, test commands, lint commands, typecheck commands, build commands, migration system, and local setup flow.
2. Create or update AGENTS.md with project-specific instructions for AI coding agents.
3. Add a workflow router to AGENTS.md so short natural-language requests map to the right workflow without requiring developers to paste long prompts.
4. Create or update docs/ai-workflows.md if the repository uses workflow-specific agent guidance.
5. Create or update `docs/plans/` and `docs/handoffs/` conventions for persistent task state.
6. Create or update `prompts/plan-feature.md` so larger tasks use a phased planning loop before implementation.
7. Install reusable prompts into `prompts/` and reusable templates into `templates/` when using a temporary bootstrap folder.
8. Document current architecture, important folders, boundaries, and where business logic belongs.
9. Document testing and verification commands that actually exist. If a command is only a recommendation, label it as an example or recommendation.
10. Review README.md setup instructions and propose or make practical improvements if they are incomplete.
11. Review `.env.example` safely. Do not expose secrets. Document required variables without copying real secret values.
12. Check package scripts, Makefile, Composer scripts, Go commands, shell scripts, or equivalent command runners.
13. If information cannot be known from the repository, write “Needs confirmation”.
14. Do not use destructive commands.
15. Do not modify unrelated files.
16. Do not commit automatically.

Before editing:
- Show a concise plan.
- List files you expect to create or update.
- Ask questions if a decision would change the implementation significantly.

After editing:
- Show changed files.
- Show exact commands verified and their results.
- List commands that could not be run and why.
- List remaining “Needs confirmation” items.
- Confirm that no commit was created.
```
