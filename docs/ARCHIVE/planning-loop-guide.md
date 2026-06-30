# Planning Loop Guide

Status: Detail reference

Use the planning loop when a task is too large or risky to complete safely in one
continuous edit session.

The goal is to make the repository the durable memory for the task. The chat is
temporary. The plan file is the source of truth for phases, decisions, verification, and
the next step.

## When to Use the Planning Loop

Create a persistent plan before implementation when a task:

- touches more than one layer, such as API, database, frontend, queue, or docs;
- changes authentication, authorization, permissions, payments, personal data, file
uploads, tenant boundaries, or production configuration;
- needs a migration or data backfill;
- affects legacy code with weak tests;
- is expected to take more than one focused session;
- needs phased rollout or human approval between steps;
- has unclear acceptance criteria or unknown root cause;
- would be hard to review as one large diff.

A persistent plan is usually not needed for typo fixes, tiny copy changes, isolated
one-line fixes, or clearly mechanical updates.

## Default Files and Folders

Use these project-local paths unless the repository defines another convention:

- `docs/plans/` for active implementation and investigation plans.
- `docs/plans/completed/` for useful completed plans.
- `docs/handoffs/` for paused, blocked, or cross-session work.
- `templates/IMPLEMENTATION_PLAN.template.md` as the plan structure.
- `templates/HANDOFF.template.md` as the handoff structure.

Example plan name:

```text
docs/plans/2026-06-26-add-password-reset.md
```

Example handoff name:

```text
docs/handoffs/2026-06-26-add-password-reset.md
```

## Planning Loop

```text
Task idea
  -> Inspect repository
  -> Write phased plan
  -> Ask clarification and human confirms plan
  -> Implement one phase
  -> Verify with real commands
  -> Update plan status
  -> Continue next approved phase or write handoff
  -> Update docs
  -> Completion report
  -> Commit only if authorized
```

Green tests do not automatically mean the implementation is correct. Verification is
evidence, not approval.

## Plan Status Markers

Use simple status labels in the plan:

- `Pending` — not started.
- `In progress` — currently being worked on.
- `Done` — implemented and verified.
- `Blocked` — cannot continue without external input or access.
- `Skipped` — intentionally not done, with a reason.
- `Obsolete` — no longer valid because the approach changed.

Every phase should have a verification note before it is marked `Done`.

## Phase Rules

Each phase should be small enough to review independently.

A good phase includes:

- objective;
- affected files or layers;
- exact implementation tasks;
- tests or checks to run;
- documentation impact;
- security or migration risk;
- human approval point if needed.

Do not let the agent silently continue into the next risky phase. Ask for approval when
the plan marks a human approval point.

Before implementation starts, the agent should ask for confirmation or clarification
when requirements, acceptance criteria, scope boundaries, data behavior, rollout order,
or risk tolerance are unclear. A planning loop is successful only when the human can
see what will happen next and approve the first phase intentionally.

## Updating the Plan During Work

After each phase, update the plan with:

- what changed;
- files touched;
- commands run;
- command results;
- failed attempts;
- new risks or assumptions;
- next recommended step.

If the implementation differs from the plan, update the plan instead of pretending the
old plan is still accurate.

## Handoff Rule

Create or update a handoff when:

- work is paused;
- the agent context is getting long;
- human input is needed;
- a verification command cannot run;
- a blocker prevents the next phase;
- another developer or agent may continue the task.

The handoff must point back to the active plan and state the exact next step.

## What to Do When the Task Is Complete

After all phases are complete:

1. Run final verification.
2. Run security review when relevant.
3. Update affected documentation.
4. Write a completion report or final summary.
5. Decide what to do with the plan.

Use this rule:

| Plan outcome | Action |
| --- | --- |
| Still active | Keep in `docs/plans/` |
| Paused or blocked | Create/update `docs/handoffs/` |
| Completed and useful | Move to `docs/plans/completed/` |
| Completed but noisy | Summarize in completion report, then delete |
| Superseded | Mark obsolete and link to replacement |

Do not delete a plan until the useful decisions, verification results, and remaining
risks are captured somewhere durable.

## Example Daily Prompts

Create a plan only:

```text
Read AGENTS.md first.
Plan this task before implementation: [TASK].
Create a phased plan under docs/plans/ using templates/IMPLEMENTATION_PLAN.template.md.
Inspect the repository first.
Do not edit implementation code yet.
Do not commit.
```

Implement one phase:

```text
Read AGENTS.md first.
Continue from docs/plans/[PLAN FILE].
Implement Phase 1 only.
Run relevant verification.
Update the plan with results.
Do not continue to Phase 2 until I approve.
Do not commit.
```

Resume unfinished work:

```text
Read AGENTS.md first.
Continue from docs/handoffs/[HANDOFF FILE].
Verify the current repository state before trusting the handoff.
Update the plan and handoff as needed.
Do not commit.
```

## Human Approval Points

Human approval is mandatory before continuing when the next phase touches:

- authentication or authorization;
- permissions or tenant boundaries;
- payments;
- personal or sensitive data;
- destructive data operations;
- database migrations or backfills;
- production configuration;
- cryptography;
- file uploads;
- large refactors.
