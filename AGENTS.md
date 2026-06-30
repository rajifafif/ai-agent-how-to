# AGENTS.md

This file tells AI agents how to work in this repository.

## Repository Purpose

This repository is a practical implementation guide and toolkit for Developer and QA
teams adopting safe AI-assisted development. It contains guides, prompts, templates,
examples, and lightweight validation scripts.

## Read Order

1. `README.md` for root navigation.
2. `docs/getting-started.md` for role-based usage.
3. `docs/ai-workflows.md` for task routing.
4. `docs/prompt-library.md` for prompt inventory.
5. Task-specific guides/templates/prompts.

## Source of Truth Rules

- Root navigation: `README.md`.
- Adoption phases: `docs/implementation-roadmap.md`.
- Q3 gap status: `docs/ARCHIVE/roadmap/Q3_IMPLEMENTATION_GAP_ANALYSIS.md`.
- Q3 artifact completion: `docs/ARCHIVE/roadmap/Q3_ACTION_ITEM_TRACEABILITY.md`.
- Definition of Done: `docs/definition-of-done.md`.
- Terminology: `docs/glossary.md`.
- AI workflow routing: `docs/ai-workflows.md` and `docs/prompt-library.md`.

Do not duplicate long rules across many prompt files. Update the canonical guide and link
to it.

## Editing Rules

- Inspect existing files before adding or replacing content.
- Preserve useful existing workflows and file paths where reasonable.
- Do not invent project commands, CI systems, architecture, owners, SLA targets, KPI
  targets, or deployment details.
- Mark unknown organization-specific values as `Needs confirmation`.
- Keep examples fictional and clearly labelled.
- Keep English as the primary source of truth unless a file explicitly states otherwise.
- Do not commit or push unless the user explicitly asks.

## Validation Rules

Before claiming completion:

- Review the diff.
- Run available lightweight validation scripts when they exist.
- Run relevant test, lint, build, or documentation checks when they exist.
- Check internal links and referenced paths when practical.
- Check for accidental secrets or real credentials.
- Confirm templates remain customizable.
- Report commands run and actual results.

## High-Risk Content Areas

Require human confirmation before changing standards that affect:

- security approvals;
- SLA or KPI targets;
- escalation contacts;
- release approval roles;
- incident communication rules;
- organization-specific ownership;
- translated files that may diverge from English source.
