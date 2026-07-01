# Restructure Plan: Standards, Guides, Templates, and Skills

Status: Historical
Branch: `restructure-skills-standards` (historical)
Owner: Needs confirmation
Created: 2026-06-30

## 1. Objective

Simplify this repository so it is easier for developers and QA engineers to adopt with OpenCode or another AI-agent harness.

The repository should become:

```text
company-wide source of truth
+ reusable installable AI skills
+ project-local AGENTS.md templates
+ small starter pack for real repositories
```

The goal is not to delete useful content. The goal is to route it better.

## 2. Current Problem

The repository now has broad coverage, but the user experience can feel large because many files live directly under `docs/`, `prompts/`, and `templates/`.

Technical size is small, but cognitive size is high.

Current observed size before restructuring:

```text
repo total: about 1.4M
files: about 90
```

Risk:

- developers may think they must read everything;
- OpenCode users may not know which prompt/guide to use;
- company-wide standards and project-specific instructions are mixed;
- installable AI skills are missing;
- the current structure is more complete toolkit than simple operating model.

## 3. Target Operating Model

Use three levels of instruction.

### Level 1 — Organization-Wide Standard

Lives in this central repository.

Contains:

- AI usage policy;
- secure coding standard;
- testing standard;
- documentation standard;
- commit standard;
- pull request standard;
- human review standard;
- reusable prompts, templates, checklists, and skills.

### Level 2 — Project-Specific Instructions

Lives inside each project repository.

Minimum project files:

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

Project `AGENTS.md` is the primary entry point for OpenCode and other AI agents.

### Level 3 — Task-Specific Context

Comes from issues, user requests, feature plans, bug reports, or handoff notes.

Each task should provide:

- objective;
- acceptance criteria;
- affected modules;
- constraints;
- risks;
- testing requirements;
- expected output.

## 4. Proposed Repository Structure

Target structure:

```text
ai-agent-how-to/
├── README.md
├── standards/
│   ├── ai-usage-standard.md
│   ├── ai-ready-repository-standard.md
│   ├── secure-coding-standard.md
│   ├── testing-standard.md
│   ├── documentation-standard.md
│   ├── commit-standard.md
│   ├── pull-request-standard.md
│   └── human-review-standard.md
├── guides/
│   ├── opencode-adoption-guide.md
│   ├── make-new-project-ai-ready.md
│   ├── make-legacy-project-ai-ready.md
│   ├── repository-context-guide.md
│   ├── feature-development-workflow.md
│   ├── bugfix-workflow.md
│   ├── security-review-workflow.md
│   ├── qa-handover-workflow.md
│   └── unfinished-work-handover.md
├── templates/
│   ├── AGENTS.template.md
│   ├── PROJECT_CONTEXT.template.md
│   ├── ARCHITECTURE.template.md
│   ├── DEVELOPMENT.template.md
│   ├── TESTING.template.md
│   ├── SECURITY.template.md
│   ├── CHANGE_PLAN.template.md
│   ├── HANDOVER.template.md
│   ├── BUG_REPORT.template.md
│   ├── PULL_REQUEST.template.md
│   └── STARTER_PACK/
├── checklists/
│   ├── repository-ai-readiness-checklist.md
│   ├── pre-implementation-checklist.md
│   ├── code-review-checklist.md
│   ├── owasp-review-checklist.md
│   ├── pre-commit-checklist.md
│   ├── pull-request-checklist.md
│   └── release-readiness-checklist.md
├── prompts/
│   ├── bootstrap-existing-project.md
│   ├── plan-feature.md
│   ├── fix-bug.md
│   ├── review-security.md
│   ├── create-commits.md
│   ├── create-pull-request.md
│   └── continue-unfinished-work.md
├── skills/
│   ├── prepare-repository/
│   ├── plan-feature/
│   ├── implement-feature/
│   ├── review-security/
│   ├── create-commits/
│   ├── create-pull-request/
│   ├── qa-handover/
│   └── continue-unfinished-work/
├── scripts/
└── examples/
```

## 5. Compatibility Strategy

Do not break existing links immediately.

During restructuring:

1. Create new canonical files under `standards/`, `guides/`, `checklists/`, and `skills/`.
2. Keep current `docs/` files as compatibility pointers or reference docs.
3. Update README to make new structure the primary navigation.
4. Update validation scripts to check both old and new required paths during transition.
5. Avoid deleting old useful files until the new structure is verified.
6. If deleting or moving later, do it in a separate cleanup PR/commit.

## 6. Skills Strategy

Skills should be thin workflow wrappers, not giant documents.

Each skill must:

- define when it triggers;
- read project `AGENTS.md` first;
- inspect repository state before acting;
- use project-local commands and templates when present;
- fall back to central standards only when project-specific files are missing;
- avoid claiming tests passed unless executed;
- require human confirmation for commits, PR creation, push, destructive actions, production changes, and security-sensitive decisions.

Recommended first skills:

| Skill | User command examples |
| --- | --- |
| `prepare-repository` | `Prepare this repository for AI-assisted development` |
| `plan-feature` | `Plan this feature` |
| `implement-feature` | `Implement this feature` |
| `review-security` | `Review this change for security issues` |
| `create-commits` | `Create commits for the completed work` |
| `create-pull-request` | `Create a pull request from this branch` |
| `qa-handover` | `Prepare QA handover` |
| `continue-unfinished-work` | `Continue unfinished work` |

## 7. OpenCode Adoption Flow

Developers should use simple commands after the project has `AGENTS.md` and skills installed.

Examples:

```text
Prepare this repository for AI-assisted development
```

```text
Implement this feature: ...
```

```text
Review this change for security issues
```

```text
Create commits for the completed work
```

```text
Create a pull request from this branch
```

The skill/agent must read project `AGENTS.md` automatically before acting.

## 8. Implementation Phases

### Phase A — Plan and Branch

- Create branch `restructure-skills-standards`.
- Add this restructuring plan.
- Do not modify large content yet.

Acceptance criteria:

- branch exists;
- plan exists;
- no old docs deleted.

### Phase B — Add New Navigation Layer

Create:

- `standards/README.md`;
- `guides/README.md`;
- `checklists/README.md`;
- `skills/README.md`;
- updated root `README.md` explaining the new mental model.

Acceptance criteria:

- developer can understand source-of-truth layers in under 5 minutes;
- root README clearly says do not copy everything.

### Phase C — Create Canonical Standards

Create or consolidate:

- `standards/ai-usage-standard.md`;
- `standards/ai-ready-repository-standard.md`;
- `standards/secure-coding-standard.md`;
- `standards/testing-standard.md`;
- `standards/documentation-standard.md`;
- `standards/commit-standard.md`;
- `standards/pull-request-standard.md`;
- `standards/human-review-standard.md`.

Acceptance criteria:

- each standard is short and actionable;
- old docs link to the canonical standard or remain as detailed references;
- no duplicated conflicting rules.

### Phase D — Add OpenCode Guides and Starter Pack

Create:

- `guides/opencode-adoption-guide.md`;
- `guides/make-new-project-ai-ready.md`;
- `guides/make-legacy-project-ai-ready.md`;
- `templates/STARTER_PACK/README.md`;
- project-local templates for `PROJECT_CONTEXT`, `ARCHITECTURE`, `DEVELOPMENT`, `TESTING`, `SECURITY`.

Acceptance criteria:

- devs know exactly what to copy into a project;
- legacy setup avoids changing production behavior;
- unknown values use `Needs confirmation`.

### Phase E — Add Skills

Create skill directories:

- `skills/prepare-repository/SKILL.md`;
- `skills/plan-feature/SKILL.md`;
- `skills/implement-feature/SKILL.md`;
- `skills/review-security/SKILL.md`;
- `skills/create-commits/SKILL.md`;
- `skills/create-pull-request/SKILL.md`;
- `skills/qa-handover/SKILL.md`;
- `skills/continue-unfinished-work/SKILL.md`.

Acceptance criteria:

- skills are small;
- skills read `AGENTS.md` first;
- skills do not hardcode stack commands;
- skills require confirmation for commit/PR/push/destructive actions;
- skills can be updated centrally.

### Phase F — Normalize Prompts and Checklists

Create short canonical prompt files:

- `prompts/bootstrap-existing-project.md`;
- `prompts/plan-feature.md`;
- `prompts/fix-bug.md`;
- `prompts/review-security.md`;
- `prompts/create-commits.md`;
- `prompts/create-pull-request.md`;
- `prompts/continue-unfinished-work.md`.

Create checklists:

- repository AI readiness;
- pre-implementation;
- code review;
- OWASP review;
- pre-commit;
- PR;
- release readiness.

Acceptance criteria:

- prompts are shorter and route to standards;
- existing detailed prompts remain available or are linked;
- checklists are usable without reading all docs.

### Phase G — Validation and Cleanup

Update scripts:

- validate canonical structure;
- validate skill files;
- validate starter pack references;
- validate links;
- scan for secret-like values;
- check duplicate prompt/skill names.

Acceptance criteria:

- validation passes;
- links are valid;
- no secrets introduced;
- no untracked accidental files;
- final branch is ready for review.

## 9. Commit Plan

Use multiple logical commits:

1. `docs: add standards and skills restructure plan`
2. `docs: add standards guides and checklists navigation`
3. `docs: add canonical ai usage standards`
4. `docs: add opencode adoption and starter pack guides`
5. `docs: add ai workflow skills`
6. `docs: normalize prompts and checklists`
7. `chore: update validation for restructured toolkit`

## 10. Risks

| Risk | Mitigation |
| --- | --- |
| Breaking existing links | Keep compatibility files and validate links. |
| Creating duplicate guidance | Make `standards/` canonical and old docs reference it. |
| Skills become too large | Keep skills as workflow wrappers. |
| Project setup becomes heavy | Provide a minimal starter pack. |
| OpenCode/harness behavior differs | Keep skills plain Markdown and project `AGENTS.md` as fallback. |

## 11. Done Criteria

Restructure is complete when:

- root README explains the new operating model;
- standards/guides/checklists/skills folders exist;
- minimum starter pack is documented;
- OpenCode adoption guide exists;
- create-commits and create-pull-request skills exist;
- validation scripts cover new structure;
- old docs are not silently broken;
- no secrets are introduced;
- final branch has logical commits and clean working tree.
