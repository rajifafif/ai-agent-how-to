# Documentation Guide

Documentation should change when code changes affect how people install, run, use, test,
deploy, review, or extend the project.

## Documentation Decision Table

| Change type | Likely documentation |
| --- | --- |
| New environment variable | `.env.example` and setup docs |
| New command | testing or setup docs |
| New service or module | architecture docs |
| Changed API | API docs and consumer notes |
| Changed user behavior | README or product docs |
| New agent rule | AGENTS.md |
| New workflow | docs/ai-workflows.md |
| New migration requirement | deployment or migration docs |
| New dependency | setup docs and rationale |
| New permission behavior | security, API, or workflow docs |
| New background job | architecture, operations, or deployment docs |

## When Documentation Does Not Need to Change

Documentation usually does not need to change for:

- internal refactors with no behavior or workflow change
- test-only changes that do not alter test commands or strategy
- typo fixes
- private implementation details that users and contributors do not need
- temporary experiments not kept in the final diff

## Rules

- Do not document behavior that does not exist.
- Do not copy secrets into documentation.
- Use “Needs confirmation” for unresolved repository-specific facts.
- Keep discovered commands exact.
- Label examples clearly when commands are not discovered from the repository.
- Avoid duplicating the same procedure in many files; link to the canonical guide
instead.
