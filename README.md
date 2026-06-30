# AI Agent How-To

Practical, reusable operating model for safe AI-assisted development.

This repository is the company-wide source of truth for AI usage standards, project
readiness, reusable prompts, templates, checklists, and installable/copyable AI-agent
skills. It is not meant to be copied wholesale into every project.

## Start Here

| Need | Use |
| --- | --- |
| Understand the operating model | This README, then `guides/opencode-adoption-guide.md` |
| Prepare a new project | `guides/make-new-project-ai-ready.md` and `templates/STARTER_PACK/README.md` |
| Prepare a legacy project | `guides/make-legacy-project-ai-ready.md` |
| Find company-wide rules | `standards/README.md` |
| Run a task with an AI agent | `skills/README.md` or `prompts/` |
| Use a review/check gate | `checklists/README.md` |
| Audit old Q3 scope | `docs/ARCHIVE/roadmap/Q3_ACTION_ITEM_TRACEABILITY.md` |

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

## Current Restructure State

The restructure plan in `docs/roadmap/RESTRUCTURE_TO_STANDARDS_AND_SKILLS_PLAN.md` is
mostly implemented for the new top-level operating model:

| Area | State |
| --- | --- |
| `standards/` | Present. Canonical short standards exist. |
| `guides/` | Present. Adoption and workflow guides exist. |
| `checklists/` | Present. Review/readiness checklists exist. |
| `skills/` | Present. Initial workflow skills exist. |
| `templates/STARTER_PACK/` | Present. Starter pack entry point exists. |
| Validation scripts | Present, but should be tightened as cleanup continues. |
| Old `docs/` content | Still present as compatibility/reference material; needs pruning or pointer conversion. |
| Old uppercase prompt files | Still present as compatibility/detailed prompts; should be mapped to canonical short prompts or archived later. |

## Canonical Navigation

| Area | Purpose |
| --- | --- |
| `standards/README.md` | Company-wide rules. |
| `guides/README.md` | How to apply the rules in real repositories and workflows. |
| `checklists/README.md` | Short gates for setup, implementation, review, PR, release. |
| `skills/README.md` | AI-agent workflow wrappers for OpenCode or similar harnesses. |
| `templates/STARTER_PACK/README.md` | Minimal files to copy into a project. |
| `docs/` | Legacy detailed references, roadmap history, examples, and compatibility pages. |
| `prompts/` | Detailed prompt library and compatibility prompt files. |
| `scripts/` | Local documentation/readiness validation scripts. |

## What to Copy Into a Project

Start small. Do not copy every file.

Minimum project-local starter pack:

```text
AGENTS.md
README.md
docs/PROJECT_CONTEXT.md
docs/ARCHITECTURE.md
docs/DEVELOPMENT.md
docs/TESTING.md
docs/SECURITY.md
.github/pull_request_template.md
scripts/verify.sh
```

Use the templates in `templates/` and the starter-pack guide in
`templates/STARTER_PACK/README.md`. Replace unknown project facts with
`Needs confirmation`; do not invent commands, owners, SLAs, environments, or approval
roles.

## OpenCode / AI-Agent Usage

After a target project has `AGENTS.md` and project docs, developers should use short
commands such as:

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

| Topic | Canonical file now | Old/detail reference |
| --- | --- | --- |
| AI usage | `standards/ai-usage-standard.md` | `docs/ARCHIVE/security/ai-assisted-development-standard.md` |
| AI-ready repository | `standards/ai-ready-repository-standard.md` | `docs/ARCHIVE/ai-agent-ready-repository-standard.md` |
| Secure coding | `standards/secure-coding-standard.md` | `docs/ARCHIVE/security/secure-coding-checklist.md` |
| Testing | `standards/testing-standard.md` | `docs/ARCHIVE/verification-guide.md`, `docs/ARCHIVE/qa/automation-testing-standard.md` |
| Documentation | `standards/documentation-standard.md` | `docs/ARCHIVE/documentation-guide.md` |
| Commits | `standards/commit-standard.md` | `docs/ARCHIVE/commit-guide.md` |
| Pull requests | `standards/pull-request-standard.md` | `docs/ARCHIVE/dev/pr-standard.md` |
| Human review | `standards/human-review-standard.md` | `docs/definition-of-done.md` |
| Workflow routing | `guides/README.md`, `skills/README.md` | `docs/ai-workflows.md`, `docs/prompt-library.md` |
| Roadmap history | `docs/roadmap/` | None |

## Cleanup Plan for Old Docs

The repo still has useful but noisy legacy material under `docs/`, `prompts/`, and
`templates/`. Cleanup should be staged so links do not break.

| Priority | Action | Candidate paths | Result |
| --- | --- | --- | --- |
| P0 | Fix corrupted navigation files | `README.md`, `docs/prompt-library.md` | Remove duplicated line-number garbage and make current state clear. |
| P1 | Convert duplicates to compatibility pointers | `docs/ARCHIVE/ai-agent-ready-repository-standard.md`, `docs/ARCHIVE/dev/pr-standard.md`, `docs/ARCHIVE/security/ai-assisted-development-standard.md`, selected old guides | New work uses `standards/`; old links still resolve. |
| P1 | Map old prompt names to canonical prompt names | Uppercase files in `prompts/` versus planned short names | Keep detailed prompts only where useful; create short canonical prompts when missing. |
| P2 | Archive roadmap/history that is no longer operational | Old Q3 roadmap/gap files after traceability is finalized | Move to `docs/archive/` or keep as historical references with clear status. |
| P2 | Remove or merge low-value examples | `docs/ARCHIVE/examples/` if not referenced by guides | Keep only examples that teach current workflow. |
| P3 | Tighten validation | `scripts/validate-docs.sh`, link checks, duplicate prompt checks | Fail on missing canonical files, broken links, and accidental secrets. |

Do not delete old docs in the same step as navigation cleanup unless every reference has
been checked. Prefer pointer files first, deletion later.

## Language Strategy

English is the primary source of truth unless a file explicitly says otherwise.

Indonesian files currently maintained:

- `README.id.md`
- `docs/ARCHIVE/ai-agent-guide.id.md`
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
