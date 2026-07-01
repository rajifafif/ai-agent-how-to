# Documentation Standard

Status: Canonical

Documentation must be small, accurate, current, non-duplicated, and routed from a clear entry point.

## Source of Truth Layers

| Layer | Source of truth | Purpose |
| --- | --- | --- |
| Repository entry | `README.md` | Human navigation, fastest path, and what to use first. |
| Agent entry | `AGENTS.md` | Auto-loaded operating rules and workflow routing. |
| Workflow routing | `docs/ai-workflows.md` | Natural-language task to guide/skill/prompt mapping. |
| Durable standards | `standards/*.md` | Organization-wide rules. |
| Practical workflows | `guides/*.md` | How to execute common work. |
| Project-local skills | `.agents/skills/*/SKILL.md` | Exact synced copies of canonical project skills. |
| Canonical toolkit skills | `skills/*/SKILL.md` | Source skills for install/sync. |
| Templates | `templates/*.template.md` | Reusable artifact shapes. |
| Prompts | `prompts/*.md` | Fallback copy-paste prompts when router/skills are unavailable. |
| Plans / roadmap | `docs/plans/`, `docs/roadmap/` | Time-bound work plans. Mark old plans `Historical` or remove when superseded. |

## Write Docs This Way

1. Inspect existing docs before creating a new file.
2. Prefer updating the canonical doc over adding another overlapping doc.
3. Keep README files navigation-first; avoid long duplicated rules.
4. Put durable rules in `standards/`, execution steps in `guides/`, and reusable outputs in `templates/`.
5. Put runnable agent procedures in `skills/`; do not hide workflow rules only inside prose docs.
6. Use `Needs confirmation` for project-specific facts that are unknown.
7. Keep examples fictional and clearly labelled.
8. Link from the nearest index/router after adding a doc.
9. Add or keep a status header for `docs/**/*.md`:
   - `Status: Canonical`
   - `Status: Active`
   - `Status: Detail reference`
   - `Status: Compatibility pointer`
   - `Status: Historical`
   - `Status: Example`
10. Validate links, Markdown fences, and secret-like content before finishing.

## Cleanup Rules

When docs start to sprawl, run a documentation cleanup instead of adding more files.

Classify every suspicious file as:

| Classification | Action |
| --- | --- |
| Canonical | Keep and route other docs to it. |
| Supporting detail | Keep, but link from canonical docs. |
| Duplicate | Merge useful parts into canonical doc, then delete or replace with a short pointer. |
| Superseded plan | Mark `Status: Historical` or delete if no longer useful. |
| Stale/inaccurate | Update from repository evidence or mark `Needs confirmation`. |
| Empty placeholder | Delete if safe, and record missing process as `Needs confirmation` elsewhere. |
| Temporary/bootstrap artifact | Delete after required files are copied and validated. |

## Avoid

- duplicate instructions;
- stale architecture notes;
- conflicting prompts;
- long generic essays;
- undocumented temporary rules;
- policy hidden only in roadmap files;
- examples that look like real commands, owners, SLA targets, or credentials.

## Required Validation

For docs-only changes, run available local checks:

```sh
./scripts/validate-docs.sh
./scripts/validate-links.sh
./scripts/validate-skills.sh
```

If a check cannot run, report why and what should be run manually.
