# AI Workflow Router

This file helps agents turn short natural-language requests into the right workflow. It
is meant to be referenced from `AGENTS.md` so developers do not need to paste long
prompts during daily work.

## How Agents Should Use This File

1. Read `AGENTS.md` first.
2. If `AGENTS.md` points here, use this file to choose the workflow.
3. If a matching file exists under `prompts/`, follow it as the detailed checklist.
4. If no detailed prompt exists, follow the compact workflow in this file.
5. Do not require the developer to paste the long prompt when the intent is clear.
6. If intent is ambiguous, ask a concise clarification before editing or committing.

## Natural-Language Router

| User asks for | Follow |
| --- | --- |
| “make this project AI Agent Ready”, “setup agent docs” | `prompts/INITIAL_AI_AGENT_READY_PROMPT.md` |
| “implement”, “build”, “add feature”, “change behavior” | `prompts/FEATURE_IMPLEMENTATION_PROMPT.md` |
| “fix bug”, “debug”, “error”, “regression” | `prompts/BUGFIX_PROMPT.md` |
| “check current changes”, “verify”, “review diff”, “did this pass?” | `prompts/VERIFY_CHANGES_PROMPT.md` |
| “security review”, “check vulnerabilities”, “review auth/permissions” | `prompts/SECURITY_REVIEW_PROMPT.md` |
| “update docs”, “sync documentation” | `prompts/UPDATE_DOCUMENTATION_PROMPT.md` |
| “prepare commit”, “commit rules”, “make commits”, “create commits” | `prompts/COMMIT_PROMPT.md` |
| “continue”, “resume”, “handoff”, “unfinished work” | `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md` |

## Combined Requests

When one user message asks for multiple steps, run them in safe lifecycle order.

Example request:

```text
Check the current code changes, apply commit rules, then make commits.
```

Expected agent behavior:

1. Read `AGENTS.md`.
2. Inspect `git status` and the complete diff.
3. Run the Verify Changes workflow.
4. Run Security Review if the diff touches sensitive areas.
5. Check whether documentation needs updates.
6. Use Commit Prompt rules.
7. Commit only because the user explicitly asked to make commits.
8. Stage explicit files only.
9. Create focused commits.
10. Do not push unless separately authorized.

## Persistent Plans and Handoffs

For non-trivial feature or bugfix work, use repository files as durable task
memory:

- Store implementation or investigation plans under `docs/plans/`.
- Use `templates/IMPLEMENTATION_PLAN.template.md` when available.
- Store unfinished-work handoffs under `docs/handoffs/`.
- Use `templates/HANDOFF.template.md` when available.
- Update plans and handoffs as work changes.

Do not rely on chat history as the only record of current status.

## Commit Intent Rules

| User wording | Meaning |
| --- | --- |
| “prepare commit” | Prepare-only mode. Recommend boundaries and messages. Do not commit. |
| “commit rules” | Explain or apply commit safety checks. Do not commit unless commit is also explicitly requested. |
| “make commits”, “create commits”, “commit this” | Commit-authorized mode, after verification and safety checks. |
| “push” | Push only if explicitly requested. Commit permission does not imply push permission. |

If there are ambiguous unrelated changes, stop and ask before staging.

## Daily Short Prompts

Developers can use short prompts after `AGENTS.md` is installed.

```text
Read AGENTS.md first. Implement: [feature].
```

```text
Read AGENTS.md first. Fix bug: [symptom or reproduction].
```

```text
Read AGENTS.md first. Verify current changes.
```

```text
Read AGENTS.md first. Security-review current diff.
```

```text
Read AGENTS.md first. Update docs for current changes.
```

```text
Read AGENTS.md first. Check current changes, apply commit rules, and make focused commits.
```

```text
Read AGENTS.md first. Continue from [handoff file].
```

## Portable Auto-Loading Strategy

Prompt files are references. They do not auto-load by themselves.

For portable agent behavior across tools:

1. Put `AGENTS.md` at the repository root.
2. Add a workflow router section to `AGENTS.md`.
3. Point the router to this file and the detailed prompt files.
4. Ask developers to start normal tasks with `Read AGENTS.md first` when their tool does
   not automatically read it.

Some agents automatically read `AGENTS.md` or similar repository instruction files.
Others need to be told explicitly. The repository should support both.

## Optional Hermes Usage

Hermes users can load reusable procedures as skills, but this repository remains
agent-agnostic.

Optional Hermes examples:

```bash
hermes -s ai-agent-development-lifecycle
```

```text
/skill ai-agent-development-lifecycle
```

Those commands are examples only. They require a skill with that name to exist in the
user's Hermes profile.

## Non-Negotiable Safety Rules

- Do not invent commands.
- Do not claim a command passed unless it actually ran successfully.
- Do not commit unless explicitly asked.
- Do not push unless explicitly asked.
- Do not use destructive git commands unless explicitly authorized and necessary.
- Keep security review separate from implementation.
- Persist unfinished work in repository files, not only chat.
