---
name: plan-feature
description: Create a practical implementation plan from a request, issue, PRD, ticket, design, module, bug report, or discussion before modifying code.
---

# Plan Feature

Use when the user says:
- Create plan from ...
- Make a plan for ...
- Plan this feature
- Create implementation plan
- Break this down into tasks
- Analyze this ticket/design/spec and plan it
- Plan before coding

## Required Source Order

1. Read `AGENTS.md`.
2. Read project context docs if present:
   - `docs/project-context.md`
   - `docs/repository-readiness-checklist.md`
   - `docs/testing.md`
   - `docs/security-review.md`
   - relevant module docs under `docs/`
3. If the agent supports skills, workflows, reusable prompts, slash commands, or built-in procedures, load the relevant planning workflow if present.
4. If `.agents/skills/plan-feature/SKILL.md` exists, use it as the repository-local planning workflow.
5. If `.agents/skills/owasp-top-10/` exists and the plan touches security-sensitive areas, read the relevant OWASP skill references.
6. If toolkit folders such as `guides/`, `standards/`, `checklists/`, `templates/`, or `prompts/` exist, use their planning files only as supporting references after project-local docs.

## Planning Target Detection

If the user provides a URL, ticket, pasted requirement, design note, PRD, screenshot, module name, or file path, treat that as the planning source.

If the user says only `Create plan` or the target is unclear:
1. Inspect repository context and current branch name.
2. Check `git status` for in-progress work.
3. Ask one concise clarification question for the planning source and desired output.
4. Do not invent requirements.

## Workflow

1. Inspect the planning source and relevant repository evidence before writing the plan.
2. Inspect likely affected code paths enough to identify real files, modules, patterns, commands, and risks.
3. Identify objective, scope, out-of-scope items, assumptions, dependencies, unknowns, and acceptance criteria.
4. Run an impact check:
   - auth/authentication
   - authorization/permissions
   - tenant/org scope
   - data model and migrations
   - API contracts
   - UI/UX
   - integrations/webhooks/queues/jobs
   - rollout/config/feature flags
   - testing and verification
   - logging/monitoring
   - security and sensitive data
5. Ask or mark unknown decisions that affect behavior, data, security, APIs, rollout, or acceptance criteria.
6. Save or update a durable plan under `docs/plans/` when the repository convention allows it.
7. Do not implement until the human approves the plan or names the phase to start.

## Plan File Guidance

Prefer `docs/plans/<short-kebab-topic>.md`.

If an implementation plan template exists, use it. Otherwise include:

- Title
- Source request / source artifact
- Objective
- Scope
- Out of scope
- Current repo evidence inspected
- Affected files/modules
- Impact check
- Implementation phases
- Detailed tasks
- Acceptance criteria
- Verification strategy
- Security review notes
- Rollback / release notes if relevant
- Open questions / Needs confirmation
- Status

## Expected Output

- Plan path if a plan file was created or updated.
- Short summary of the proposed approach.
- Impact/risk summary.
- Key affected files/modules.
- Verification strategy.
- Human decisions needed.
- Clear statement: implementation is waiting for approval unless the user explicitly asked to start a phase.

## Human Confirmation Required

Ask for confirmation before implementation when any of these are unclear or changing:
- behavior or acceptance criteria
- API contract
- data model or migration
- auth, authorization, tenant/org scope
- payments, patient/health data, PII, credentials, production data
- rollout, release, or destructive operation

## Pitfalls

- Do not implement during plan-only work.
- Do not invent project commands, architecture, owners, deadlines, or acceptance criteria.
- Do not create giant speculative plans without inspecting the codebase.
- Do not expose secrets or personal data.
- Mark unknowns exactly as `Needs confirmation`.
