# Bootstrap Existing Project Prompt

Use this self-contained prompt inside an existing application repository when the toolkit files are not available in that repository.

Copy the full text block below into the AI coding agent from the root of the target project.

```text
You are inside an existing software project. Your task is to make this repository AI-agent ready using only the instructions in this prompt.

Do not assume access to any external toolkit files, guides, standards, templates, or prompts.

Goal:
Create or update the minimum local documentation an AI coding agent needs to work safely in this existing repository.

Primary outputs:
- AGENTS.md
- README.md, only if missing or clearly incomplete
- docs/project-context.md
- docs/repository-readiness-checklist.md
- docs/testing.md, only if test/verification instructions are unclear in README or AGENTS.md
- docs/security-review.md, with OWASP Top 10 review guidance for future AI-agent work
- docs/plans/README.md, only if the repo has no obvious place for implementation plans
- docs/handoffs/README.md, only if the repo has no obvious place for unfinished-work handoffs

Hard rules:
- Inspect before writing.
- Preserve useful existing docs and instructions.
- Do not replace good project-specific docs with generic text.
- Do not invent commands, architecture, owners, environments, SLAs, KPIs, deployment details, approval roles, or contacts.
- Mark unknown facts exactly as: Needs confirmation
- Do not print or copy secrets.
- Do not modify real .env values.
- Do not commit or push unless explicitly asked.
- Keep docs practical and short.
- Prefer actual repository evidence over assumptions.
- If the AI agent supports skills, workflows, reusable prompts, memories, or built-in procedures, it must check and read task-relevant ones before editing.
- Do not assume every AI agent has the same skill system; write AGENTS.md in portable language such as "skills, workflows, reusable prompts, or built-in procedures".
- Check for duplicate, overlapping, stale, or superseded docs before creating new docs. Merge useful content into the canonical docs and prune/archive redundant docs when safe.

Phase 1: Inspect
1. Check git status and note existing modified/untracked files.
2. Inspect repository structure.
3. Read existing README files, docs, AGENTS.md/CLAUDE.md/Copilot instructions if present, package/build files, test config, CI config, Docker files, env examples, migration config, and obvious entrypoints.
4. Identify the actual stack, package manager, test runner, lint/typecheck/build commands, app start command, migration command, and generated folders.
5. Identify security-sensitive areas: auth, permissions, tenant/org scoping, payments, patient/health data, PII, secrets, infrastructure, destructive data jobs.
6. Map security-sensitive areas to OWASP Top 10 risks where applicable.
7. Identify unknowns that require human confirmation.
8. Identify whether the target repository already has workflow docs, agent skills, reusable prompts, coding standards, or task-specific checklists that future agents should read.
9. Identify duplicate, overlapping, stale, or superseded documentation that should be merged, linked, archived, or deleted.

Phase 2: Decide mode
Use Existing Project Mode by default.
If the repository is nearly empty, use New Project Mode but still avoid invented facts.

Existing Project Mode:
- Merge with existing docs.
- Document discovered commands with source file references when possible.
- Keep current architecture conventions.
- Add warnings for risky legacy areas rather than refactoring them.
- Preserve compatibility and existing workflows.
- Consolidate duplicate or overlapping docs into the new canonical docs when safe.
- Do not keep multiple conflicting sources of truth; link to the canonical doc instead.

New Project Mode:
- Create minimal starter docs.
- Keep unknown decisions marked Needs confirmation.
- Do not invent final architecture or deployment details.

AI-ready repository standard:
A repository is AI-agent ready when it has:
- clear project purpose and domain notes;
- local setup instructions;
- actual install/run/test/lint/typecheck/build commands or Needs confirmation markers;
- repository structure overview;
- coding and architecture conventions;
- testing and verification expectations;
- git commit/push rules;
- security and secret-handling rules;
- OWASP Top 10 review expectations for future changes;
- known risky areas;
- generated files and files to avoid editing;
- human-review boundaries;
- instructions to read task-relevant skills, workflows, reusable prompts, or built-in procedures when the AI agent supports them;
- a documentation map that identifies canonical docs and redundant/stale docs;
- a checklist showing what is ready and what still needs confirmation.

File: AGENTS.md
Create or update AGENTS.md with this structure, filling values from repository evidence and using Needs confirmation for unknowns:

# AGENTS.md

This file gives instructions to AI coding agents working in this repository.

## Project Overview

Project name: Needs confirmation
Purpose: Needs confirmation
Main users: Needs confirmation
Business domain: Needs confirmation

## Tech Stack

Backend: Needs confirmation
Frontend: Needs confirmation
Database: Needs confirmation
Queue/background jobs: Needs confirmation
Cache: Needs confirmation
Auth: Needs confirmation
Deployment: Needs confirmation
Package manager: Needs confirmation

## Local Setup

Install dependencies:

```bash
Needs confirmation
```

Run app:

```bash
Needs confirmation
```

Run tests:

```bash
Needs confirmation
```

Run lint:

```bash
Needs confirmation
```

Run typecheck:

```bash
Needs confirmation
```

Run build:

```bash
Needs confirmation
```

Run migrations:

```bash
Needs confirmation
```

Replace the command blocks above only when commands are discovered from repository files. If a command is inferred but not proven, keep Needs confirmation and explain the likely source in docs/repository-readiness-checklist.md.

## Repository Structure

```text
Needs confirmation
```

List only important folders and files. Keep this short.

## Architecture Rules

- Follow existing project patterns before introducing new patterns.
- Keep changes small and focused.
- Do not introduce unrelated refactors.
- Business logic location: Needs confirmation
- API/controller convention: Needs confirmation
- Database/migration convention: Needs confirmation
- Frontend state/UI convention: Needs confirmation
- Testing convention: Needs confirmation

## Coding Standards

- Prefer explicit, readable code over clever code.
- Match existing formatting and naming.
- Add or update tests when behavior changes.
- Do not hardcode secrets.
- Do not bypass validation.
- Do not bypass auth, permission, tenant, or ownership checks.
- Do not make destructive data changes without explicit approval.

## Instruction Priority

When instructions conflict, follow this order:

1. Explicit user instruction in the current task.
2. Safety, security, legal, and data-protection requirements.
3. This AGENTS.md file.
4. Repository-specific docs and discovered code patterns.
5. Task-relevant skills, workflows, reusable prompts, or built-in procedures.
6. General AI/model knowledge.

Do not use a generic skill, workflow, prompt, or model habit to override repository-specific evidence.
If the conflict affects security, data, deployment, or public behavior, stop and ask for confirmation.

## Git Rules

- Do not commit unless the user explicitly asks.
- Do not push unless the user explicitly asks.
- Do not rewrite git history unless the user explicitly asks.
- Before any authorized commit, show changed files and run relevant checks.
- Commit permission does not imply push permission.

## Security Rules

- Never print secrets.
- Never modify real .env values unless explicitly instructed.
- Use .env.example or documentation for required environment variables.
- Treat credentials, tokens, private keys, customer data, patient data, payment data, and production data as sensitive.
- Validate auth, permissions, and tenant/org scoping for protected data.
- Ask before running destructive commands, migrations on shared databases, deploys, or data repair jobs.

## Testing Rules

Before finishing a coding task, run the relevant available commands:

```bash
Needs confirmation
```

If a command cannot run, explain why and what should be run manually.

## Skill and Workflow Standards

Before starting a task, check whether the AI agent has any available skill, workflow, reusable prompt, or built-in procedure that matches the task.

Use relevant skills or workflows for:
- implementation work;
- debugging;
- security review;
- documentation updates;
- test creation;
- refactoring;
- database or migration work;
- deployment or infrastructure work;
- code review;
- commit preparation;
- handoff or resume tasks.

When a relevant skill, workflow, reusable prompt, or built-in procedure exists:
1. Read it before editing files.
2. Follow the standards and workflow embedded in it.
3. Prefer its specialized checklist over generic reasoning.
4. Keep the task bounded to the user's request and repository needs.
5. Mention in the final response which skills or workflows were used.

Use skills and workflows as standards and checklists, not as permission to make unrelated changes.
Do not expand task scope only because a skill mentions extra cleanup, refactoring, migration, security hardening, or documentation work.

If a skill or workflow appears outdated, incompatible with this repository, or contradicted by project evidence, do not follow it blindly. Note the mismatch in the final response and follow repository-specific evidence.

If no relevant skill or workflow exists, proceed using AGENTS.md and repository evidence.

## Task Routing

| Task type | Use |
| --- | --- |
| New feature / behavior change | Implementation workflow or feature skill |
| "Create plan from ...", "make a plan", "plan this feature", "create implementation plan", "break this down into tasks" | Planning Shortcut below |
| Bug / regression | Debugging workflow or bugfix skill |
| Security-sensitive change | Security review workflow before finishing |
| "Do the security review", "security review", "review security", "check OWASP", "review auth/permissions" | Security Review Shortcut below |
| Documentation update | Documentation workflow |
| Refactor | Refactor workflow with compatibility checks |
| Database/migration | Migration/database workflow; require human review for destructive changes |
| Tests | Testing workflow and existing project test conventions |
| "make commits", "commits", "create commits", "commit this" | Commit Shortcut below |
| "prepare commit", "commit rules" | Commit Shortcut in prepare-only mode; do not commit |
| "make release", "create release", "prepare release", "tag release" | Release Shortcut below |
| Unfinished work / resume | Handoff workflow |

## Commit Shortcut

When the user asks for commits in plain language, do not wait for a tool-specific command. Run the local commit workflow automatically.

Trigger phrases include:
- make commits
- commits
- create commits
- commit this
- commit current changes

Intent rules:
- `make commits`, `commits`, `create commits`, and `commit this` mean commit-authorized mode.
- `prepare commit`, `commit plan`, and `commit rules` mean prepare-only mode; do not commit.
- Commit permission does not imply push permission.
- Push requires explicit wording such as `push` or `push commits`.

Required source order:
1. Read `AGENTS.md`.
2. Read project commit guidance if present: `standards/commit-standard.md`, `docs/ai-workflows.md`, `docs/project-context.md`, and `docs/testing.md`.
3. If the agent supports skills, workflows, reusable prompts, slash commands, or built-in procedures, load the relevant commit workflow if present.
4. If `.agents/skills/create-commits/SKILL.md` exists, read it as the repository-local commit workflow.

Commit rules:
- Inspect `git status --short --branch`, the complete tracked diff, and untracked files before staging anything.
- Identify unrelated, generated, temporary, sensitive, credential, binary, or risky files.
- Stop and ask if commit boundaries are ambiguous or unrelated local changes would be mixed.
- Run relevant lightweight validation before committing when available.
- Group changes into logical commits by purpose.
- Generate commit titles and descriptions from actual changed files and diff evidence.
- Stage explicit files only. Never use `git add .` blindly.
- Do not push unless explicitly asked.

Commit output must include:
- Commit grouping rationale.
- Validation commands and actual results.
- Created commit hashes.
- Files excluded and why.
- Remaining uncommitted/untracked files.
- Reminder that nothing was pushed unless push was explicitly requested.

## Release Shortcut

When the user asks to make a release, prepare the release and changelog first, then confirm before tagging.

Trigger phrases include:
- make release
- create release
- prepare release
- release this
- tag release
- changelog for release

Intent rules:
- `prepare release` means prepare-only mode; no tag.
- `make release`, `create release`, and `release this` mean prepare release notes/changelog and ask confirmation before tagging.
- `tag release` may create a local tag only after confirming exact tag/version and changelog.
- `publish release`, `push tag`, or `create GitHub release` require separate explicit approval.

Required source order:
1. Read `AGENTS.md`.
2. Read release/version guidance if present: `docs/ai-workflows.md`, `docs/project-context.md`, `docs/release.md`, `CHANGELOG.md`, `.github/release.yml`, and package/version files.
3. If the agent supports skills, workflows, reusable prompts, slash commands, or built-in procedures, load the relevant release workflow if present.
4. If `.agents/skills/make-release/SKILL.md` exists, read it as the repository-local release workflow.

Release rules:
- Inspect `git status --short --branch`.
- Require a clean working tree before tagging or publishing.
- Identify the previous release from git tags, changelog, or release tooling.
- Inspect commits and relevant diffs since the previous release.
- Reuse the previous release note/changelog style when available.
- Generate clear changelog sections for Breaking Changes, Features, Fixes, Security, Performance, Documentation, and Chores/Internal.
- Propose the next version/tag from repository convention. If unclear, mark `Needs confirmation` and offer options.
- Ask for confirmation before creating any tag.
- Do not push tags or publish a release unless explicitly asked.

Release output must include:
- Previous release baseline.
- Proposed next tag/version.
- Draft changelog/release notes.
- Release risks and `Needs confirmation` items.
- Verification/release checks performed and actual results.
- Exact commands that would tag/publish after approval.
- Clear statement that no tag or publish was done unless explicitly confirmed.

## Planning Shortcut

When the user asks for a plan in plain language, do not wait for a tool-specific command. Run the local planning workflow automatically.

Trigger phrases include:
- Create plan from ...
- Make a plan for ...
- Plan this feature
- Create implementation plan
- Break this down into tasks
- Analyze this ticket/design/spec and plan it
- Plan before coding

Required source order:
1. Read `AGENTS.md`.
2. Read project context docs if present: `docs/project-context.md`, `docs/testing.md`, `docs/repository-readiness-checklist.md`, `docs/security-review.md`, and relevant module docs under `docs/`.
3. If the agent supports skills, workflows, reusable prompts, slash commands, or built-in procedures, load the relevant planning workflow if present.
4. If `.agents/skills/plan-feature/SKILL.md` exists, read it as the repository-local planning workflow.
5. If `.agents/skills/owasp-top-10/` exists and the plan touches auth, authorization, tenant scope, PII, payments, patient/health data, secrets, external integrations, file handling, dependencies, config, or production infrastructure, read the relevant OWASP references.
6. If toolkit folders such as `guides/`, `standards/`, `checklists/`, `templates/`, or `prompts/` exist, use their planning files only as supporting references after project-local docs.

Target selection:
- If the user provides a URL, ticket, pasted requirement, design note, PRD, screenshot, module name, or file path, treat that as the planning source.
- If the user does not provide a clear source, inspect repository context and current branch/status, then ask one concise clarification question.
- Do not invent requirements.

Planning rules:
- Inspect actual code, docs, tests, configs, and existing plans before writing the plan.
- Identify objective, scope, out-of-scope items, assumptions, dependencies, risks, unknowns, and acceptance criteria.
- Run an impact check for auth, permissions, tenant scope, data/migrations, APIs, UI/UX, integrations, rollout, tests, logging, security, and sensitive data.
- Ask the user for blocking details before finalizing the plan, or record unclear details in the plan under `Needs confirmation`.
- Split unclear details into blocking and non-blocking items.
- If unclear details affect behavior, security, data, APIs, rollout, verification, or acceptance criteria, mark the plan `Blocked - needs confirmation`.
- Save or update a durable plan under `docs/plans/` when repository convention allows it.
- Do not implement or run the plan until blocking questions are answered and the human explicitly approves the plan or names the phase to start.
- Mark missing evidence as `Needs confirmation` or `Blocked`.

Planning output must include:
- Plan path if a plan file was created or updated.
- Proposed plan summary.
- Acceptance criteria.
- Impact/risk summary.
- Affected files/modules.
- Verification strategy.
- Human decisions needed.
- Clear statement that implementation is waiting for approval unless the user explicitly asked to start a phase.

## Security Review Shortcut

When the user asks for a security review in plain language, do not wait for a tool-specific command. Run the local security review workflow automatically.

Trigger phrases include:
- Do the security review
- Security review
- Review security
- Check OWASP
- Review auth/permissions
- Review this before PR

Required source order:
1. Read `AGENTS.md`.
2. Read `docs/security-review.md`.
3. Read project context docs if present: `docs/project-context.md`, `docs/testing.md`, `docs/repository-readiness-checklist.md`, and relevant module docs under `docs/`.
4. If the agent supports skills, workflows, reusable prompts, slash commands, or built-in procedures, load the relevant security review workflow if present.
5. If `.agents/skills/review-security/SKILL.md` exists, read it as the repository-local security review workflow.
6. If `.agents/skills/owasp-top-10/` exists, read `.agents/skills/owasp-top-10/SKILL.md` and relevant files under `.agents/skills/owasp-top-10/references/`.
7. If toolkit folders such as `guides/`, `standards/`, `checklists/`, or `prompts/` exist, use their security review files only as supporting references after project-local docs.

Target selection:
- If the user names a PR, branch, module, design, or path, review that target.
- If the user does not name a target, inspect `git status` and review current uncommitted changes when present.
- If no uncommitted changes exist, compare the current branch to the likely base branch when practical.
- If no clear diff exists, ask whether to review a module, branch, PR, or design/spec.

Review rules:
- Inspect actual code, diff, module, or design before relying on summaries.
- Map findings to OWASP Top 10 2025 where relevant.
- Include auth, authorization, tenant/org scope, input handling, secrets, logging, dependencies, config, migrations, jobs, file handling, SSRF/outbound requests, and external integrations.
- Do not modify code unless explicitly asked.
- Do not claim full security assurance.
- Mark missing evidence as `Needs confirmation` or `Blocked`.

Security review output must include:
- Verdict: PASS, PASS WITH WARNINGS, FAIL, or BLOCKED.
- Scope reviewed.
- OWASP Top 10 2025 areas touched.
- Findings table with severity, OWASP area, evidence, risk, and recommendation.
- Human approval requirements.
- Checks performed and actual results.
- Checks not performed / missing references.
- Needs confirmation.

## Default Feature Workflow

For non-trivial feature work, use this lifecycle by default:

```text
Understand -> Plan -> Impact Check -> Confirm -> Task -> Implement -> Update -> Verify -> Review/Secure -> PR
```

Do not implement before the plan is clear and approved. The impact check must surface auth, permission, tenant scope, data/migration, API, UI/UX, integration, rollout, test, and security concerns before coding. If implementation changes the plan, update the plan before continuing and ask for renewed confirmation when behavior, data, security, APIs, rollout, or acceptance criteria change.

High-risk features require security review before implementation and again after the diff exists.

## Documentation Consolidation Rules

Before creating or updating docs, check for existing docs with the same purpose.

If duplicate or overlapping docs exist:
1. Preserve the most project-specific and accurate content.
2. Merge useful content into the canonical doc.
3. Replace redundant docs with a short link to the canonical doc, or archive/delete them only when safe.
4. Do not leave contradictory instructions in multiple places.
5. Record merged, archived, or deleted docs in the final response.

Canonical docs for AI-agent readiness:
- AGENTS.md: agent operating rules and workflow router.
- README.md: human-facing project navigation and setup summary.
- docs/project-context.md: domain, stack, structure, and risk context.
- docs/repository-readiness-checklist.md: readiness status, command sources, duplicate-doc findings, and open gaps.
- docs/security-review.md: security review guidance.
- docs/testing.md: testing and verification details, only when not clear elsewhere.

## AI Agent Workflow

For every task:
1. Read AGENTS.md first.
2. Check and read any task-relevant skills, workflows, reusable prompts, or built-in procedures if the AI agent supports them.
3. Inspect current git status and relevant files.
4. Restate the requested outcome and acceptance criteria when the task is non-trivial.
5. Prefer small focused changes.
6. Run relevant verification.
7. Report files changed, commands run, results, risks, skills/workflows used, documentation consolidation performed, and remaining Needs confirmation items.

For larger work:
1. Create or update a plan under docs/plans/.
2. Break work into phases.
3. Ask clarification for unclear scope, risky changes, or missing acceptance criteria.
4. Keep the plan updated.
5. If unfinished, create or update a handoff under docs/handoffs/.

For debugging:
1. Reproduce or inspect the issue first.
2. Identify root cause before changing code.
3. Make the minimal safe fix.
4. Add regression coverage when practical.
5. Run verification.

## Human Review Required

Ask for human confirmation before changing:
- security approvals;
- production deploy/release settings;
- SLA or KPI targets;
- escalation contacts;
- release approval roles;
- incident communication rules;
- organization-specific ownership;
- destructive data operations;
- authentication, authorization, tenant scoping, payment, patient/health data, or PII behavior.

## Final Response Format

```text
Summary:
- ...

Files changed:
- ...

Commands run:
- ...

Skills / workflows used:
- ...

Documentation merged / archived / deleted:
- ...

Risks / notes:
- ...

Needs confirmation:
- ...
```

File: docs/project-context.md
Create or update with this structure:

# Project Context

Project: Needs confirmation
Owner: Needs confirmation
Last reviewed: Needs confirmation

## Purpose

Needs confirmation

## Users and Domain

- Users: Needs confirmation
- Domain terms: Needs confirmation
- External systems: Needs confirmation

## Tech Stack

- Backend: Needs confirmation
- Frontend: Needs confirmation
- Database: Needs confirmation
- Infrastructure/deployment: Needs confirmation

## Important Repository Areas

- Needs confirmation

## Known Risk Areas

- Needs confirmation

## Generated or External Files

- Needs confirmation

## Open Questions

- Needs confirmation

File: docs/repository-readiness-checklist.md
Create or update with this structure:

# Repository Readiness Checklist

Repository: Needs confirmation
Reviewer: Needs confirmation
Date: Needs confirmation

## Required Files

- [ ] AGENTS.md exists.
- [ ] README.md exists and explains purpose/setup, or gaps are listed.
- [ ] docs/project-context.md exists.
- [ ] Testing/verification instructions exist or are marked Needs confirmation.
- [ ] Environment docs exist or are marked Needs confirmation.
- [ ] Security-sensitive areas are listed.
- [ ] Unknown facts remain marked Needs confirmation.

## Documentation Consolidation

| Existing doc | Overlaps with | Action | Notes |
| --- | --- | --- | --- |
| Needs confirmation | Needs confirmation | Keep / Merge / Link / Archive / Delete / Needs confirmation | Needs confirmation |

## Commands

| Command type | Actual command | Source | Verified? |
| --- | --- | --- | --- |
| Install | Needs confirmation | Needs confirmation | Yes / No |
| Development | Needs confirmation | Needs confirmation | Yes / No |
| Test | Needs confirmation | Needs confirmation | Yes / No |
| Lint | Needs confirmation | Needs confirmation | Yes / No |
| Type-check | Needs confirmation | Needs confirmation | Yes / No |
| Build | Needs confirmation | Needs confirmation | Yes / No |
| Migration | Needs confirmation | Needs confirmation | Yes / No / N/A |
| Seed | Needs confirmation | Needs confirmation | Yes / No / N/A |

## Safety Rules

- [ ] Git commit/push rules are explicit.
- [ ] Sensitive files are listed.
- [ ] Generated files are listed.
- [ ] Dependency rules are documented.
- [ ] Security-sensitive approval boundaries are documented.
- [ ] Unknown facts remain marked Needs confirmation.

## Review Decision

Decision: Ready / Ready with gaps / Not ready
Required follow-up:
- Needs confirmation

File: docs/security-review.md
Create or update with this structure:

# Security Review Guide

Use this guide for future AI-agent security review in this repository.

## How to Run a Security Review

1. Read AGENTS.md first.
2. Read this file before reviewing code.
3. If `.agents/skills/owasp-top-10/` exists, read `.agents/skills/owasp-top-10/SKILL.md` and the relevant files under `.agents/skills/owasp-top-10/references/`.
4. Inspect the actual PR, diff, current changes, module, or design before relying on summaries.
5. Review the touched code paths against the OWASP Top 10 2025 areas below.
6. Report findings with severity, evidence, remediation, checks run, and required human approval.

## OWASP Top 10 2025 Review Areas

| ID | Risk | What to check in this project |
| --- | --- | --- |
| A01:2025 | Broken Access Control | Server-side authorization, object ownership, tenant/org scoping, role checks, direct object references, deny-by-default behavior. |
| A02:2025 | Security Misconfiguration | Secure defaults, disabled debug mode, safe CORS/headers, environment config, network exposure, least privilege. |
| A03:2025 | Software Supply Chain Failures | Dependency risk, known vulnerabilities, lockfiles, trusted package sources, CI/CD secrets, build scripts, artifact provenance. |
| A04:2025 | Cryptographic Failures | Sensitive data handling, transport security, secret storage, password/token storage, key rotation, no weak/custom crypto. |
| A05:2025 | Injection | Parameterized queries, safe command execution, escaped templates, context-aware output encoding, input validation, no unsafe eval/interpolation. |
| A06:2025 | Insecure Design | Abuse cases, trust boundaries, workflow bypasses, rate limits, business-rule enforcement, secure failure behavior. |
| A07:2025 | Authentication Failures | Login/session flows, token expiry/rotation, cookie flags, password reset, account enumeration, brute-force protection. |
| A08:2025 | Software or Data Integrity Failures | CI/CD trust, artifact integrity, safe deserialization, migration integrity, dependency source trust, trusted update paths. |
| A09:2025 | Security Logging and Alerting Failures | Audit logs, no secret/PII leakage, alertability, log retention needs, incident investigation evidence. |
| A10:2025 | Mishandling of Exceptional Conditions | Safe error handling, fail-closed behavior, timeouts, bounded retries, idempotency, partial failure handling, race conditions. |

Note: SSRF is still required review coverage. Check outbound request allowlists, metadata/IP blocking, redirect handling, DNS rebinding, timeout/size limits, and URL parser confusion under A05, A06, and external integration review.

## Project-Specific Security Notes

- Auth and authorization model: Needs confirmation
- Sensitive data types: Needs confirmation
- Tenant/org scoping rules: Needs confirmation
- External integrations and webhooks: Needs confirmation
- File upload/download rules: Needs confirmation
- Dependency/security scan command: Needs confirmation

## Human Review Required

Require human review before changing authentication, authorization, tenant scoping, cryptography, payment flows, patient/health data, PII handling, production infrastructure, secrets, or destructive data operations.

File: docs/testing.md
Create only if testing instructions are missing or unclear elsewhere.

# Testing and Verification

## Available Commands

| Purpose | Command | Source | Notes |
| --- | --- | --- | --- |
| Test | Needs confirmation | Needs confirmation | Needs confirmation |
| Lint | Needs confirmation | Needs confirmation | Needs confirmation |
| Type-check | Needs confirmation | Needs confirmation | Needs confirmation |
| Build | Needs confirmation | Needs confirmation | Needs confirmation |

## Expectations

- Run the smallest relevant test first when debugging.
- Run broader checks before finishing larger changes.
- If a command cannot run locally, document why and what should run in CI/manual review.

File: README.md
If README.md is missing or clearly incomplete, create or patch a minimal README with:
- project name;
- purpose;
- setup commands or Needs confirmation;
- test/lint/build commands or Needs confirmation;
- links to AGENTS.md, docs/project-context.md, docs/security-review.md, and docs/repository-readiness-checklist.md.

Do not overwrite a useful README. Patch only missing AI-agent-readiness links if needed.

Phase 3: Write files
1. Create missing docs directories only as needed.
2. Patch existing files carefully.
3. Preserve existing project-specific guidance.
4. Merge duplicate or overlapping docs into canonical docs when safe.
5. Link, archive, or delete redundant docs only when the action is clearly safe and does not remove useful project-specific information.
6. Keep generated content concise.

Phase 4: Validate
Run safe lightweight commands that are available and appropriate, for example:
- git status --short
- markdown/link checks if present
- package-manager test/lint/build scripts if safe and not destructive

Do not run destructive commands.
Do not run deploys.
Do not run production migrations.
Do not install new tooling just to validate docs unless asked.

Phase 5: Final response
Report exactly:
- files created/updated;
- duplicate/overlapping docs found and whether they were merged, linked, archived, deleted, or left unchanged;
- commands discovered and their source files;
- commands actually run and actual results;
- skills/workflows used;
- remaining Needs confirmation items;
- risks or areas needing human review;
- whether any existing modified files were present before your changes.
```

