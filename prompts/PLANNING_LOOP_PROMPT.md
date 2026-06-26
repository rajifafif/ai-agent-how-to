# Planning Loop Prompt

Copy and paste this prompt from the target repository root when a task needs a phased
plan before implementation.

```text
Read AGENTS.md first.

I want to plan this task before implementation:
[TASK DESCRIPTION]

Acceptance criteria:
[ACCEPTANCE CRITERIA]

Known constraints:
[KNOWN CONSTRAINTS]

Out of scope:
[OUT OF SCOPE]

Planning rules:
1. Read docs/planning-loop-guide.md if it exists.
2. Read templates/IMPLEMENTATION_PLAN.template.md if it exists.
3. Inspect the real repository before writing the plan.
4. Identify affected layers, likely files, and existing patterns.
5. Identify security, migration, compatibility, testing, documentation, and rollout risks.
6. Break the work into small phases that can be implemented and verified one by one.
7. Ask clarification before finalizing the plan if requirements, acceptance criteria,
   scope, data behavior, or risk tolerance are unclear.
8. After drafting the plan, ask for human confirmation before implementation starts.
9. Mark human approval points before risky phases.
10. Store the plan under docs/plans/ using a clear date-based filename.
11. Do not edit implementation code yet.
12. Do not commit or push.

The plan must include:
- Objective
- Background
- Acceptance criteria
- In scope
- Out of scope
- Repository findings
- Affected files or layers
- Security considerations
- Migration considerations
- Compatibility considerations
- Testing strategy
- Documentation impact
- Phased implementation tasks
- Verification required for each phase
- Human approval points
- Open questions
- Exact recommended first implementation step
- Confirmation needed before implementation

After writing the plan, report:
- Plan file path
- Summary of phases
- Main risks
- Questions requiring human confirmation
- Clarifications still needed
- Whether implementation can start safely

Stop after the plan and confirmation questions.
Do not begin implementation until I explicitly approve the plan or tell you which phase
to start.
```
