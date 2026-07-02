# Prompt Library

Status: Active catalog

This catalog helps users choose the right AI-agent prompt without reading every file.
Short daily instructions should start with `Read AGENTS.md first` and rely on project-local
facts before this central toolkit.

## Prompt Rules

Every prompt should define:

- objective;
- required inputs;
- expected process;
- constraints;
- expected output;
- verification expectations;
- actions requiring human confirmation.

Do not duplicate full standards in every prompt. Link to `standards/`, `guides/`,
`checklists/`, and task-specific templates instead.

## Daily Entry Points

| Task | Use first | Detailed/legacy prompt |
| --- | --- | --- |
| Bootstrap an existing project without this toolkit installed | `prompts/bootstrap-existing-project.md` | Self-contained single prompt |
| Prepare a repository for AI agents with toolkit access | `prompts/bootstrap-existing-project.md` | Self-contained single prompt |
| Make a HISv2 module agent-ready while reusing root project rules | `prompts/hisv2-module-ai-ready.md` | Paste into agent opened inside the module; creates small module `AGENTS.md` and `README.md` |
| Update README.md and AGENTS.md after bootstrap | `prompts/update-readme-agents-after-bootstrap.md` | Standard and stricter cleanup variants |
| Plan larger work | `guides/feature-development-workflow.md` | `prompts/plan-feature.md` |
| Implement a feature | Approved plan under `docs/plans/`, then repository instructions and `skills/implement-feature/SKILL.md` if present | No standalone prompt; implementation must follow an approved plan |
| Fix a bug | `guides/bugfix-workflow.md` | `prompts/fix-bug.md` |
| Verify changes | `skills/verify-changes/SKILL.md` and `.agents/skills/verify-changes/SKILL.md` when present | `checklists/pre-commit-checklist.md` |
| Review security | `guides/security-review-workflow.md` | `prompts/review-security.md` |
| Update or clean up documentation | `skills/cleanup-docs/SKILL.md` and `.agents/skills/cleanup-docs/SKILL.md` when present | `standards/documentation-standard.md` |
| Make commits, only when authorized | `skills/create-commits/SKILL.md` and `.agents/skills/create-commits/SKILL.md` when present | `prompts/create-commits.md` |
| Prepare release/changelog | `skills/make-release/SKILL.md` and `.agents/skills/make-release/SKILL.md` when present | No standalone prompt; use release skill |
| Prepare PR content or create PR, only when authorized | `skills/create-pull-request/SKILL.md` | `prompts/create-pull-request.md` |
| Resume unfinished work | `skills/continue-unfinished-work/SKILL.md` | `prompts/continue-unfinished-work.md` |
| Prepare QA handover | `guides/qa-handover-workflow.md` | `skills/qa-handover/SKILL.md` |
| Check release readiness | `checklists/release-readiness-checklist.md` | `checklists/release-readiness-checklist.md` |

## Skill Utilization Prompt Templates

Use these short prompts from the target project root after `AGENTS.md` and `.agents/skills/*` are installed. Start with `Read AGENTS.md first` so agents use project-local rules before central toolkit assumptions.

| Skill/workflow | Use when | Copy-paste prompt |
| --- | --- | --- |
| `prepare-repository` | Make a repository AI-agent ready. | `Read AGENTS.md first if present. Prepare this repository for AI-assisted development. Inspect real project files, mark unknowns as Needs confirmation, and do not commit.` |
| `plan-feature` | Turn a request, ticket, PRD, design, module, bug report, or discussion into an implementation plan. | `Read AGENTS.md first. Plan this feature: [feature/request]. Create or update a plan under docs/plans/ if appropriate. Do not implement.` |
| `implement-feature` | Implement an approved plan or clearly approved small change. | `Read AGENTS.md first. Implement the approved plan in docs/plans/[plan-file]. Keep scope limited, update tests/docs, and report verification.` |
| `verify-changes` | Check current changes before commit, PR, release, or handoff. | `Read AGENTS.md first. Verify current changes. Inspect git status and diff, run available checks, and report exact results. Do not commit.` |
| `review-security` | Review auth, permissions, OWASP, sensitive data, secrets, migrations, or external integration risk. | `Read AGENTS.md first. Perform a security review of the current diff. Do not modify code. Report severity, evidence, and recommendations.` |
| `cleanup-docs` | Update, sync, consolidate, or remove obsolete docs. | `Read AGENTS.md first. Clean up documentation for [scope]. Preserve source-of-truth docs, remove duplication only when safe, validate links, and do not commit.` |
| `create-commits` | Create focused commits after explicit authorization. | `Read AGENTS.md first. Check current changes, apply commit rules, and make focused commits. Stage explicit files only. Do not push.` |
| `create-commits` prepare-only | Review commit boundaries without committing. | `Read AGENTS.md first. Prepare commit groups and commit messages for current changes. Do not stage or commit.` |
| `create-pull-request` prepare-only | Draft PR title/body without pushing or opening a PR. | `Read AGENTS.md first. Prepare a PR description for this branch. Inspect diff, commits, tests, risks, and templates. Do not push or create the PR.` |
| `create-pull-request` | Create/open a PR after explicit authorization. | `Read AGENTS.md first. Create a pull request for this branch after checking status, remotes, base branch, commits, PR template, and verification. Do not merge.` |
| `make-release` prepare-only | Prepare release notes/changelog/version proposal. | `Read AGENTS.md first. Prepare release notes and a version/tag proposal from changes since the previous release. Do not tag or publish.` |
| `make-release` tag/publish | Tag or publish only after exact approval. | `Read AGENTS.md first. Prepare the release, confirm exact version/tag/changelog with me, then proceed only with the approved release action.` |
| `qa-handover` | Prepare QA handover for a branch/change. | `Read AGENTS.md first. Prepare QA handover for [change/branch/PR]. Include changed behavior, test focus, evidence, risks, config/data notes, and open questions.` |
| `continue-unfinished-work` | Resume from repository state, plans, or handoff docs. | `Read AGENTS.md first. Continue from [handoff file / plan file / current repo state]. Summarize current state, blockers, next safe step, then proceed only within scope.` |

## Short Prompt Examples

Use these when you want the agent to route itself through `AGENTS.md` and the installed skill set without pasting a long prompt.

Bootstrap after toolkit apply:

```text
Read AGENTS.md first if present. After bootstrap, update README.md and AGENTS.md for this project. Use project evidence only, mark unknowns as Needs confirmation, and do not commit.
```

Prepare repository:

```text
Read AGENTS.md first if present. Prepare this repository for AI-assisted development. Inspect real project files, mark unknowns as Needs confirmation, and do not commit.
```

Plan feature:

```text
Read AGENTS.md first. Plan this feature: [feature/request]. Create or update a plan under docs/plans/ if appropriate. Do not implement.
```

Implement approved plan:

```text
Read AGENTS.md first. Implement the approved plan in docs/plans/[plan-file]. Keep scope limited, update tests/docs, and report verification.
```

Fix bug:

```text
Read AGENTS.md first. Fix this bug: [bug/reproduction]. First reproduce or explain why reproduction is not possible, then make the smallest safe fix and verify it.
```

Verify changes:

```text
Read AGENTS.md first. Verify current changes. Inspect git status and diff, run available checks, and report exact results. Do not commit.
```

Security review:

```text
Read AGENTS.md first. Perform a security review of the current diff. Do not modify code. Report severity, evidence, and recommendations.
```

Documentation cleanup:

```text
Read AGENTS.md first. Clean up documentation for [scope]. Preserve source-of-truth docs, remove duplication only when safe, validate links, and do not commit.
```

Prepare commits only:

```text
Read AGENTS.md first. Prepare commit groups and commit messages for current changes. Do not stage or commit.
```

Make commits:

```text
Read AGENTS.md first. Check current changes, apply commit rules, and make focused commits. Stage explicit files only. Do not push.
```

Prepare PR only:

```text
Read AGENTS.md first. Prepare a PR description for this branch. Inspect diff, commits, tests, risks, and templates. Do not push or create the PR.
```

Create PR:

```text
Read AGENTS.md first. Create a pull request for this branch after checking status, remotes, base branch, commits, PR template, and verification. Do not merge.
```

Prepare release:

```text
Read AGENTS.md first. Prepare release notes and a version/tag proposal from changes since the previous release. Do not tag or publish.
```

QA handover:

```text
Read AGENTS.md first. Prepare QA handover for [change/branch/PR]. Include changed behavior, test focus, evidence, risks, config/data notes, and open questions.
```

Continue unfinished work:

```text
Read AGENTS.md first. Continue from [handoff file / plan file / current repo state]. Summarize current state, blockers, next safe step, then proceed only within scope.
```

## Canonical Short Prompts

The active prompt set now includes one self-contained bootstrap prompt plus short canonical task routers:

```text
prompts/bootstrap-existing-project.md
prompts/hisv2-module-ai-ready.md
prompts/update-readme-agents-after-bootstrap.md
prompts/plan-feature.md
prompts/fix-bug.md
prompts/review-security.md
prompts/create-commits.md
prompts/create-pull-request.md
prompts/continue-unfinished-work.md
```

Legacy uppercase prompt files were removed from the active tree. Add new short canonical prompts only when teams need that workflow.

## Missing or Optional Prompt Areas

| Area | Status | Recommendation |
| --- | --- | --- |
| Refactoring | Missing | Add only if teams need a distinct workflow from feature implementation. |
| Requirements refinement | Missing | Add when QA/Product adoption starts. |
| Test scenario generation | Missing | Add under QA prompt cleanup. |
| Exploratory testing | Missing | Add under QA prompt cleanup. |
| Regression planning | Missing | Add under QA prompt cleanup. |
| API/UI testing | Missing | Add only if examples/templates are added too. |
| Bug reproduction | Missing | Add if bug reports often lack reproduction evidence. |
| Evidence review | Missing | Add as QA/reviewer checklist prompt. |

Add new prompt areas only when there is an active workflow and clear owner need.
