# Update Documentation Prompt

Copy and paste this prompt from the target repository root after code changes.

```text
Read AGENTS.md first.

Synchronize documentation with the current code changes. Do not commit.

First inspect:
1. `git status`
2. the complete diff
3. existing documentation relevant to the changed area

Decide whether any of these need updates:
- README.md
- AGENTS.md
- docs/architecture.md
- docs/testing.md
- docs/ai-workflows.md
- API documentation
- `.env.example`
- migration or deployment documentation
- configuration documentation
- changelog, if the project uses one

Rules:
- Update only documentation affected by the code change.
- Do not document behavior that does not exist.
- Do not copy secrets into documentation.
- Keep commands exact when they are discovered from the project.
- Label example commands clearly when they are examples only.
- Mark unresolved facts as “Needs confirmation”.
- Preserve existing documentation style and naming conventions.
- Do not commit.

Final response must include:
- Documents updated and why
- Documents checked but unchanged and why
- Any “Needs confirmation” items
- Exact commands or checks run
- Commit status
```
