# Plan Feature Prompt

Use this prompt before implementing non-trivial feature work, or when a developer says
`Create plan from ...`, `Make a plan for ...`, `Plan this feature`, or similar.

This prompt is portable. It must work in repositories that were initialized with
`prompts/bootstrap-existing-project.md`, where the target project may only have
`AGENTS.md`, `docs/`, and copied `.agents/skills/` instead of this toolkit's
`guides/`, `standards/`, `checklists/`, and `templates/` folders.

```text
Read AGENTS.md first.

Objective: create a practical implementation plan from this source: [ticket/request/PRD/design/module/bug report/discussion].

Repository-aware source order:
1. Read AGENTS.md.
2. Read project context docs if they exist: docs/project-context.md, docs/testing.md, docs/repository-readiness-checklist.md, docs/security-review.md, and relevant docs under docs/.
3. If .agents/skills/plan-feature/SKILL.md exists, read it as the repository-local planning workflow.
4. If .agents/skills/owasp-top-10/ exists and the plan touches auth, authorization, tenant scope, PII, payments, patient/health data, secrets, external integrations, file handling, dependencies, config, or production infrastructure, read relevant OWASP references.
5. If local toolkit files exist, use them as supporting references only after project-local docs:
   - guides/feature-development-workflow.md
   - checklists/pre-implementation-checklist.md
   - templates/CHANGE_PLAN.template.md
   - templates/IMPLEMENTATION_PLAN.template.md
6. If a referenced file/folder is missing, do not block automatically. Continue with available project docs and mark the missing reference under Needs confirmation or Checks not performed.

Planning target selection:
- For a ticket/request/PRD/design/discussion: inspect the provided source and any linked/referenced files.
- For a current module: inspect module entrypoints, routes/controllers/handlers, models, services, jobs, configs, tests, and docs.
- For current uncommitted work: inspect git status and git diff to understand context, but do not convert this into implementation unless asked.
- If the planning source is unclear, ask one concise clarification question before writing the plan.

Process:
1. Inspect relevant code, docs, tests, configs, and existing plans before writing the plan.
2. Identify objective, scope, out-of-scope items, assumptions, dependencies, risks, unknowns, and acceptance criteria.
3. Inspect likely affected code paths enough to name real files/modules and existing project patterns.
4. Run an impact check before confirmation:
   - auth/authentication
   - authorization/permissions
   - tenant/org scope
   - data model and migrations
   - API contracts
   - UI/UX
   - integrations/webhooks/queues/jobs
   - rollout/config/feature flags
   - tests and verification
   - logging/monitoring
   - security and sensitive data
5. Create or update a durable plan under docs/plans/ when repository convention allows it.
6. Use an existing implementation plan template if present; otherwise include title, source request, objective, scope, affected files/modules, impact check, phases, detailed tasks, acceptance criteria, verification, security notes, rollback/release notes if relevant, open questions/Needs confirmation split into blocking and non-blocking, recommended questions to ask the user, and status.
7. For unclear details, either ask the user before finalizing the plan or put them in the plan under `Needs confirmation`. Split them into blocking and non-blocking items.
8. If unclear details affect behavior, security, data, APIs, rollout, verification, or acceptance criteria, mark the plan `Blocked - needs confirmation`.
9. Do not implement or run the plan until blocking questions are answered and the human explicitly approves the plan or names the phase to start.

Constraints:
- Do not modify implementation code during plan-only work.
- Do not invent requirements, commands, architecture, owners, deadlines, or acceptance criteria.
- Do not print secrets, tokens, credentials, private keys, production data, patient data, or unnecessary PII.
- Mark uncertain facts exactly as `Needs confirmation`.

Output:
- Plan path if a plan file was created or updated.
- Proposed plan summary.
- Acceptance criteria.
- Impact/risk summary.
- Affected files/modules.
- Verification strategy.
- Human decisions needed.
- Statement that implementation is waiting for approval. If any blocking detail is unclear, state that the plan must not be run yet.
```

Detailed legacy prompt: `PLANNING_LOOP_PROMPT.md`.
