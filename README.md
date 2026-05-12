# AI Agent How-To

Guide and templates for making team projects AI Agent Ready.

This repository is meant to be copied into existing projects before the team starts using AI agents heavily.

## Files

English version:

- `docs/ai-agent-guide.md` — main team guide with checklist, workflows, safety rules, skill modes, and prompts.
- `templates/AGENTS.template.md` — copy this to a project's root as `AGENTS.md`, then ask the AI agent to fill it with project-specific details.

Indonesian version:

- `README.id.md`
- `docs/ai-agent-guide.id.md`
- `templates/AGENTS.template.id.md`

## First Step Checklist for Any Project

Use this checklist when preparing a new or existing project for AI-assisted development.

### 1. Copy the AI guide into the target project

From this repository:

```bash
cp docs/ai-agent-guide.md /path/to/target-project/docs/ai-agent-guide.md
```

If the target project does not have a `docs/` folder yet:

```bash
mkdir -p /path/to/target-project/docs
cp docs/ai-agent-guide.md /path/to/target-project/docs/ai-agent-guide.md
```

### 2. Copy the AGENTS.md template into the target project

```bash
cp templates/AGENTS.template.md /path/to/target-project/AGENTS.md
```

### 3. Open the target project with your AI agent

Start the AI agent from the target project root.

Example:

```bash
cd /path/to/target-project
hermes
```

Or use your preferred agent CLI/tool.

### 4. Ask the AI agent to read the guide and execute the setup

Use the first prompt below.

Important: the prompt tells the agent to read `docs/ai-agent-guide.md` first, then execute the AI Agent Ready setup based on that guide.

### How the AI agent will use these docs after setup

After this setup is complete, the generated docs become the agent's project context layer:

- `AGENTS.md` becomes the main operating rulebook. Future prompts should start with “Read AGENTS.md first.” The agent uses it to know project rules, commands, architecture boundaries, git rules, testing rules, and safety requirements.
- `docs/ai-agent-guide.md` becomes the team workflow guide. The agent uses it to understand expected behavior: plan before risky changes, avoid commits, run checks, summarize files changed, and use the right mode such as planning, debugging, TDD, review, or backend-first.
- `docs/architecture.md` helps the agent understand where code belongs before editing.
- `docs/testing.md` tells the agent which commands to run before saying the task is done.
- `docs/ai-workflows.md` tells the agent how to handle common tasks in this specific repo, such as features, bugfixes, refactors, reviews, and releases.

In normal daily work, team members should not need to repeat all project context manually. They can say:

```text
Read AGENTS.md first, then help me with [task].
```

The agent should then use the generated docs to plan, edit, verify, and report work consistently.

### 5. Review the generated docs manually

Check especially:

- `AGENTS.md`
- `docs/architecture.md`
- `docs/testing.md`
- `docs/ai-workflows.md`
- README setup section
- `.env.example`
- package scripts / Makefile commands

### 6. Run the review prompt

After first setup, run the review prompt below to audit the AI Agent Ready setup before sharing with team.

### 7. Commit only after human review

AI should not commit by default. Human reviews diff, then human commits.

## First Prompt: Make Project AI Agent Ready

Copy-paste this into the AI agent from the target project root.

```text
Please make this project AI Agent Ready.

First, read docs/ai-agent-guide.md completely and follow it as the operating guide for this setup.

Then execute the AI Agent Ready setup for this repository.

Tasks:
1. Inspect the repository structure, tech stack, package manager, test commands, lint commands, typecheck commands, migration system, and local setup flow.
2. Create or update AGENTS.md with clear project-specific instructions for AI coding agents.
3. Add or update docs/ai-workflows.md explaining how agents should work in this repo.
4. Add or update docs/architecture.md summarizing current architecture, important folders, and boundaries.
5. Add or update docs/testing.md with exact commands for install, dev, test, lint, typecheck, build, migration, and known caveats.
6. Check if README.md has enough local setup instructions. If missing, propose or add improvements.
7. Check .env.example exists and is safe. Do not expose secrets.
8. Check package scripts, Makefile, or equivalent command runners. Recommend missing scripts if needed.
9. Check frontend state management needs. If this is a React project, only recommend Redux Toolkit / RTK if global client state is actually needed. Do not install dependencies without explaining why.
10. Do not commit changes.
11. Before editing, show your plan.
12. After editing, show changed files and commands verified.

Important rules:
- Follow docs/ai-agent-guide.md.
- Follow existing project conventions.
- Do not invent architecture that does not exist.
- Base documentation on actual files.
- If uncertain, write “Needs confirmation”.
- Do not use destructive commands.
- Do not change unrelated files.
- Prefer minimal, safe changes.
```

## Review Prompt: Audit AI Agent Ready Setup

Run this after the first prompt is done.

```text
Review the AI Agent Ready setup.

First, read docs/ai-agent-guide.md and AGENTS.md.

Check:
1. Is AGENTS.md specific enough for this project?
2. Are setup/test/build/lint/typecheck/migration commands accurate?
3. Are dangerous or unclear instructions removed?
4. Are architecture docs based on actual code?
5. Are security rules included?
6. Are git rules included, especially “do not commit unless asked”?
7. Are auth, permissions, database, and tenant/org conventions documented where relevant?
8. Are frontend state management recommendations accurate and not blindly adding RTK?
9. Are missing scripts or tooling clearly marked as recommendations instead of fake existing commands?
10. Is this ready for other team members to use?

Give me:
- Missing items
- Risky instructions
- Incorrect assumptions
- Recommended edits
- Final readiness verdict

Do not commit.
```

## Recommended Team Workflow

For every task, team members should start with enough context and specify the agent mode.

### Feature prompt

```text
Read AGENTS.md first.
Use planning mode before editing.
Implement this feature: [describe feature].

Rules:
- Follow existing patterns.
- Keep changes small.
- Do not commit.
- Run relevant checks before final response.

Final response must include summary, files changed, commands run, and risks.
```

### Bugfix prompt

```text
Read AGENTS.md first.
Use systematic debugging.
Fix this bug: [describe bug].

Rules:
- Reproduce or inspect first.
- Identify root cause before changing code.
- Make minimal safe fix.
- Add regression test if possible.
- Do not commit.
```

### PR review prompt

```text
Read AGENTS.md first.
Review current changes like a senior engineer.

Check correctness, security, auth/permission, tenant/org scoping, migrations, performance, tests, and unrelated changes.
Do not commit.
Return prioritized findings.
```

## Minimum Project Readiness Checklist

A project is ready for AI-assisted development when it has:

- `AGENTS.md`
- `docs/ai-agent-guide.md`
- `docs/ai-workflows.md`
- `docs/architecture.md`
- `docs/testing.md`
- README local setup instructions
- `.env.example`
- documented install/dev/test/lint/typecheck/build commands
- documented migration command if backend/database project
- clear git safety rule: AI must not commit unless asked
- clear security rule: AI must not expose secrets
- human review required for auth, permission, data deletion, migrations, payments, and production config

## Notes on RTK / Redux Toolkit

Do not make RTK mandatory for every frontend project.

Recommend RTK when:

- global client state is needed
- auth/session/user state is shared across many screens
- complex UI state exists
- predictable state transitions are important

Do not recommend RTK only because the project uses React.

If the project already uses React Query, SWR, or Apollo for server state, avoid duplicating server state into Redux unless there is a clear reason.
