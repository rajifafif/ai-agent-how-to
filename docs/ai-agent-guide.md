# AI Agent Usage Guide

This guide explains how the team should prepare projects for AI coding agents and how to
use agents safely in daily development.

The goal is not to let AI decide everything. The goal is to give the AI enough project
context, commands, rules, and safety boundaries so it can help faster without damaging
the codebase.

## Core Principles

1. Human owns final decision.
2. AI must follow project conventions.
3. AI must not commit unless explicitly asked.
4. AI must plan before large or risky changes.
5. AI must run relevant checks before saying done.
6. Human must review security, auth, permissions, database migrations, payments, data
   deletion, and production config.
7. Every project should have an `AGENTS.md` file at the repository root.

## What “AI Agent Ready” Means

A project is AI Agent Ready when an AI agent can quickly answer:

- What is this project?
- What tech stack does it use?
- How do I install dependencies?
- How do I run the app?
- How do I run tests?
- How do I run lint/typecheck/build?
- Where should business logic live?
- How are database migrations handled?
- How are auth, permissions, and tenant/org scoping handled?
- What files should not be touched?
- What are the rules before finishing work?

## Required Files

Recommended baseline:

```text
.
├── AGENTS.md
├── README.md
├── .env.example
├── docs/
│   ├── architecture.md
│   ├── ai-workflows.md
│   └── testing.md
└── .github/
    └── pull_request_template.md
```

Optional but recommended:

```text
docs/api-contracts.md
docs/database.md
docs/coding-standards.md
docs/deployment.md
Makefile
```

## First-Time Setup Prompt

Use this prompt when opening an existing project with an AI agent for the first time.

```text
Please make this project AI Agent Ready.

Tasks:
1. Inspect the repository structure, tech stack, package manager, test commands, lint commands, typecheck commands, migration system, and local setup flow.
2. Create or update AGENTS.md with clear instructions for AI coding agents.
3. Add docs/ai-workflows.md explaining how agents should work in this repo.
4. Add docs/architecture.md summarizing current architecture, important folders, and boundaries.
5. Add docs/testing.md with exact commands for test, lint, typecheck, build, and known caveats.
6. Check if README.md has enough local setup instructions. If missing, propose or add improvements.
7. Check .env.example exists and is safe. Do not expose secrets.
8. Do not commit changes.
9. Before editing, show your plan.
10. After editing, show changed files and commands verified.

Important rules:
- Read existing files before writing new docs.
- Follow existing project conventions.
- Do not invent architecture that does not exist.
- Prefer documentation based on actual files.
- If uncertain, mark as “Needs confirmation”.
```

## Review Prompt After Setup

Use this after AI creates the first setup docs.

```text
Review the AI Agent Ready setup.

Check:
1. Is AGENTS.md specific enough for this project?
2. Are setup/test/build/lint/typecheck commands accurate?
3. Are dangerous or unclear instructions removed?
4. Are architecture docs based on actual code?
5. Are security rules included?
6. Are git rules included, especially “do not commit unless asked”?
7. Are auth, permissions, database, and tenant/org conventions documented?
8. What should be improved before other team members use this?

Give me:
- Missing items
- Risky instructions
- Recommended edits
```

## Daily AI Workflow

### 1. Start Every Task

```text
Read AGENTS.md first.
Understand current code patterns.
Ask questions if requirements are unclear.
Create a short plan before editing.
Do not commit.
```

### 2. Feature Work

```text
Implement this feature: [describe feature].

Rules:
- Read AGENTS.md first.
- Follow existing patterns.
- Keep changes small and focused.
- Add or update tests where appropriate.
- Run relevant lint/typecheck/test/build commands.
- Do not commit.

Final response must include:
1. Summary
2. Files changed
3. Commands run
4. Risks or notes
```

### 3. Bug Fixing

```text
Fix this bug: [describe bug].

Use systematic debugging:
1. Reproduce or inspect the issue first.
2. Identify root cause.
3. Explain why it happens.
4. Make the minimal safe fix.
5. Add a regression test if possible.
6. Run verification commands.
7. Do not commit.
```

### 4. Refactor

```text
Refactor [area].

Rules:
- No behavior change unless explicitly stated.
- Keep public APIs compatible.
- Keep changes focused.
- Run tests before and after if practical.
- Explain risk.
- Do not commit.
```

### 5. Before Pull Request

```text
Review all current changes like a senior engineer.

Check:
- correctness
- security
- auth and permissions
- tenant/org scoping
- performance
- migration safety
- missing tests
- type errors
- lint errors
- docs updates
- unrelated changes

Do not commit.
Return prioritized findings and a final checklist.
```

## Skill / Mode Checklist

AI agents often work better when given a specific mode. Use these modes depending on
task type.

### Planning Mode

Use for big changes, ambiguous tasks, architecture changes, or multi-step work.

```text
Use planning mode.
Read the codebase and write an implementation plan first.
Do not edit files yet.
Break the work into small safe steps.
Include files likely to change, test plan, risks, and questions.
```

### Systematic Debugging Mode

Use for bugs, production issues, and unclear errors.

```text
Use systematic debugging.
Do not guess.
First reproduce or inspect the issue.
Find root cause.
Then propose the minimal fix.
Add a regression test if possible.
Run verification commands.
```

### Test-Driven Development Mode

Use for critical logic, permissions, billing, data transformation, and anything
high-risk.

```text
Use TDD.
Write or update tests first.
Confirm the failing test.
Then implement the minimal fix.
Then refactor if needed.
Run relevant tests.
```

### Code Review Mode

Use before merging or when reviewing AI-generated changes.

```text
Review this change like a senior engineer.
Check correctness, security, performance, maintainability, tests, and edge cases.
Do not rewrite unless necessary.
Return prioritized findings.
```

### Backend-First Mode

Use for fullstack features.

```text
Use backend-first approach.
Finalize API contract, backend validation, permissions, database changes, and tests before frontend.
Do not start UI until backend behavior is clear.
```

## JavaScript / TypeScript Project Checklist

Required:

- Lockfile exists: `package-lock.json`, `pnpm-lock.yaml`, `bun.lockb`, or `yarn.lock`.
- Package manager documented.
- `dev` script exists.
- `build` script exists.
- `test` script exists or testing gap documented.
- `lint` script exists or linting gap documented.
- `typecheck` script exists for TypeScript projects.
- `.env.example` exists.
- README setup works.
- AGENTS.md exists.

Recommended scripts:

```json
{
  "scripts": {
    "dev": "...",
    "build": "...",
    "test": "...",
    "lint": "...",
    "typecheck": "...",
    "format": "prettier --write .",
    "check": "npm run lint && npm run typecheck && npm run test"
  }
}
```

## React / Frontend Checklist

Document these choices clearly:

- Routing library
- State management
- Server state/data fetching
- Form library
- Validation library
- UI component system
- Styling approach
- Auth/session handling
- API client pattern
- Error handling pattern
- Loading/empty/error state rules

Recommended defaults when starting new React projects:

- Client state: Redux Toolkit only when global client state is needed.
- Server state REST: TanStack Query or SWR.
- Server state GraphQL: Apollo Client.
- Forms: React Hook Form.
- Validation: Zod.
- Type safety: TypeScript strict mode where practical.

### About Redux Toolkit / RTK

Do not blindly install RTK in every project.

Install RTK when the app has:

- shared client state across many screens
- auth/user/session state
- complex UI state
- offline/local state workflows
- non-trivial state transitions

Install example:

```bash
npm install @reduxjs/toolkit react-redux
```

or:

```bash
bun add @reduxjs/toolkit react-redux
```

If the project already uses Apollo, React Query, or SWR for server state, avoid
duplicating server state into Redux unless there is a clear reason.

## Backend Checklist

Document:

- framework
- API style: REST, GraphQL, RPC, etc.
- auth mechanism
- permission model
- tenant/org scoping model
- validation pattern
- error response format
- database migration tool
- seed data process
- background jobs/queues
- logging pattern
- test strategy

Before AI changes backend code, require:

- API contract understood
- validation rules clear
- permission checks identified
- migration safety reviewed
- tests updated

## Human Review Checklist

Humans must manually review AI changes involving:

- authentication
- authorization
- organization/tenant scoping
- payments
- invoices
- data deletion
- database migrations
- production config
- secrets
- dependency upgrades
- generated code
- background jobs
- external API integrations

## Definition of Done for AI Tasks

AI work is not done until:

- Code follows existing patterns.
- No unrelated files changed.
- Tests added or updated when behavior changes.
- Lint passes or failure is explained.
- Typecheck passes or failure is explained.
- Build passes for frontend changes or failure is explained.
- Database migration is safe and documented if changed.
- Auth/permission/tenant rules are verified if relevant.
- Documentation updated if behavior changed.
- Changed files are summarized.
- Commands run are listed.
- Risks are listed.

## Standard Final Response Format

Ask agents to finish with this format:

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

## Safety Rules

AI agents must not:

- Commit unless explicitly asked.
- Push unless explicitly asked.
- Rewrite git history unless explicitly asked.
- Delete large folders without confirmation.
- Modify production secrets.
- Print secrets into chat.
- Add unrelated refactors.
- Replace existing architecture without approval.
- Install new major dependencies without explaining why.
- Change database schema without migration and rollback/safety notes.

## Recommended Team Policy

1. Use AI for speed, not blind authority.
2. Every AI-generated PR must be human-reviewed.
3. Every project must maintain AGENTS.md.
4. Every new project should be made AI Agent Ready on day one.
5. Every risky AI change must be reviewed twice: once by AI review mode, once by human.
