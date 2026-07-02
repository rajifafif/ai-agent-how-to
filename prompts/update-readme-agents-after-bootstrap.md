# Update README and AGENTS After Bootstrap Prompt

Use this prompt inside a target project after running:

```sh
scripts/bootstrap-agent-ready.sh --apply --target /path/to/project
```

This prompt is intentionally self-contained. Do not assume the target project has access to this toolkit or to `prompts/bootstrap-existing-project.md` after the bootstrap script runs.

Preferred invocation from the target repository:

```text
Read AGENTS.md first. Use the full prompt from prompts/update-readme-agents-after-bootstrap.md in the AI-agent toolkit, then update this project's README.md and AGENTS.md. Do not commit.
```

Fallback: copy the full text block below into the AI coding agent from the root of the target project.

## Full Standard Prompt

```text
Read AGENTS.md first if it exists.

This repository was just bootstrapped with the AI-agent-ready toolkit. Update README.md and AGENTS.md so they become the standard project-local operating docs for AI-assisted development.

Important context:
- Do not assume this target project has access to the original toolkit repository.
- Do not assume prompts/bootstrap-existing-project.md exists in this target project.
- This prompt contains the required standard guide content. Use it as the reference for README.md and AGENTS.md.
- Keep README.md navigation-first.
- Keep AGENTS.md concise but complete enough to guide daily AI-agent work.
- Put long project details in docs/ when appropriate and link to them from AGENTS.md.

Hard rules:
- Inspect before editing.
- Preserve useful existing project instructions.
- Do not replace good project-specific docs with generic text.
- Do not duplicate long rules across README.md, AGENTS.md, and docs/.
- Do not invent commands, architecture, owners, environments, SLAs, KPIs, deployment details, approval roles, CI, security approvers, or contacts.
- Mark unknown project-specific facts exactly as: Needs confirmation
- Keep examples fictional or clearly labelled.
- Never print secrets.
- Never modify real .env values unless explicitly instructed.
- Do not commit or push unless explicitly asked.

Inspection required:
1. Check git status and note existing modified/untracked files.
2. Inspect repository structure.
3. Read existing README.md, AGENTS.md, docs/, prompts/, templates/, package/build/test config, CI config, Docker files, env examples, migration config, and obvious entrypoints when present.
4. Identify real stack, package manager, install/run/test/lint/typecheck/build commands, migration command, generated folders, and files agents should avoid editing.
5. Identify security-sensitive areas: auth, permissions, tenant/org scoping, payments, patient/health data, PII, secrets, infrastructure, destructive jobs, production data, and external integrations.
6. Identify duplicate, overlapping, stale, or superseded root documentation.
7. Identify unknowns requiring human confirmation.

README.md requirements:
- Explain what this project is, based on repository evidence.
- Show quick start / setup / run / test commands only when discovered from files.
- Add or update an "AI Agent Usage" section.
- Link to AGENTS.md and important project docs.
- Include short daily copy-paste prompts such as:
  - Read AGENTS.md first. Plan this feature: [feature].
  - Read AGENTS.md first. Implement the approved plan in docs/plans/[file].
  - Read AGENTS.md first. Fix this bug: [bug].
  - Read AGENTS.md first. Review current changes for security and correctness. Do not modify code.
  - Read AGENTS.md first. Prepare commits for the completed work. Do not push.
- Do not make README.md the full rulebook. Link to AGENTS.md and docs/ instead.

AGENTS.md requirements:
Create or update AGENTS.md as the project-local source of truth for AI coding agents. It must include these sections or equivalent concise sections.

1. Project Overview
- Project name: Needs confirmation unless clear from repository evidence.
- Purpose.
- Main users.
- Business domain.
- Key constraints or compatibility requirements.

2. Tech Stack
Document only discovered facts. Use Needs confirmation for unknowns.
- Backend.
- Frontend.
- Database.
- Queue/background jobs.
- Cache.
- Auth.
- Deployment.
- Package manager.

3. Local Setup and Validation Commands
List only commands discovered from repository files. Include source hints when useful.
- Install dependencies.
- Run app.
- Run tests.
- Run lint.
- Run typecheck.
- Run build.
- Run migrations.
If a command is likely but not proven, keep Needs confirmation and explain the uncertainty.

4. Repository Structure
List only important folders/files. Keep short.

5. Architecture Rules
Include these standards and adapt with project-specific facts:
- Follow existing project patterns before introducing new patterns.
- Keep changes small and focused.
- Do not introduce unrelated refactors.
- Business logic location: Needs confirmation unless discovered.
- API/controller convention: Needs confirmation unless discovered.
- Database/migration convention: Needs confirmation unless discovered.
- Frontend state/UI convention: Needs confirmation unless discovered.
- Testing convention: Needs confirmation unless discovered.

6. Coding Standards
Include these standards:
- Prefer explicit, readable code over clever code.
- Match existing formatting and naming.
- Add or update tests when behavior changes.
- Do not hardcode secrets.
- Do not bypass validation.
- Do not bypass auth, permission, tenant, or ownership checks.
- Do not make destructive data changes without explicit approval.

7. Instruction Priority
Include this priority order:
1. Explicit user instruction in the current task.
2. Safety, security, legal, and data-protection requirements.
3. This AGENTS.md file.
4. Repository-specific docs and discovered code patterns.
5. Task-relevant skills, workflows, reusable prompts, or built-in procedures.
6. General AI/model knowledge.

Also include:
- Do not use a generic skill, workflow, prompt, or model habit to override repository-specific evidence.
- If a conflict affects security, data, deployment, or public behavior, stop and ask for confirmation.

8. Git Rules
Include these rules:
- Do not commit unless the user explicitly asks.
- Do not push unless the user explicitly asks.
- Do not rewrite git history unless the user explicitly asks.
- Before any authorized commit, show changed files and run relevant checks.
- Commit permission does not imply push permission.
- Stage explicit files only. Never use git add . blindly.
- Stop and ask if commit boundaries are ambiguous or unrelated local changes would be mixed.

9. Security Rules
Include these rules:
- Never print secrets.
- Never modify real .env values unless explicitly instructed.
- Use .env.example or documentation for required environment variables.
- Treat credentials, tokens, private keys, customer data, patient data, payment data, and production data as sensitive.
- Validate auth, permissions, and tenant/org scoping for protected data.
- Ask before running destructive commands, migrations on shared databases, deploys, or data repair jobs.
- For risky features touching auth, permissions, tenant scope, migrations, payments, patient data, PII, production data, or external integrations, run impact/security review during planning and again after the diff.

10. Testing Rules
Include these rules:
- Before finishing a coding task, run the relevant available checks discovered for this repo.
- If tests/build/lint cannot run, explain why and what should be run manually.
- Do not claim verification succeeded without real command output.
- For docs-only changes, run available docs/Markdown validation if present.

11. Skill and Workflow Standards
Include portable wording:
- Before starting a task, check whether the AI agent has any available skill, workflow, reusable prompt, slash command, or built-in procedure that matches the task.
- Read relevant task workflows before editing.
- Use skills/workflows as standards and checklists, not permission to expand scope.
- If a workflow conflicts with project evidence, follow project evidence and report the mismatch.

12. Task Routing
Include a compact routing table like:
- New feature / behavior change -> plan-first implementation workflow.
- "Create plan from ...", "make a plan", "plan this feature", "create implementation plan", "break this down into tasks" -> Planning Shortcut.
- Bug / regression -> debugging or bugfix workflow.
- Security review / auth / permissions / OWASP -> Security Review Shortcut.
- Documentation update -> documentation workflow.
- Refactor -> refactor workflow with compatibility checks.
- Database/migration -> migration/database workflow; require human review for destructive changes.
- Tests -> testing workflow and existing project test conventions.
- "make commits", "commits", "create commits", "commit this" -> Commit Shortcut.
- "prepare commit", "commit rules" -> Commit Shortcut in prepare-only mode; do not commit.
- "make release", "create release", "prepare release", "tag release" -> Release Shortcut.
- "create PR", "create pull request", "open PR", "make PR" -> Pull Request Shortcut.
- Unfinished work / resume -> handoff workflow.

13. Feature Development Lifecycle
Include this lifecycle for non-trivial feature work:
Understand -> Plan -> Impact Check -> Confirm -> Task -> Implement -> Update -> Verify -> Review/Secure -> PR

Rules:
- Do not implement non-trivial features before the plan is clear and approved.
- Impact check must cover auth, permissions, tenant scope, data/migrations, API, UI/UX, integrations, rollout, tests, and security.
- If implementation changes behavior, data, security, APIs, rollout, or acceptance criteria, update the plan and ask for renewed confirmation before continuing.
- PR creation requires explicit authorization.

14. Planning Shortcut
Include:
- For planning-only requests, inspect enough code/docs to make a useful plan, but do not implement.
- Create or update a durable plan under docs/plans/ when project convention allows it.
- Mark unclear behavior, data, security, API, rollout, verification, or acceptance criteria as Needs confirmation.
- If blocking uncertainty exists, mark the plan blocked and wait for approval/answers.

15. Commit Shortcut
Include:
Trigger phrases:
- make commits
- commits
- create commits
- commit this
- commit current changes

Intent rules:
- make commits / commits / create commits / commit this = commit-authorized mode.
- prepare commit / commit plan / commit rules = prepare-only mode; do not commit.
- Commit permission does not imply push permission.
- Push requires explicit wording such as push or push commits.

Commit workflow:
- Inspect git status --short --branch, complete tracked diff, and untracked files before staging.
- Identify unrelated, generated, temporary, sensitive, credential, binary, or risky files.
- Run relevant lightweight validation before committing when available.
- Group changes into logical commits by purpose.
- Generate commit titles/descriptions from actual diff evidence.
- Stage explicit files only. Never use git add . blindly.
- Do not push unless explicitly asked.

Commit output must include validation results, commit hashes, excluded files, remaining changes, and whether anything was pushed.

16. Release Shortcut
Include concise rules:
- prepare release = prepare-only mode; no tag.
- make/create release = prepare changelog/version proposal, then ask before tagging.
- tag release = confirm exact tag/version, target commit, changelog, version-file changes, and tag style before creating a local tag.
- publish release / push tag / create GitHub release requires separate explicit approval.

17. Pull Request Shortcut
Include concise rules:
- prepare PR / draft PR body / PR description = prepare-only mode; do not push or create PR.
- create PR / open PR / make PR = PR-authorized mode only after branch, remote, auth, base branch, status, diff, and commits are checked.
- PR creation does not imply merge permission.
- Reviewers, labels, assignees, projects, milestones, or auto-merge require explicit authorization unless repo convention requires it.

18. Human Review Required
Require human confirmation before:
- security approvals;
- SLA or KPI targets;
- escalation contacts;
- release approval roles;
- incident communication rules;
- organization-specific ownership;
- destructive database changes;
- production deploys or production data changes;
- auth/permission model changes;
- payment, patient/health, PII, or tenant-scope behavior changes;
- public API contract changes;
- dependency or infrastructure changes with security impact.

19. Documentation Map
List canonical docs for this project. At minimum include README.md and AGENTS.md. Include docs/ files that exist. Mark missing useful docs as Needs confirmation instead of inventing them.

20. Generated Files and Do-Not-Edit Areas
Document discovered generated folders, build outputs, vendored dependencies, lockfiles, migrations, or files requiring care. Use Needs confirmation when unknown.

21. Final Response Requirements for Agents
Require agents to report:
- summary;
- files changed;
- commands run and actual results;
- tests/checks not run and why;
- risks or Needs confirmation items;
- whether commits or pushes were performed.

Docs cleanup rules:
- If root docs are duplicated or stale, either link them from README.md, move content into docs/, or mark cleanup recommendations.
- Keep GitHub/community files at repository root when relevant: CODE_OF_CONDUCT.md, SECURITY.md, SUPPORT.md, CONTRIBUTING.md, and PR templates.
- Do not delete risky community files unless clearly empty/stale and safe.
- Do not leave contradictory PR/security/testing instructions.

Verification before finishing:
1. Review the diff.
2. Check relative Markdown links in changed files when practical.
3. Run available docs/Markdown validation if present.
4. Run relevant lightweight project checks only if safe and available.
5. Check for accidental secrets or real credentials in changed docs.
6. Do not commit.

Final response must include:
- summary;
- changed files;
- validation commands and actual output;
- remaining Needs confirmation items;
- docs cleanup recommendations, if any;
- whether anything was not changed and why;
- confirmation that no commit/push was made.
```
