---
name: cleanup-docs
description: Audit, consolidate, and clean repository documentation so docs stay current, routed, and non-duplicated.
---

# Cleanup Docs

Use when the user says:
- clean up docs
- docs are messy
- remove obsolete docs
- consolidate documentation
- update documentation standard
- make docs maintainable

## Required Source Order

1. Read `AGENTS.md`.
2. Read documentation sources of truth when present:
   - `README.md`
   - `docs/ai-workflows.md`
   - `standards/documentation-standard.md`
   - `docs/prompt-library.md`
   - `guides/README.md`
   - `skills/README.md`
3. Inspect current repository files and git status before editing.
4. Use repository evidence over assumptions.

## Workflow

1. Inventory Markdown/docs-like files, excluding `.git` and generated/vendor folders.
2. Classify suspicious docs:
   - canonical;
   - supporting detail;
   - duplicate;
   - superseded plan;
   - stale/inaccurate;
   - empty placeholder;
   - temporary/bootstrap artifact.
3. Identify the canonical destination for each duplicate or stale item.
4. Merge useful content into the canonical doc before deleting anything.
5. Delete only files that are clearly obsolete, redundant, empty, or superseded by a better canonical source.
6. For uncertain organization-specific facts, keep or add `Needs confirmation`; do not invent owners, contacts, SLA/KPI targets, commands, CI names, or approval roles.
7. Update indexes and routers after cleanup:
   - `README.md`
   - `docs/ai-workflows.md`
   - `docs/prompt-library.md`
   - `guides/README.md`
   - `skills/README.md`
   - relevant templates/prompts.
8. If project-local `.agents/skills/*` are used, keep them exact synced copies of canonical `skills/*`.
9. Run local validation and report exact results.

## Deletion Guardrails

Do not delete:
- platform/community files such as `CODE_OF_CONDUCT.md`, `SECURITY.md`, `SUPPORT.md`, `CONTRIBUTING.md`, or PR templates when still relevant;
- docs containing unique policy, security, release, incident, ownership, or approval information unless it has been merged into a canonical doc;
- translated files unless the English source and translation strategy are understood;
- user work plans/handoffs that may still be active.

Prefer marking `Status: Historical` when a plan has audit value but is no longer active.

## Expected Output

```text
Docs cleanup summary:
- kept canonical:
- merged:
- deleted:
- marked historical:
- needs confirmation:

Validation:
- command: result

Remaining risks:
- ...
```

## Validation

Run available local checks:

```sh
./scripts/validate-docs.sh
./scripts/validate-links.sh
./scripts/validate-skills.sh
```

Also inspect `git status --short --branch` and the final diff before finishing.
