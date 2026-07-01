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

Phase 1: Inspect
1. Check git status and note existing modified/untracked files.
2. Inspect repository structure.
3. Read existing README files, docs, AGENTS.md/CLAUDE.md/Copilot instructions if present, package/build files, test config, CI config, Docker files, env examples, migration config, and obvious entrypoints.
4. Identify the actual stack, package manager, test runner, lint/typecheck/build commands, app start command, migration command, and generated folders.
5. Identify security-sensitive areas: auth, permissions, tenant/org scoping, payments, patient/health data, PII, secrets, infrastructure, destructive data jobs.
6. Map security-sensitive areas to OWASP Top 10 risks where applicable.
7. Identify unknowns that require human confirmation.

Phase 2: Decide mode
Use Existing Project Mode by default.
If the repository is nearly empty, use New Project Mode but still avoid invented facts.

Existing Project Mode:
- Merge with existing docs.
- Document discovered commands with source file references when possible.
- Keep current architecture conventions.
- Add warnings for risky legacy areas rather than refactoring them.
- Preserve compatibility and existing workflows.

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

## AI Agent Workflow

For every task:
1. Read AGENTS.md first.
2. Inspect current git status and relevant files.
3. Restate the requested outcome and acceptance criteria when the task is non-trivial.
4. Prefer small focused changes.
5. Run relevant verification.
6. Report files changed, commands run, results, risks, and remaining Needs confirmation items.

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

## OWASP Top 10 Review Areas

| ID | Risk | What to check in this project |
| --- | --- | --- |
| A01 | Broken Access Control | Server-side authorization, object ownership, tenant/org scoping, role checks, direct object references. |
| A02 | Cryptographic Failures | Sensitive data handling, transport security, secret storage, password/token storage, no weak/custom crypto. |
| A03 | Injection | Parameterized queries, safe command execution, escaped templates, input validation, no unsafe eval/interpolation. |
| A04 | Insecure Design | Abuse cases, workflow bypasses, rate limits, business-rule enforcement, secure failure behavior. |
| A05 | Security Misconfiguration | Secure defaults, disabled debug mode, safe CORS/headers, environment config, least privilege. |
| A06 | Vulnerable and Outdated Components | Dependency risk, known vulnerabilities, lockfiles, unsupported packages, trusted package sources. |
| A07 | Identification and Authentication Failures | Login/session flows, token expiry/rotation, cookie flags, password reset, account enumeration. |
| A08 | Software and Data Integrity Failures | CI/CD trust, artifact integrity, safe deserialization, migration integrity, dependency source trust. |
| A09 | Security Logging and Monitoring Failures | Audit logs, no secret/PII leakage, alertability, incident investigation evidence. |
| A10 | Server-Side Request Forgery | Outbound request allowlists, metadata/IP blocking, redirect handling, DNS rebinding, timeout/size limits. |

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
4. Keep generated content concise.

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
- commands discovered and their source files;
- commands actually run and actual results;
- remaining Needs confirmation items;
- risks or areas needing human review;
- whether any existing modified files were present before your changes.
```
