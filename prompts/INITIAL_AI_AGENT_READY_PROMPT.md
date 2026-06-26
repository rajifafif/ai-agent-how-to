# Initial AI Agent Ready Prompt

Copy and paste this prompt from the target repository root.

```text
Please make this project AI Agent Ready.

First, read docs/ai-agent-guide.md completely and follow it as the operating guide for this setup.

Before editing, inspect the real repository. Do not invent architecture, commands, tools, or workflows.

Tasks:
1. Inspect repository structure, tech stack, package manager, command runners, scripts, test commands, lint commands, typecheck commands, build commands, migration system, and local setup flow.
2. Create or update AGENTS.md with project-specific instructions for AI coding agents.
3. Document current architecture, important folders, boundaries, and where business logic belongs.
4. Document testing and verification commands that actually exist. If a command is only a recommendation, label it as an example or recommendation.
5. Review README.md setup instructions and propose or make practical improvements if they are incomplete.
6. Review `.env.example` safely. Do not expose secrets. Document required variables without copying real secret values.
7. Check package scripts, Makefile, Composer scripts, Go commands, shell scripts, or equivalent command runners.
8. If information cannot be known from the repository, write “Needs confirmation”.
9. Do not use destructive commands.
10. Do not modify unrelated files.
11. Do not commit automatically.

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
