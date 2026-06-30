# Feature Implementation Prompt

Copy and paste this prompt from the target repository root.

```text
Read AGENTS.md first.

Implement this feature:
[FEATURE DESCRIPTION]

Acceptance criteria:
[ACCEPTANCE CRITERIA]

Known constraints:
[KNOWN CONSTRAINTS]

Out of scope:
[OUT OF SCOPE]

Rules:
1. Inspect relevant existing code before proposing a design.
2. Restate the requested behavior and acceptance criteria in your own words.
3. Identify affected layers and likely files before editing.
4. Identify security, migration, compatibility, and testing risks.
5. For non-trivial work, read `prompts/plan-feature.md` if it exists, then create or update a persistent implementation plan in `docs/plans/` using `templates/IMPLEMENTATION_PLAN.template.md` before editing.
6. Show a concise implementation plan before editing even if a separate plan file is not needed.
7. Keep the persistent plan updated as tasks are completed, blocked, or changed.
8. Follow existing project patterns.
9. Keep the change minimal and focused.
10. Add or update tests where practical.
11. Run relevant verification commands.
12. Update relevant documentation when behavior, setup, API, configuration, or workflow changes.
13. If work is unfinished, create or update a handoff in `docs/handoffs/` using `templates/HANDOFF.template.md`.
14. Do not introduce unrelated refactoring.
15. Do not add dependencies unless necessary and explained.
16. Do not commit unless I explicitly ask you to commit.

Final completion report must include:
- Summary
- Requested behavior
- Implemented behavior
- Files changed
- Tests added or changed
- Exact commands run and results
- Implementation plan path and status, if used
- Handoff path, if work is unfinished
- Documentation updates
- Security considerations
- Known limitations or unverified items
- Risks and recommended follow-up
- Commit status
```
