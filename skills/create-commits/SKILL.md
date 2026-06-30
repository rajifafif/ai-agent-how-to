---
name: create-commits
description: Prepare and create logical commits for completed work.
---

# create-commits

## Use When

- User says `create commit`, `create commits`, `commit this work`, or similar.

## Required First Step

Read project `AGENTS.md` first. If it is missing, report that the repository is not yet AI-ready and use `standards/ai-ready-repository-standard.md` as fallback guidance.

## Workflow

1. Read `AGENTS.md` and `standards/commit-standard.md` if available.
2. Inspect `git status` and diff.
3. Identify unrelated, generated, sensitive, or risky files.
4. Run safe validation if available or report why not run.
5. Group changes into logical commits.
6. Propose commit plan.
7. Create commits only when user instruction clearly authorizes committing.

## Expected Output

- Commit plan.
- Files per commit.
- Validation evidence.
- Created commit SHAs if committed.
- Anything excluded.

## Human Confirmation Required

- Commit creation requires explicit user authorization. Push is separate and requires explicit authorization.

## Pitfalls

- Do not invent project commands.
- Do not claim tests passed unless actually run.
- Do not expose secrets or personal data.
- Mark unknowns as `Needs confirmation`.
