# Unfinished Work Guide

Status: Detail reference

AI chat sessions are temporary. The repository is the durable memory.

Persist unfinished work in a plan or handoff file when a task spans sessions, is
blocked, or needs human review before continuing.

Use these default locations unless the project chooses another convention:

- `docs/plans/` for implementation plans and investigation plans.
- `docs/handoffs/` for resume notes when work is unfinished.

For non-trivial feature or bugfix work, create the plan before editing code and update
it as the repository changes.

## Good Handoff Contents

A good handoff includes:

- Objective
- Scope
- Acceptance criteria
- Relevant files
- Decisions made
- Completed items
- Remaining items
- Blockers
- Failed attempts
- Current git state
- Commands run
- Verification results
- Known risks
- Exact next recommended step
- Questions requiring human confirmation

## How to Resume

1. Read AGENTS.md.
2. Read the plan or handoff completely.
3. Inspect current git status and diff.
4. Verify completed items against actual code.
5. Identify obsolete assumptions.
6. Continue from the first valid unfinished step.
7. Update the handoff before stopping again.

## Important Rule

Never trust a checklist just because it says an item is done. Check the repository.
