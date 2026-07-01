# AI Agent How-To

Practical, reusable operating model for safe AI-assisted development.

This repository is the company-wide source of truth for AI usage standards, project
readiness, reusable prompts, templates, checklists, and installable/copyable AI-agent
skills. It is not meant to be copied wholesale into every project.

## Start Here

| Need | Use |
| --- | --- |
| Understand the operating model | This README, then `guides/opencode-adoption-guide.md` |
| Bootstrap an existing project with one prompt | `prompts/bootstrap-existing-project.md` |
| Prepare a new project with toolkit access | `guides/make-new-project-ai-ready.md` and `templates/STARTER_PACK/README.md` |
| Prepare a legacy project with toolkit access | `guides/make-legacy-project-ai-ready.md` |
| Find company-wide rules | `standards/README.md` |
| Run a task with an AI agent | `skills/README.md` or `prompts/` |
| Use a review/check gate | `checklists/README.md` |

## Simple Operating Model

Use three layers. Do not mix them.

| Layer | Lives where | Purpose |
| --- | --- | --- |
| Organization standard | This repository: `standards/`, `guides/`, `checklists/`, `skills/` | Shared rules and reusable workflows. |
| Project instructions | Each project repository: `AGENTS.md`, `README.md`, project docs | Real commands, architecture, conventions, boundaries. |
| Task context | Issue, user request, plan, bug report, handoff | Objective, acceptance criteria, risks, expected output. |

Rule of thumb:

1. Keep organization rules here.
2. Put project facts in the project.
3. Put task facts in the ticket/request/plan.
4. Install or copy only the small starter pack a project actually needs.

## Current Structure State

The active top-level operating model is now simplified:

| Area | State |
| --- | --- |
| `standards/` | Canonical short standards. |
| `guides/` | Adoption and workflow guides that point to runnable prompts. |
| `checklists/` | Review/readiness gates. |
| `skills/` | Initial workflow wrappers. |
| `templates/STARTER_PACK/` | Starter pack entry point. |
| `prompts/` | Canonical short runnable prompts. |
| Validation scripts | Present, but should be tightened as cleanup continues. |

## Canonical Navigation

| Area | Purpose |
| --- | --- |
| `standards/README.md` | Company-wide rules. |
| `guides/README.md` | How to apply the rules in real repositories and workflows. |
| `checklists/README.md` | Short gates for setup, implementation, review, PR, release. |
| `skills/README.md` | AI-agent workflow wrappers for OpenCode or similar harnesses. |
| `templates/STARTER_PACK/README.md` | Minimal files to copy into a project. |
| `docs/` | Active getting-started, workflow router, prompt catalog, roadmap, glossary, and supporting references. |
| `prompts/` | Canonical short runnable prompts. |
| `scripts/` | Local documentation/readiness validation scripts. |

## Fastest Path for Existing Projects

Most developers do not need this whole toolkit in their application repository.

For an existing application, open the target repository in the AI coding agent and paste
one prompt:

```text
prompts/bootstrap-existing-project.md
```

That prompt is self-contained. It tells the agent to inspect the existing repo, then create
or update the minimum local files:

```text
AGENTS.md
README.md, only if missing or incomplete
docs/project-context.md
docs/repository-readiness-checklist.md
docs/testing.md, only if testing instructions are unclear
docs/plans/README.md, only if needed
docs/handoffs/README.md, only if needed
```

The developer must review every `Needs confirmation` item before considering the project
AI-agent ready.

## What to Copy Into a Project

Start small. Do not copy every file.

If the target project can access this toolkit, use `templates/STARTER_PACK/README.md`.
If it cannot, use `prompts/bootstrap-existing-project.md` instead.

Minimum project-local files are usually:

```text
AGENTS.md
README.md
docs/project-context.md
docs/repository-readiness-checklist.md
docs/testing.md
```

Replace unknown project facts with `Needs confirmation`; do not invent commands, owners,
SLAs, environments, or approval roles.

## OpenCode / AI-Agent Usage

After a target project has `AGENTS.md` and project docs, developers should use short
commands such as:

For feature work, the default lifecycle is `guides/feature-development-workflow.md`:

```text
Understand -> Plan -> Impact Check -> Confirm -> Task -> Implement -> Update -> Verify -> Review/Secure -> PR
```

Use planning first for non-trivial features. Implementation starts after the plan is clear,
impact is checked, and required human confirmations are resolved.

```text
Prepare this repository for AI-assisted development.
```

```text
Plan this feature: [feature].
```

```text
Implement this feature: [feature].
```

```text
Review this change for security issues.
```

```text
Create commits for the completed work.
```

```text
Create a pull request from this branch.
```

The agent must read project `AGENTS.md` first, inspect real repository state, use actual
project commands, and ask before commits, PR creation, push, destructive actions,
production changes, or security-sensitive decisions.

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
| Workflow routing | `docs/ai-workflows.md`, `docs/prompt-library.md`, `guides/README.md` |
| Roadmap history | `docs/roadmap/` |
| Jam.dev MCP integration plan | `docs/roadmap/jam-dev-mcp-integration-plan.md` |

## Cleanup Plan

Legacy archive folders have been removed from the active tree to reduce noise. Future cleanup should focus on:

| Priority | Action | Result |
| --- | --- | --- |
| P1 | Tighten `scripts/validate-docs.sh` | Fail on missing canonical files, broken links, missing runnable prompts, and accidental secrets. |
| P1 | Keep prompt/router indexes aligned | Guides point to prompts, and `docs/ai-workflows.md` routes daily work to canonical short prompts. |
| P2 | Add missing workflows only when teams need them | Avoid recreating archive noise with unused prompts/templates. |

## Language Strategy

English is the primary source of truth unless a file explicitly says otherwise.

Indonesian files currently maintained:

- `README.id.md`
- `templates/AGENTS.template.id.md`

When English source files change, translated files should either be updated or marked as
outdated. Do not maintain two diverging full document sets without an owner and review
cadence.

## Validate This Repository

Run local checks before claiming the toolkit is ready:

```sh
scripts/validate-docs.sh
```

Also review the working tree:

```sh
git status --short --branch
```

## Human Confirmation Needed

The following organization-specific values must remain `Needs confirmation` until an owner
sets them:

- policy owner;
- security approval roles;
- release approval roles;
- SLA/KPI targets;
- escalation contacts;
- translation owner and cadence.
