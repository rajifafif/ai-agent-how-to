# AI Agent How-To

Guide, prompts, and templates for making team projects AI Agent Ready and for running a
safe AI-assisted development lifecycle.

This repository is meant to be copied into existing projects before the team starts
using AI agents heavily. It is also a practical workshop kit for developers learning to
use AI coding agents safely.

## Files

English version:

- `docs/ai-agent-guide.md` — main team guide with checklist, workflows, safety rules,
skill modes, and starter prompts.
- `prompts/` — copy-paste prompts for common AI-assisted development tasks.
- `docs/ai-workflows.md` — workflow router that lets agents map short natural-language
requests to the right detailed prompt.
- `docs/development-lifecycle.md` — end-to-end lifecycle: Prepare → Plan → Implement →
Verify → Security Review → Update Documentation → Commit → Handoff or Continue.
- `docs/planning-loop-guide.md` — how to split larger tasks into phased plans,
verification checkpoints, handoffs, and completion decisions.
- `docs/verification-guide.md` — how to verify changes with real commands and evidence.
- `docs/security-review-guide.md` — when and how to run separate security review.
- `docs/documentation-guide.md` — when code changes require documentation updates.
- `docs/commit-guide.md` — safe commit lifecycle for AI-assisted work.
- `docs/unfinished-work-guide.md` — how to persist work outside chat.
- `templates/AGENTS.template.md` — copy this to a project's root as `AGENTS.md`, then
ask the AI agent to fill it with project-specific details.
- `templates/IMPLEMENTATION_PLAN.template.md` — reusable implementation plan template.
- `templates/HANDOFF.template.md` — reusable handoff template.
- `templates/SECURITY_REVIEW.template.md` — reusable security review report template.
- `templates/COMPLETION_REPORT.template.md` — reusable final task report template.

Indonesian version:

- `README.id.md`
- `docs/ai-agent-guide.id.md`
- `templates/AGENTS.template.id.md`

The newer lifecycle guides, prompts, and templates are currently English-only. See
`README.id.md` for the recommended translation strategy.

## Suggested Workshop Flow

1. Make a project AI Agent Ready.
   - Prompt: `prompts/INITIAL_AI_AGENT_READY_PROMPT.md`
   - Guide: `docs/ai-agent-guide.md`
   - Template: `templates/AGENTS.template.md`
2. Implement a small feature.
   - Prompt: `prompts/FEATURE_IMPLEMENTATION_PROMPT.md`
   - Template: `templates/IMPLEMENTATION_PLAN.template.md`
3. For larger tasks, run the planning loop before implementation.
   - Prompt: `prompts/PLANNING_LOOP_PROMPT.md`
   - Guide: `docs/planning-loop-guide.md`
   - Template: `templates/IMPLEMENTATION_PLAN.template.md`
4. Verify the change.
   - Prompt: `prompts/VERIFY_CHANGES_PROMPT.md`
   - Guide: `docs/verification-guide.md`
5. Run a security review.
   - Prompt: `prompts/SECURITY_REVIEW_PROMPT.md`
   - Guide: `docs/security-review-guide.md`
   - Template: `templates/SECURITY_REVIEW.template.md`
6. Update documentation.
   - Prompt: `prompts/UPDATE_DOCUMENTATION_PROMPT.md`
   - Guide: `docs/documentation-guide.md`
7. Prepare a commit.
   - Prompt: `prompts/COMMIT_PROMPT.md`
   - Guide: `docs/commit-guide.md`
   - Template: `templates/COMPLETION_REPORT.template.md`
8. Save a handoff and continue in a new session.
   - Prompt: `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md`
   - Guide: `docs/unfinished-work-guide.md`
   - Template: `templates/HANDOFF.template.md`

For the complete lifecycle, read `docs/development-lifecycle.md`.

## Which Prompt Should I Use?

| Situation | Prompt |
| --- | --- |
| Preparing an existing project | `prompts/INITIAL_AI_AGENT_READY_PROMPT.md` |
| Planning larger work | `prompts/PLANNING_LOOP_PROMPT.md` |
| Building a feature | `prompts/FEATURE_IMPLEMENTATION_PROMPT.md` |
| Fixing a bug | `prompts/BUGFIX_PROMPT.md` |
| Checking completed code | `prompts/VERIFY_CHANGES_PROMPT.md` |
| Reviewing security | `prompts/SECURITY_REVIEW_PROMPT.md` |
| Synchronizing docs | `prompts/UPDATE_DOCUMENTATION_PROMPT.md` |
| Preparing commits | `prompts/COMMIT_PROMPT.md` |
| Resuming previous work | `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md` |

## Making Prompts Easy to Use

Developers should not need to paste long prompt files during daily work.

Use this pattern:

1. Copy `templates/AGENTS.template.md` to the target project as `AGENTS.md`.
2. Keep or copy `docs/ai-workflows.md` into the target project.
3. Keep or copy the `prompts/` directory when the team wants detailed reusable
checklists.
4. Ask the agent to read `AGENTS.md` first.
5. Use short natural-language prompts.

Example short prompts:

```text
Read AGENTS.md first. Implement: [feature].
```

```text
Read AGENTS.md first. Verify current changes.
```

```text
Read AGENTS.md first. Check current code changes, apply commit rules, and make focused commits.
```

The `AGENTS.md` workflow router maps these short prompts to the detailed prompt files
automatically when the agent follows repository instructions.

Prompt files are still useful as references, workshop handouts, and fallback copy-paste
prompts for tools that do not reliably read repository instructions.

## First Step Checklist for Any Project

Use this checklist when preparing a new or existing project for AI-assisted development.

### 1. Download temporary guide templates into the target project

Start from the project you want to prepare. Download this workshop kit into a temporary
`guide-templates/` folder so the agent can read the guide without mixing source
templates into the final project docs.

Example:

```bash
cd /path/to/target-project
mkdir -p guide-templates/docs guide-templates/templates guide-templates/prompts
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/docs/ai-agent-guide.md -o guide-templates/docs/ai-agent-guide.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/docs/ai-workflows.md -o guide-templates/docs/ai-workflows.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/docs/planning-loop-guide.md -o guide-templates/docs/planning-loop-guide.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/templates/AGENTS.template.md -o guide-templates/templates/AGENTS.template.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/templates/IMPLEMENTATION_PLAN.template.md -o guide-templates/templates/IMPLEMENTATION_PLAN.template.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/templates/HANDOFF.template.md -o guide-templates/templates/HANDOFF.template.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/templates/SECURITY_REVIEW.template.md -o guide-templates/templates/SECURITY_REVIEW.template.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/templates/COMPLETION_REPORT.template.md -o guide-templates/templates/COMPLETION_REPORT.template.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/INITIAL_AI_AGENT_READY_PROMPT.md -o guide-templates/prompts/INITIAL_AI_AGENT_READY_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/PLANNING_LOOP_PROMPT.md -o guide-templates/prompts/PLANNING_LOOP_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/FEATURE_IMPLEMENTATION_PROMPT.md -o guide-templates/prompts/FEATURE_IMPLEMENTATION_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/BUGFIX_PROMPT.md -o guide-templates/prompts/BUGFIX_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/VERIFY_CHANGES_PROMPT.md -o guide-templates/prompts/VERIFY_CHANGES_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/SECURITY_REVIEW_PROMPT.md -o guide-templates/prompts/SECURITY_REVIEW_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/UPDATE_DOCUMENTATION_PROMPT.md -o guide-templates/prompts/UPDATE_DOCUMENTATION_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/COMMIT_PROMPT.md -o guide-templates/prompts/COMMIT_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md -o guide-templates/prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md
```

### 2. Open the target project with your AI agent

Start the AI agent from the target project root after `guide-templates/` exists.

Example:

```bash
hermes
```

Or use your preferred agent CLI/tool.

### 3. Ask the agent to run the initial setup from the temporary templates

Paste this prompt:

```text
Read guide-templates/prompts/INITIAL_AI_AGENT_READY_PROMPT.md completely and execute it for this repository.

Use guide-templates/docs/ai-agent-guide.md as the source guide.
Use guide-templates/docs/ai-workflows.md as the workflow-router reference.
Use guide-templates/docs/planning-loop-guide.md as the larger-task planning reference.
Use guide-templates/templates/AGENTS.template.md as the starting template for AGENTS.md.

Create or update project-local files such as AGENTS.md, docs/ai-agent-guide.md, docs/architecture.md, docs/testing.md, docs/ai-workflows.md, and docs/planning-loop-guide.md based on the real repository.
Install reusable prompts from guide-templates/prompts/ into prompts/.
Install reusable templates from guide-templates/templates/ into templates/.
Create docs/plans/ and docs/handoffs/ for persistent implementation plans and handoffs.
Inspect the real repository before documenting it.
Show a concise plan before editing project-specific files.
Do not invent architecture or commands.
Mark unknown facts as “Needs confirmation”.
Do not commit or push.

After setup is complete and verified, delete the temporary guide-templates/ folder only if prompts/ and templates/ contain the reusable workflow files.
```

The temporary `guide-templates/` folder is only bootstrap material. The final project
should keep generated project-local docs plus installed `prompts/` and `templates/`, not
references to the temporary source folder.

### 4. Optional: download the full prompt set

For daily short-prompt workflows, download the full `prompts/` directory from this
repository or clone/download the repository. Plain `curl` is good for individual raw
files, but not for downloading a GitHub directory in one command.

### How the AI agent will use these docs after setup

After this setup is complete, the generated docs become the agent's project context
layer:

- `AGENTS.md` becomes the main operating rulebook. Future prompts should start with
“Read AGENTS.md first.” The agent uses it to know project rules, commands, architecture
boundaries, git rules, testing rules, and safety requirements.
- `docs/ai-agent-guide.md` becomes the team workflow guide. The agent uses it to
understand expected behavior: plan before risky changes, avoid commits, run checks,
summarize files changed, and use the right mode such as planning, debugging, TDD,
review, or backend-first.
- `docs/architecture.md` helps the agent understand where code belongs before editing.
- `docs/testing.md` tells the agent which commands to run before saying the task is
done.
- `docs/ai-workflows.md` tells the agent how to handle common tasks in this specific
repo, such as features, bugfixes, refactors, reviews, and releases.
- `docs/planning-loop-guide.md` tells the agent when to create a persistent phased
plan before implementation and how to update it after each phase.

In normal daily work, team members should not need to repeat all project context
manually. They can say:

```text
Read AGENTS.md first, then help me with [task].
```

The agent should then use the generated docs to plan, edit, verify, and report work
consistently.

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
- `prompts/SECURITY_REVIEW_PROMPT.md` when security-sensitive rules or project setup are
involved

### 7. Commit only after human review

AI should not commit by default. Human reviews the diff, verification evidence, security
findings if relevant, and documentation updates before authorizing a commit.

## Recommended Team Workflow

For every task, team members should start with enough context and choose the right
prompt.

A practical default sequence:

1. `prompts/PLANNING_LOOP_PROMPT.md` for larger tasks that need phases
2. `prompts/FEATURE_IMPLEMENTATION_PROMPT.md` or `prompts/BUGFIX_PROMPT.md`
3. `prompts/VERIFY_CHANGES_PROMPT.md`
4. `prompts/SECURITY_REVIEW_PROMPT.md` when relevant
5. `prompts/UPDATE_DOCUMENTATION_PROMPT.md`
6. `prompts/COMMIT_PROMPT.md` in prepare-only mode unless commit is explicitly
authorized
7. `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md` if work spans sessions

## Minimum Project Readiness Checklist

A project is ready for AI-assisted development when it has:

- `AGENTS.md`
- `docs/ai-agent-guide.md`
- `docs/ai-workflows.md`
- `docs/planning-loop-guide.md`
- `docs/architecture.md`
- `docs/testing.md`
- `docs/plans/`
- `docs/handoffs/`
- `prompts/`
- `templates/`
- README local setup instructions
- `.env.example`
- documented install/dev/test/lint/typecheck/build commands
- documented migration command if backend/database project
- clear git safety rule: AI must not commit unless asked
- clear security rule: AI must not expose secrets
- human review required for auth, permission, data deletion, migrations, payments, and
production config

## Notes on RTK / Redux Toolkit

Do not make RTK mandatory for every frontend project.

Recommend RTK when:

- global client state is needed
- auth/session/user state is shared across many screens
- complex UI state exists
- predictable state transitions are important

Do not recommend RTK only because the project uses React.

If the project already uses React Query, SWR, or Apollo for server state, avoid
duplicating server state into Redux unless there is a clear reason.

## Command Accuracy Rule

Commands in this repository are either:

- discovered from a target project and documented exactly there, or
- examples clearly labeled as examples.

Do not claim that an example command exists in a target project until the repository has
been inspected.
