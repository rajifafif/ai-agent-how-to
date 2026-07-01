# Skills

Installable or copyable AI-agent workflows.

Skills should be small workflow wrappers. They should not duplicate all standards.

Every skill should:

1. Read project `AGENTS.md` first.
2. Inspect real repository state before acting.
3. Use project-local commands and templates when available.
4. Fall back to this toolkit's standards only when project docs are missing.
5. Ask for human confirmation before commit, PR creation, push, destructive operations, or
   security-sensitive decisions.
6. Never claim tests passed unless they were actually executed successfully.

## Initial Skills

| Skill | User asks |
| --- | --- |
| `prepare-repository` | Prepare this repository for AI-assisted development. |
| `plan-feature` | Plan this feature. |
| `implement-feature` | Implement this feature. |
| `review-security` | Review this change for security issues. |
| `cleanup-docs` | Clean up docs / remove obsolete docs / consolidate documentation. |
| `verify-changes` | Verify this / check current changes / review diff. |
| `create-commits` | Make commits / commits / create commits. |
| `make-release` | Make release / prepare release and changelog before tagging. |
| `create-pull-request` | Create PR / prepare PR / open PR from the current branch. |
| `qa-handover` | Prepare QA handover. |
| `continue-unfinished-work` | Continue unfinished work. |

## OpenCode Usage

After a project has `AGENTS.md` and skills installed, developers should be able to use
short instructions such as:

```text
Create commits for the completed work.
```

```text
Create a pull request from this branch.
```

## Project Skill Sync Policy

Canonical toolkit skills live under `skills/*/SKILL.md`.

Project-local installed skills live under `.agents/skills/*/SKILL.md` and must stay exact
synced copies of the canonical toolkit skills. Do not customize project-local skill files
per developer. If a developer wants additional or personalized skills, install those at
the agent/user level instead of inside the project repository.

Use local validation before commit or PR:

```sh
./scripts/validate-skills.sh
```

Any hash drift between `skills/*` and `.agents/skills/*` is a validation issue.
