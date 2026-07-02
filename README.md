# AI Agent How-To

Practical toolkit for making software projects safe and easy to use with AI coding agents.

Use this repository for:

- project-local `AGENTS.md` setup;
- reusable AI-agent prompts;
- standards for testing, security, commits, PRs, and documentation;
- templates for plans, handoffs, PR checks, security reviews, and repository readiness;
- lightweight validation scripts.

Do not copy this whole repository into every project. Install only the small set of files each project needs.

## Quick Start: Make an Existing Project AI-Agent Ready

From this toolkit repository, preview what will be copied:

```sh
scripts/bootstrap-agent-ready.sh --dry-run --target /path/to/project
```

If the dry-run looks correct, apply it:

```sh
scripts/bootstrap-agent-ready.sh --apply --target /path/to/project
```

Then open the target project in your AI coding agent and run:

```text
Read AGENTS.md first. Use the full prompt from prompts/update-readme-agents-after-bootstrap.md in the AI-agent toolkit, then update this project's README.md and AGENTS.md. Do not commit.
```

The second step is important. The script installs starter files; the prompt makes `README.md` and `AGENTS.md` match the real project.

## Which Prompt Should I Use?

| Situation | Use |
| --- | --- |
| First-time setup for an existing project | `scripts/bootstrap-agent-ready.sh --dry-run --target <repo>` then `--apply` |
| Make a HISv2 module agent-ready while reusing root project rules | `prompts/hisv2-module-ai-ready.md` |
| Cannot run the script | `prompts/bootstrap-existing-project.md` |
| Just ran the script and need project-specific README.md + AGENTS.md | `prompts/update-readme-agents-after-bootstrap.md` |
| Plan a feature or larger task | `prompts/plan-feature.md` |
| Fix a bug | `prompts/fix-bug.md` |
| Security review | `prompts/review-security.md` |
| Create commits after explicit approval | `prompts/create-commits.md` |
| Create or prepare a PR | `prompts/create-pull-request.md` |
| Continue unfinished work | `prompts/continue-unfinished-work.md` |

Full prompt catalog: `docs/prompt-library.md`.

## Standard Setup Flow for Projects

Use this as the default rollout flow for each application repository.

1. Preview bootstrap.

   ```sh
   scripts/bootstrap-agent-ready.sh --dry-run --target /path/to/project
   ```

2. Apply bootstrap.

   ```sh
   scripts/bootstrap-agent-ready.sh --apply --target /path/to/project
   ```

3. Open the target project in an AI coding agent.

4. Run the post-bootstrap prompt.

   ```text
   Read AGENTS.md first. Use the full prompt from prompts/update-readme-agents-after-bootstrap.md in the AI-agent toolkit, then update this project's README.md and AGENTS.md. Do not commit.
   ```

5. Review all `Needs confirmation` items.

6. Run the target project's available validation commands.

7. Commit only after human review and explicit approval.

## Nested Module Setup

Use this when a root project has the toolkit, but developers open module repositories or subfolders directly in their agent.

```text
Paste `prompts/hisv2-module-ai-ready.md` into an AI coding agent opened inside the HISv2 module folder.
```

The module should keep only small local instructions in `AGENTS.md` and module-specific description in `README.md`. Shared rules, skills, prompts, security, commit, release, PR, and documentation standards should stay in the root project.

## What Gets Installed in a Target Project?

The bootstrap flow keeps projects lean. It usually creates or updates:

```text
AGENTS.md
README.md
docs/project-context.md
docs/repository-readiness-checklist.md
docs/testing.md
docs/security-review.md
docs/plans/README.md
docs/handoffs/README.md
.agents/skills/*
templates/*
```

The target project's `AGENTS.md` becomes the daily operating guide for AI agents. It should contain real project facts, not generic guesses.

Unknown commands, owners, environments, SLAs, KPIs, contacts, approvals, or architecture details must stay marked as:

```text
Needs confirmation
```

## Daily AI-Agent Prompts

After a project has `AGENTS.md`, developers can use short prompts like these from the target project root.

```text
Read AGENTS.md first. Plan this feature: [feature].
```

```text
Read AGENTS.md first. Implement the approved plan in docs/plans/[file].
```

```text
Read AGENTS.md first. Fix this bug: [bug or reproduction].
```

```text
Read AGENTS.md first. Verify current changes.
```

```text
Read AGENTS.md first. Review current changes for security issues. Do not modify code.
```

```text
Read AGENTS.md first. Check current changes, apply commit rules, and make focused commits.
```

```text
Read AGENTS.md first. Prepare a PR description for this branch. Do not push or create the PR.
```

## Feature Work Lifecycle

For non-trivial features, use the plan-first lifecycle from `guides/feature-development-workflow.md`:

```text
Understand -> Plan -> Impact Check -> Confirm -> Task -> Implement -> Update -> Verify -> Review/Secure -> PR
```

Important rules:

- do not implement before the plan is clear and approved;
- check impact on auth, permissions, tenant scope, data/migrations, APIs, UI/UX, integrations, rollout, tests, and security;
- update the plan if behavior, data, security, APIs, rollout, or acceptance criteria change;
- create commits, push, or open PRs only when explicitly authorized.

## Repository Map

| Path | Purpose |
| --- | --- |
| `AGENTS.md` | Rules for AI agents working in this toolkit repository. |
| `docs/getting-started.md` | Role-based entry guide. |
| `docs/ai-workflows.md` | Natural-language workflow router. |
| `docs/prompt-library.md` | Prompt catalog. |
| `standards/README.md` | Company-wide standards index. |
| `guides/README.md` | Workflow and adoption guides. |
| `checklists/README.md` | Review/readiness checklists. |
| `skills/README.md` | Reusable workflow wrappers. |
| `prompts/` | Copy-paste or reference prompts. |
| `templates/` | Reusable project templates. |
| `scripts/` | Bootstrap and validation scripts. |

## Source of Truth

| Topic | Canonical file |
| --- | --- |
| AI usage | `standards/ai-usage-standard.md` |
| AI-ready repository | `standards/ai-ready-repository-standard.md` |
| Secure coding | `standards/secure-coding-standard.md` |
| Testing | `standards/testing-standard.md` |
| Documentation | `standards/documentation-standard.md` |
| Commits | `standards/commit-standard.md` |
| Pull requests | `standards/pull-request-standard.md` |
| Human review | `standards/human-review-standard.md` |
| Workflow routing | `docs/ai-workflows.md` and `docs/prompt-library.md` |
| Feature lifecycle | `guides/feature-development-workflow.md` |

## Validate This Toolkit

Run local checks before claiming toolkit changes are ready:

```sh
scripts/validate-docs.sh
```

Review git state:

```sh
git status --short --branch
```

## Human Confirmation Needed

These organization-specific values must stay `Needs confirmation` until an owner defines them:

- policy owner;
- security approval roles;
- release approval roles;
- SLA/KPI targets;
- escalation contacts;
- translation owner and cadence.

## Language Strategy

English is the primary source of truth unless a file explicitly says otherwise.

Maintained Indonesian files:

- `README.id.md`
- `templates/AGENTS.template.id.md`

When English source files change, translated files should either be updated or marked as outdated.
