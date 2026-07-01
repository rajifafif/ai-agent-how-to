# AGENTS.md

This file gives instructions to AI coding agents working in this repository.

## Project Overview

Project name: [fill in] Purpose: [fill in] Main users: [fill in] Business domain: [fill
in]

## Tech Stack

Backend: [fill in] Frontend: [fill in] Database: [fill in] Queue/background jobs: [fill
in] Cache: [fill in] Auth: [fill in] Deployment: [fill in] Package manager: [fill in]

## Local Setup

Install dependencies:

```bash
[fill in]
```

Run app:

```bash
[fill in]
```

Run tests:

```bash
[fill in]
```

Run lint:

```bash
[fill in]
```

Run typecheck:

```bash
[fill in]
```

Run build:

```bash
[fill in]
```

Run migrations:

```bash
[fill in]
```

## Repository Structure

```text
[fill in key folders]
```

## Architecture Rules

- [fill in where business logic belongs]
- [fill in API layer conventions]
- [fill in database/migration conventions]
- [fill in frontend state management conventions]
- [fill in testing conventions]

## Coding Standards

- Follow existing project patterns before introducing new patterns.
- Keep changes small and focused.
- Do not introduce unrelated refactors.
- Do not hardcode secrets.
- Do not bypass validation.
- Do not bypass auth/permission checks.
- Prefer explicit, readable code over clever code.
- Add or update tests when behavior changes.

## Git Rules

- Do not commit unless the user explicitly asks.
- Do not push unless the user explicitly asks.
- Do not rewrite git history unless the user explicitly asks.
- Show changed files in the final response.

## Security Rules

- Never print secrets.
- Never modify real `.env` values unless explicitly instructed.
- Use `.env.example` for documenting required environment variables.
- Validate auth, permissions, and tenant/org scoping for protected data.
- Ask before making destructive data changes.

## Database Rules

- Use the project migration system.
- Do not edit historical migrations unless the project explicitly allows it.
- Include rollback/safety notes for schema changes.
- Consider existing production data.

## Testing Rules

Before finishing, run the relevant commands:

```bash
[fill in]
```

If a command cannot run, explain why and what should be run manually.

## AI Agent Workflow

Read this file first for every task. Then route the user's natural-language request to
the right workflow. Developers should not need to paste long prompts when the intent is
clear.

If this repository includes `docs/ai-workflows.md`, read it for workflow routing and
short-prompt behavior.

| User asks for | Follow |
| --- | --- |
| Make project AI Agent Ready | `prompts/bootstrap-existing-project.md` if present |
| Create plan from ..., plan larger work, break task into phases | `.agents/skills/plan-feature/SKILL.md` and `prompts/plan-feature.md` if present |
| Implement, build, add, or change behavior | Approved plan under `docs/plans/`, then repository instructions and implementation skill if present |
| Fix bug, debug, error, regression | `prompts/fix-bug.md` if present |
| Check current changes, verify, review diff | `checklists/pre-commit-checklist.md` if present |
| Security review, auth/permission review | `prompts/review-security.md` if present |
| Update docs | `standards/documentation-standard.md` if present |
| Prepare commit, commit rules, make commits | `prompts/create-commits.md` if present |
| Continue, resume, handoff | `prompts/continue-unfinished-work.md` if present |

For combined requests, run workflows in safe lifecycle order:

1. Inspect status and diff.
2. Verify changes.
3. Run security review when relevant.
4. Update documentation when needed.
5. Prepare commits or commit only when explicitly authorized.
6. Save handoff if work remains unfinished.

Commit intent rules:

- “prepare commit” means prepare-only mode. Do not commit.
- “commit rules” means apply commit safety checks. Do not commit unless commit is also
explicitly requested.
- “make commits”, “create commits”, or “commit this” means commit-authorized mode after
verification and safety checks.
- Commit permission does not imply push permission.
- Never use `git add .` blindly. Stage explicit files only.

For feature work:

1. Read this file.
2. Inspect existing patterns.
3. Restate requested behavior and acceptance criteria.
4. For non-trivial work, read `prompts/plan-feature.md` if present, then create
or update a persistent plan in `docs/plans/` using
`templates/IMPLEMENTATION_PLAN.template.md`.
5. Ask clarification if requirements are unclear.
6. Implement small focused changes.
7. Keep the plan updated as work progresses.
8. Add or update tests where practical.
9. Run relevant tests/lint/typecheck/build.
10. If unfinished, create or update a handoff in `docs/handoffs/` using
`templates/HANDOFF.template.md`.
11. Summarize changed files, commands run, risks, and commit status.

For debugging:

1. Reproduce or inspect the issue.
2. For non-trivial bugs, create or update a persistent investigation plan in
`docs/plans/`.
3. Identify root cause before changing code.
4. Make the minimal safe fix.
5. Add regression test if possible.
6. If unfinished, create or update a handoff in `docs/handoffs/`.
7. Run verification.

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
```
