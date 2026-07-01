# Feature Development Workflow

Use this guide for non-trivial feature work by developers or AI agents.

```text
Understand -> Plan -> Impact Check -> Confirm -> Task -> Implement -> Update -> Verify -> Review/Secure -> PR
```

Do not jump straight to code unless the change is tiny, low-risk, and clearly specified.

## 1. Understand the Request

Start by inspecting the repository and the requested behavior.

Check:
- current branch and local changes;
- related code paths, tests, docs, routes, schemas, migrations, and configs;
- existing plans under `docs/plans/`;
- relevant prompts, skills, checklists, or project instructions;
- security-sensitive areas such as auth, permissions, tenant scope, PII, payments, production data, migrations, and integrations.

Do not invent requirements. Mark unknowns as `Needs confirmation`.

## 2. Make the Plan First

For every non-trivial feature, create or update a plan before implementation.

Preferred location:

```text
docs/plans/<feature-name>.md
```

Use `templates/CHANGE_PLAN.template.md` or `templates/IMPLEMENTATION_PLAN.template.md` when available.

The plan should include:
- goal and user-visible outcome;
- in scope;
- out of scope;
- affected files/modules;
- data model or migration impact;
- API/contract impact;
- UI/UX impact, if any;
- security and permission impact;
- compatibility or rollout risks;
- test and verification strategy;
- acceptance criteria;
- open questions;
- implementation phases.

## 3. Run an Impact Check Before Confirmation

Before asking for approval, identify the expected impact of the plan.

Check:
- auth, authorization, ownership, and tenant/org scope;
- database schema, migrations, seeders, and data repair jobs;
- API request/response contracts and backward compatibility;
- UI/UX behavior and accessibility;
- sensitive data such as PII, patient data, payment data, credentials, and production data;
- external integrations, webhooks, queues, cron jobs, and background workers;
- rollout, feature flags, config, deployment, and rollback;
- tests, fixtures, mocks, and QA handover needs.

If the feature touches auth, permissions, tenant scope, migrations, payments, patient data, PII, credentials, integrations, or production data, security review is required before and after implementation.

Record the impact check in the plan so the human can approve the design with the risks visible.

## 4. Ask for Confirmation Before Coding

Before implementation, ask concise confirmation questions for anything that affects:
- behavior or acceptance criteria;
- API request/response contracts;
- database schema or migrations;
- auth, authorization, ownership, or tenant scope;
- sensitive data handling;
- external integrations or webhooks;
- rollout, feature flags, or backwards compatibility;
- destructive operations or production data.

If the plan has unresolved approval points, do not implement until the human approves the plan or explicitly names the phase to start.

Good confirmation format:

```text
Before implementation, please confirm:
1. Should [behavior] happen when [case]?
2. Is [field/API/permission] the expected contract?
3. Is [migration/data change] allowed for this feature?
```

## 5. Break the Plan Into Detailed Tasks

After the plan is approved, create detailed implementation tasks.

Each task should be small enough to verify independently and should include:
- files or modules to change;
- expected behavior;
- tests or checks to run;
- risk notes;
- status: `Pending`, `In progress`, `Done`, or `Blocked`.

Task example:

```text
- [ ] Add server-side permission check for exporting reports.
  - Files: app/Http/Controllers/ReportExportController.php, tests/Feature/ReportExportTest.php
  - Verify: run targeted feature test
  - Risk: must preserve tenant isolation
```

## 6. Implement Only Approved Scope

During implementation:
- follow the approved plan and task list;
- keep changes focused;
- preserve existing project patterns;
- update or add tests when behavior changes;
- update docs when commands, APIs, setup, workflows, or behavior change;
- do not bundle unrelated refactors;
- stop and ask when new security/data/API decisions appear.

If implementation reveals that the plan is wrong or incomplete, update the plan before continuing. If the changed plan affects behavior, data, security, APIs, rollout, or acceptance criteria, ask for renewed human confirmation.

## 7. Update the Plan and Tasks at the End

Before final review, update the plan/task file.

Do one of these:
- mark completed tasks as `Done`;
- mark unfinished work as `Blocked` or `Follow-up` with reason;
- delete temporary task notes only when the final plan clearly records what was done;
- keep durable decisions, risks, and verification evidence.

The final plan should show:
- what was implemented;
- what changed from the original plan;
- what remains unfinished;
- what checks were run;
- what still needs human confirmation.

## 8. Run Verification

Run the smallest relevant checks first, then broader checks when practical.

Examples:
- targeted tests for changed behavior;
- lint/typecheck/build;
- migration dry-run or schema validation when safe;
- docs link/fence checks for documentation changes;
- smoke test for critical flows.

Do not claim a check passed unless it actually ran. If a check cannot run, record why and what should be run manually or in CI.

## 9. Run Review/Secure

Before PR, run the relevant review prompts/checklists. For high-risk features, this is the second security review: the first happens during the impact check, and this one reviews the actual diff.

At minimum, review for:
- auth and authorization bypass;
- tenant/org/ownership scope leaks;
- PII, patient, payment, credential, or production-data exposure;
- injection risks;
- unsafe file upload/download behavior;
- SSRF or unsafe outbound requests;
- secrets in code, logs, tests, or docs;
- destructive migrations or data jobs;
- debug output or temporary code;
- unrelated changes.

Use `prompts/review-security.md` for security-sensitive features.
Use repository-specific checklists when available.

## 10. Prepare or Create the Pull Request

Only create commits, push, or open a PR when explicitly authorized by the human.

Before PR:
- inspect `git status` and diff;
- confirm only intended files changed;
- ensure plan/tasks are updated;
- collect actual verification evidence;
- collect security/quality review notes;
- prepare rollback and migration notes when relevant;
- prepare QA handover notes when relevant.

Use `prompts/create-pull-request.md` when preparing or creating a PR.

The PR description should include:
- summary;
- scope;
- plan/task link;
- test evidence;
- security review notes;
- migration/config/rollback notes;
- screenshots or API examples when useful;
- remaining risks or `Needs confirmation` items.

## Final Output Format

```text
Summary:
- ...

Plan / tasks:
- ...

Files changed:
- ...

Verification:
- ...

Security / quality review:
- ...

PR:
- Drafted / Created / Not created because ...

Risks / follow-up:
- ...
```
