---
name: continue-unfinished-work
description: Resume work from current repository state and handoff notes.
---

# continue-unfinished-work

## Use When

- User says `continue unfinished work`, `resume this task`, or `pick up where it left off`.

## Required First Step

Read project `AGENTS.md` first. If it is missing, report that the repository is not yet AI-ready and use `standards/ai-ready-repository-standard.md` as fallback guidance.

## Workflow

1. Read `AGENTS.md`.
2. Inspect git status, recent commits, plans, and handoff docs.
3. Identify completed work, remaining work, blockers, failed attempts, and next safe step.
4. Do not assume previous chat context is complete if repository evidence disagrees.
5. Continue only after summarizing current state.

## Expected Output

- Current state.
- Completed work.
- Remaining work.
- Blockers.
- Next step.
- Risks.

## Human Confirmation Required

- Before deleting/reverting work or changing scope.

## Pitfalls

- Do not invent project commands.
- Do not claim tests passed unless actually run.
- Do not expose secrets or personal data.
- Mark unknowns as `Needs confirmation`.
