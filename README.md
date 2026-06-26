# AI Agent How-To

Guide, prompts, and templates for making team projects AI Agent Ready and for running a safe AI-assisted development lifecycle.

This repository is meant to be copied into existing projects before the team starts using AI agents heavily. It is also a practical workshop kit for developers learning to use AI coding agents safely.

## Files

English version:

- `docs/ai-agent-guide.md` — main team guide with checklist, workflows, safety rules, skill modes, and starter prompts.
- `prompts/` — copy-paste prompts for common AI-assisted development tasks.
- `docs/development-lifecycle.md` — end-to-end lifecycle: Prepare → Plan → Implement → Verify → Security Review → Update Documentation → Commit → Handoff or Continue.
- `docs/verification-guide.md` — how to verify changes with real commands and evidence.
- `docs/security-review-guide.md` — when and how to run separate security review.
- `docs/documentation-guide.md` — when code changes require documentation updates.
- `docs/commit-guide.md` — safe commit lifecycle for AI-assisted work.
- `docs/unfinished-work-guide.md` — how to persist work outside chat.
- `templates/AGENTS.template.md` — copy this to a project's root as `AGENTS.md`, then ask the AI agent to fill it with project-specific details.
- `templates/IMPLEMENTATION_PLAN.template.md` — reusable implementation plan template.
- `templates/HANDOFF.template.md` — reusable handoff template.
- `templates/SECURITY_REVIEW.template.md` — reusable security review report template.
- `templates/COMPLETION_REPORT.template.md` — reusable final task report template.

Indonesian version:

- `README.id.md`
- `docs/ai-agent-guide.id.md`
- `templates/AGENTS.template.id.md`

The newer lifecycle guides, prompts, and templates are currently English-only. See `README.id.md` for the recommended translation strategy.

## Suggested Workshop Flow

1. Make a project AI Agent Ready.
   - Prompt: `prompts/INITIAL_AI_AGENT_READY_PROMPT.md`
   - Guide: `docs/ai-agent-guide.md`
   - Template: `templates/AGENTS.template.md`
2. Implement a small feature.
   - Prompt: `prompts/FEATURE_IMPLEMENTATION_PROMPT.md`
   - Template: `templates/IMPLEMENTATION_PLAN.template.md`
3. Verify the change.
   - Prompt: `prompts/VERIFY_CHANGES_PROMPT.md`
   - Guide: `docs/verification-guide.md`
4. Run a security review.
   - Prompt: `prompts/SECURITY_REVIEW_PROMPT.md`
   - Guide: `docs/security-review-guide.md`
   - Template: `templates/SECURITY_REVIEW.template.md`
5. Update documentation.
   - Prompt: `prompts/UPDATE_DOCUMENTATION_PROMPT.md`
   - Guide: `docs/documentation-guide.md`
6. Prepare a commit.
   - Prompt: `prompts/COMMIT_PROMPT.md`
   - Guide: `docs/commit-guide.md`
   - Template: `templates/COMPLETION_REPORT.template.md`
7. Save a handoff and continue in a new session.
   - Prompt: `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md`
   - Guide: `docs/unfinished-work-guide.md`
   - Template: `templates/HANDOFF.template.md`

For the complete lifecycle, read `docs/development-lifecycle.md`.

## Which Prompt Should I Use?

| Situation | Prompt |
| --- | --- |
| Preparing an existing project | `prompts/INITIAL_AI_AGENT_READY_PROMPT.md` |
| Building a feature | `prompts/FEATURE_IMPLEMENTATION_PROMPT.md` |
| Fixing a bug | `prompts/BUGFIX_PROMPT.md` |
| Checking completed code | `prompts/VERIFY_CHANGES_PROMPT.md` |
| Reviewing security | `prompts/SECURITY_REVIEW_PROMPT.md` |
| Synchronizing docs | `prompts/UPDATE_DOCUMENTATION_PROMPT.md` |
| Preparing commits | `prompts/COMMIT_PROMPT.md` |
| Resuming previous work | `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md` |

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

Use `prompts/INITIAL_AI_AGENT_READY_PROMPT.md`.

Important: the prompt tells the agent to read `docs/ai-agent-guide.md` first, inspect the actual repository, show a plan before editing, and never invent architecture or commands.

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

### 6. Verify and review the setup

Use:

- `prompts/VERIFY_CHANGES_PROMPT.md`
- `prompts/SECURITY_REVIEW_PROMPT.md` when security-sensitive rules or project setup are involved

### 7. Commit only after human review

AI should not commit by default. Human reviews the diff, verification evidence, security findings if relevant, and documentation updates before authorizing a commit.

## Recommended Team Workflow

For every task, team members should start with enough context and choose the right prompt.

A practical default sequence:

1. `prompts/FEATURE_IMPLEMENTATION_PROMPT.md` or `prompts/BUGFIX_PROMPT.md`
2. `prompts/VERIFY_CHANGES_PROMPT.md`
3. `prompts/SECURITY_REVIEW_PROMPT.md` when relevant
4. `prompts/UPDATE_DOCUMENTATION_PROMPT.md`
5. `prompts/COMMIT_PROMPT.md` in prepare-only mode unless commit is explicitly authorized
6. `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md` if work spans sessions

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

## Command Accuracy Rule

Commands in this repository are either:

- discovered from a target project and documented exactly there, or
- examples clearly labeled as examples.

Do not claim that an example command exists in a target project until the repository has been inspected.
