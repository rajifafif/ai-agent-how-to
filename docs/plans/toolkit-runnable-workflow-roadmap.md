# Plan: Make the AI-Agent Toolkit Runnable

Status: Active plan

Review status: Draft - needs review

## Objective

Turn this repository from a mostly documentation/prompt toolkit into a runnable AI-agent workflow kit that can install, sync, validate, and demonstrate project-local agent workflows.

## Background

The repository already has strong operating rules, prompts, templates, checklists, and skills for planning, security review, commits, releases, and PR creation. The main gap is execution tooling: projects still rely on manual copying and manual interpretation.

The next stage should make the toolkit feel like an installable workflow system:

- one command and prompt fallback to bootstrap a target repository;
- one way to sync canonical `skills/*` into project-local `.agents/skills/*`;
- one verification workflow before commit/PR/release;
- one documented local dry-run path proving the daily UX without creating a bundled workshop project.

## Acceptance Criteria

- [ ] A target repo can be made AI-agent-ready through a clear bootstrap workflow.
- [ ] Canonical skills and `.agents/skills` copies can be checked for drift.
- [ ] Developers have a `verify this` workflow before commit/PR/release.
- [ ] Release workflow has a project-local release policy template to read.
- [ ] README/docs show daily natural-language commands as the primary UX.
- [ ] At least one local dry-run scenario proves planning, security review, commit, release, and PR flows.
- [ ] Local-only validation reports missing links, stale skill sync, missing required files, and secret-like content.

## In Scope

1. Bootstrap/install workflow.
2. Skill sync and lock/manifest improvements.
3. Verify-changes skill and routing.
4. Release policy template and generated `docs/release.md` guidance.
5. Agent compatibility matrix.
6. Local dry-run workflow scenario.
7. Local validation/reporting improvements.
8. README navigation and daily command examples.

## Out of Scope

- Building a full package manager.
- Supporting every AI coding agent feature deeply.
- Adding organization-specific owners, SLA, KPI, escalation contacts, or approval roles.
- Publishing release tags for this repository.
- Replacing existing standards/checklists unless needed to remove contradictions.

## Repository Findings

- `README.md` already defines the toolkit as company-wide source of truth.
- `prompts/bootstrap-existing-project.md` is currently the main bootstrap path.
- `skills/*` contains canonical skills.
- `.agents/skills/*` contains project-local skill copies for this repository.
- `skills-lock.json` exists but is too small to act as a strong sync manifest.
- `scripts/validate-docs.sh`, `scripts/validate-links.sh`, and related scripts already provide lightweight validation.
- `templates/IMPLEMENTATION_PLAN.template.md` exists and can be reused for generated plans.
- Release behavior exists in `skills/make-release/SKILL.md`, but target projects still need a `docs/release.md` policy template.

## Affected Files or Layers

Likely affected:

- `README.md`
- `docs/ai-workflows.md`
- `docs/implementation-roadmap.md`
- `docs/prompt-library.md`
- `docs/plans/`
- `guides/`
- `prompts/bootstrap-existing-project.md`
- `skills/`
- `.agents/skills/`
- `templates/`
- `scripts/`
- `skills-lock.json`
- local dry-run workflow docs, path needs confirmation

## Impact Check

| Area | Impact |
| --- | --- |
| Auth / permissions | Low. No app auth changes expected. |
| Tenant scope | None expected. |
| Data / migrations | None expected. |
| API | None expected unless future installer exposes CLI flags. |
| UI/UX | Docs/workflow UX impact: daily commands should be clearer. |
| Integrations | Medium. Git/GitHub/agent compatibility docs may touch external tools. |
| Rollout | Medium. Bootstrap/sync scripts affect how projects adopt the toolkit. |
| Tests / validation | High. Need stronger validation for skill drift and generated output. |
| Security | Medium. Bootstrap and release docs must avoid copying secrets and must preserve `Needs confirmation`. |
| Sensitive data | Low if examples stay fictional and scripts avoid reading secrets into output. |

## Phase 1 — Make Bootstrap Concrete

Goal: make `make this project AI Agent Ready` actionable beyond a long prompt.

Tasks:

- [ ] Use both bootstrap interfaces:
  - script: add `scripts/bootstrap-agent-ready.sh` for repeatable local installation and dry-run output;
  - prompt: keep `prompts/bootstrap-existing-project.md` as the agent fallback and human-readable workflow.
- [ ] Define default install set:
  - `AGENTS.md`;
  - `docs/ai-workflows.md`;
  - `docs/project-context.md`;
  - `docs/repository-readiness-checklist.md`;
  - `docs/testing.md` when unclear;
  - project-local `.agents/skills/*` for the full daily workflow set: `prepare-repository`, `plan-feature`, `implement-feature`, `review-security`, `verify-changes`, `create-commits`, `make-release`, `create-pull-request`, `continue-unfinished-work`, and `qa-handover`;
  - selected templates/checklists, including release, PR, QA handover, implementation plan, and handoff templates.
- [ ] Update `prompts/bootstrap-existing-project.md` to reference the selected install set and instruct the agent to download/read the canonical bootstrap Markdown instead of embedding the full long prompt inline when used from another repo.
- [ ] Add a short bootstrap invocation prompt that says: read `AGENTS.md`, fetch or open `prompts/bootstrap-existing-project.md` from this toolkit, then run the local bootstrap workflow.
- [ ] Add bootstrap output requirements:
  - installed files;
  - skipped files;
  - discovered commands;
  - `Needs confirmation` list;
  - validation results.
- [ ] Add dry-run behavior if implementing a script.

Acceptance:

- [ ] A user can understand exactly what gets installed and what must be reviewed.
- [ ] Prompt-based bootstrap remains usable without pasting the entire long bootstrap prompt into chat.
- [ ] Bootstrap does not copy the whole toolkit by default.
- [ ] Unknown project-specific facts are marked `Needs confirmation`.

## Phase 2 — Add Skill Sync and Manifest

Goal: prevent drift between canonical `skills/*` and project-local `.agents/skills/*`.

Tasks:

- [ ] Expand `skills-lock.json` into a useful manifest:
  - skill name;
  - canonical path;
  - local path;
  - version or content hash;
  - installed timestamp or source marker;
  - trigger phrases.
- [ ] Add script or validation mode:
  - `scripts/sync-skills.sh` or `scripts/validate-skills.sh`.
- [ ] Check that every canonical skill expected locally exists under `.agents/skills/`.
- [ ] Detect content drift between canonical and local skill copies.
- [ ] Enforce project-local skill copies as exact synced copies of canonical `skills/*`.
- [ ] Document sync policy in `skills/README.md`: project `.agents/skills/*` should stay the same as toolkit canonical skills; developer-specific extra skills belong at the agent/user level, not in project-local skills.

Acceptance:

- [ ] Validation fails or warns when canonical/local skill drift is accidental.
- [ ] The sync process is explicit and reports any project-local drift as a validation issue instead of treating it as an allowed customization.

## Phase 3 — Add Verify-Changes Skill

Goal: create the missing backbone workflow before commits, PRs, and releases.

Trigger phrases:

- `verify this`
- `check current changes`
- `review diff`
- `did this pass?`
- `pre-commit check`

Tasks:

- [ ] Create `skills/verify-changes/SKILL.md`.
- [ ] Create `.agents/skills/verify-changes/SKILL.md`.
- [ ] Route triggers in `docs/ai-workflows.md`.
- [ ] Add Verify Shortcut to `prompts/bootstrap-existing-project.md`.
- [ ] Update `templates/AGENTS.template.md` and `.id.md`.
- [ ] Define verification output:
  - status/diff scope;
  - commands run;
  - actual results;
  - checks not run and reason;
  - security-sensitive areas touched;
  - verdict: PASS, PASS WITH WARNINGS, FAIL, BLOCKED.

Acceptance:

- [ ] Commit, PR, and release skills can reference verify-changes as a prerequisite workflow.
- [ ] Verification does not invent project commands.

## Phase 4 — Add Release Policy Template

Goal: give target repos a local release source of truth.

Tasks:

- [ ] Add `templates/RELEASE_PROCESS.template.md`.
- [ ] Have bootstrap generate or recommend `docs/release.md` when release process is unclear.
- [ ] Update `skills/make-release/SKILL.md` to prefer `docs/release.md` when present.
- [ ] Include fields:
  - versioning scheme;
  - tag format;
  - changelog format;
  - prerelease/stable rules;
  - who confirms release;
  - publish/push rules;
  - rollback notes;
  - artifact rules;
  - `Needs confirmation` placeholders.

Acceptance:

- [ ] `make release` can read project-local release rules instead of guessing.
- [ ] Tagging remains confirmation-gated.

## Phase 5 — Agent Compatibility Matrix

Goal: make agent-agnostic support real, not assumed.

Tasks:

- [ ] Add `docs/agent-compatibility.md`.
- [ ] Document behavior for common agents/tools:
  - Hermes;
  - Claude Code;
  - Cursor;
  - OpenCode;
  - Codex-style agents;
  - Gemini CLI;
  - Antigravity;
  - Pi;
  - generic CLI agents.
- [ ] For each, document:
  - whether `AGENTS.md` auto-loads;
  - whether `.agents/skills/*` auto-loads;
  - fallback prompt usage;
  - known limitations;
  - recommended invocation.
- [ ] Link compatibility matrix from README and `docs/getting-started.md`.

Acceptance:

- [ ] A team can understand what is automatic vs manual per agent.
- [ ] The docs do not claim unsupported auto-loading.

## Phase 6 — Local Dry-Run Workflow Scenario

Goal: prove daily UX with local dry-run artifacts and documented expected outputs, without creating or maintaining a workshop/sample application.

Tasks:

- [ ] Choose documentation location, for example `docs/local-dry-run-workflow.md`.
- [ ] Document a local dry-run walkthrough using a temporary target directory created by the user or test script.
- [ ] Show before/after bootstrap file lists.
- [ ] Include sample commands:
  - `Create plan from ...`;
  - `Do the security review`;
  - `verify this`;
  - `make commits`;
  - `make release`;
  - `create PR`.
- [ ] Include expected artifacts and sample outputs, clearly labelled as local dry-run examples.
- [ ] Keep examples fictional; no real credentials or real company data.

Acceptance:

- [ ] A new developer can follow the local dry-run and understand the toolkit in under 30 minutes.
- [ ] The example proves skill/router-first workflows, not only prompt copy-paste.

## Phase 7 — Local Validation Hardening

Goal: make repository health enforceable locally before commits, PRs, and releases.

Tasks:

- [ ] Extend `scripts/validate-docs.sh` or add focused scripts for:
  - skill sync;
  - markdown links;
  - required templates;
  - duplicate prompt names;
  - secret-like content;
  - generated docs references;
  - stale references to deleted prompts.
- [ ] Ensure validation output is readable for humans and agents.
- [ ] Keep warnings separate from failures.

Acceptance:

- [ ] Local validation catches common drift before commits.
- [ ] CI remains out of scope unless requested later.

## Phase 8 — README and Daily UX Cleanup

Goal: make the repo understandable from the front page.

Tasks:

- [ ] Update README with a daily command table:
  - `Create plan from ...`;
  - `verify this`;
  - `Do the security review`;
  - `make commits`;
  - `make release`;
  - `create PR`.
- [ ] Clarify source-of-truth layering:
  - standards;
  - guides;
  - skills;
  - prompts fallback;
  - templates;
  - generated project docs.
- [ ] Link to compatibility matrix and local dry-run scenario.
- [ ] Avoid duplicating long rules already in skills or workflow docs.

Acceptance:

- [ ] README is navigation-first.
- [ ] A user sees the natural-language UX immediately.

## Open Questions

Blocking before implementation:

- Decided: bootstrap should support both a script and prompt fallback.
- Decided: `.agents/skills/*` must stay exact synced copies of canonical `skills/*`; developer-specific extra skills belong at the agent/user level, not in the project.
- Decided: do not create a workshop/example app; use a local dry-run workflow doc instead.
- Decided: keep validation local-only for this plan.

Non-blocking:

- Decided: first compatibility matrix should include Hermes, Claude Code, OpenCode, Cursor, Codex-style agents, Gemini CLI, Antigravity, Pi, and generic CLI agents. Mark exact auto-load support as verified only when tested; otherwise document fallback prompt usage.
- Decided: release docs may show SemVer as a fictional example, but generated target-repo release policy fields remain `Needs confirmation` unless discovered from repository evidence.
- Decided: bootstrap scripts should be POSIX shell only.

## Human Approval Points

- [ ] Approve phase order.
- [x] Decide bootstrap interface: both script and prompt fallback.
- [x] Decide skill sync policy: project skills stay exact synced copies; extra developer skills are installed at agent/user level.
- [x] Decide example/workshop folder name: no workshop app; use local dry-run docs.
- [ ] Approve whether to start Phase 1 implementation.

## Recommended First Implementation Slice

Start with Phase 2 and Phase 3 together:

1. Add skill sync validation.
2. Add `verify-changes` skill.
3. Wire it into routers/templates/bootstrap.
4. Validate.
5. Commit.

Reason: this strengthens every existing workflow without requiring a big installer decision first.
