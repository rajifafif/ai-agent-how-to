# AGENTS.md

This file gives instructions to AI coding agents working in this repository.

## Project Overview

Project name: [fill in]
Purpose: [fill in]
Main users: [fill in]
Business domain: [fill in]

## Tech Stack

Backend: [fill in]
Frontend: [fill in]
Database: [fill in]
Queue/background jobs: [fill in]
Cache: [fill in]
Auth: [fill in]
Deployment: [fill in]
Package manager: [fill in]

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

For feature work:

1. Read this file.
2. Inspect existing patterns.
3. Write a short plan for non-trivial work.
4. Ask clarification if requirements are unclear.
5. Implement small focused changes.
6. Run relevant tests/lint/typecheck/build.
7. Summarize changed files, commands run, and risks.

For debugging:

1. Reproduce or inspect the issue.
2. Identify root cause before changing code.
3. Make the minimal safe fix.
4. Add regression test if possible.
5. Run verification.

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
