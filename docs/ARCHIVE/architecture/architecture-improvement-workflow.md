# Architecture Improvement Workflow

Use this workflow to convert technical discussions, findings, production issues, or
quality problems into an architecture improvement plan. Do not recommend rewriting a
system without evidence and explicit trade-off analysis.

## When to Use

Use this workflow when a change affects:

- module boundaries;
- data model or persistence;
- API contracts;
- deployment/runtime topology;
- cross-service integration;
- performance/scalability bottlenecks;
- security boundaries;
- reliability or operational behavior;
- long-term maintainability;
- dependency direction or coupling.

## Required Inputs

- Problem statement.
- Current state.
- Evidence.
- Impact.
- Constraints.
- Options considered.
- Trade-offs.
- Recommendation.
- Affected modules.
- Migration plan.
- Risk.
- Rollback or mitigation.
- Testing strategy.
- Observability.
- Security.
- Dependencies.
- Sequencing.
- Acceptance criteria.
- Owner.
- Decision record.

## Workflow

1. Capture the problem.
   - Describe the user/business/technical problem.
   - Separate symptoms from root causes.
2. Gather evidence.
   - Code findings, incidents, metrics, logs, review comments, defect data, or repeated
     delivery friction.
3. Describe current state.
   - Existing architecture, constraints, ownership, dependencies, and known limitations.
4. Define goals and non-goals.
   - Prevent broad rewrites disguised as improvements.
5. Identify options.
   - Include no-change/status quo when relevant.
   - Include incremental options before replacement options.
6. Compare trade-offs.
   - Complexity, risk, cost, migration, compatibility, operability, security, testing.
7. Recommend one option.
   - Explain why the option best fits evidence and constraints.
8. Plan migration.
   - Sequence changes into small safe steps.
   - Define rollback/mitigation.
9. Define validation.
   - Tests, observability, rollout checks, and acceptance criteria.
10. Record the decision.
    - Use `../../templates/ADR.template.md` for accepted decisions.

## Anti-Rewrite Rule

A rewrite recommendation is not acceptable unless the plan includes:

- evidence that incremental improvement is insufficient;
- options considered, including incremental options;
- migration and compatibility strategy;
- rollback/mitigation strategy;
- cost/risk analysis;
- human approval from the accountable owner.

## Artifacts

- Improvement plan: `../../templates/ARCHITECTURE_IMPROVEMENT_PLAN.template.md`
- Decision record: `../../templates/ADR.template.md`
- AI prompt: `../../prompts/ARCHITECTURE_EVALUATION_PROMPT.md`

## Acceptance Criteria

Architecture improvement is ready for implementation when:

- problem/evidence/impact are clear;
- options and trade-offs are documented;
- owner and decision authority are known;
- migration sequence is reviewable;
- risk and rollback/mitigation are documented;
- testing, observability, and security validation are defined;
- ADR exists or is explicitly not required.
