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

## Short Prompt Examples

Developer:

```text
Read AGENTS.md first. Plan this feature: [feature].
```

```text
Read AGENTS.md first. Implement this feature: [feature].
```

QA:

```text
Read AGENTS.md first. Review this change for QA readiness: [change or PR].
```

Security:

```text
Read AGENTS.md first. Perform a security review of the current diff. Do not modify code.
```

DevOps:

```text
Read AGENTS.md first. Validate environment readiness for [environment]. Mark unknowns as Needs confirmation.
```

## Canonical Short Prompts

The active prompt set now includes one self-contained bootstrap prompt plus short canonical task routers:

```text
prompts/bootstrap-existing-project.md
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
