---
name: prepare-repository
description: Prepare a project repository for safe AI-assisted development.
---

# prepare-repository

## Use When

- User says `prepare this repository for AI-assisted development`, `make this repo AI-ready`, or similar.

## Required First Step

Read project `AGENTS.md` first. If it is missing, report that the repository is not yet AI-ready and use `standards/ai-ready-repository-standard.md` as fallback guidance.

## Workflow

1. Inspect repository structure, docs, package files, scripts, CI, and existing templates.
2. Detect real stack and commands.
3. Preserve existing useful documentation.
4. Create or update `AGENTS.md` and minimum project docs.
5. Add PR/bug/handover templates only when missing or clearly beneficial.
6. Add lightweight validation script if practical.
7. Mark unknown facts as `Needs confirmation`.
8. Produce AI-readiness report.

## Expected Output

- Files created/updated.
- Real commands found.
- Unknowns.
- Readiness checklist.
- Next human decisions.

## Human Confirmation Required

- Before overwriting existing docs or changing production behavior.

## Pitfalls

- Do not invent project commands.
- Do not claim tests passed unless actually run.
- Do not expose secrets or personal data.
- Mark unknowns as `Needs confirmation`.
