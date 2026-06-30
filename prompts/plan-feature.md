# Plan Feature Prompt

Use this prompt before implementing non-trivial feature work.

```text
Read AGENTS.md first.

Objective: create a practical implementation plan for this feature: [feature/request].

Process:
1. Inspect relevant code, docs, tests, and existing plans.
2. Identify scope, out-of-scope items, risks, dependencies, and unknowns.
3. Follow `guides/feature-development-workflow.md` and `checklists/pre-implementation-checklist.md`.
4. Create or update a plan using `templates/CHANGE_PLAN.template.md` when useful.
5. Ask concise clarification questions for decisions that affect behavior, security, data, APIs, or rollout.

Constraints:
- Do not implement until the human approves the plan or names the phase to start.
- Do not invent requirements, owners, deadlines, or acceptance criteria.
- Mark uncertain facts as `Needs confirmation`.

Output:
- Proposed plan.
- Acceptance criteria.
- Verification strategy.
- Human decisions needed.
```

Detailed legacy prompt: `PLANNING_LOOP_PROMPT.md`.
