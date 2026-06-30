# Architecture Evaluation Prompt

```text
Read AGENTS.md first.

Evaluate this architecture improvement idea or technical finding.

Objective:
Create an evidence-based architecture improvement plan without jumping to a rewrite.

Inputs:
- Problem/finding/discussion: [DESCRIPTION]
- Evidence available: [LINKS, LOGS, INCIDENTS, CODE AREAS, METRICS OR NEEDS CONFIRMATION]
- Constraints: [CONSTRAINTS OR NEEDS CONFIRMATION]

Process:
1. Inspect the repository and relevant docs before recommending changes.
2. Read docs/architecture/architecture-improvement-workflow.md if it exists.
3. Read templates/ARCHITECTURE_IMPROVEMENT_PLAN.template.md if it exists.
4. Identify current state, affected modules, dependencies, risks, constraints, and unknowns.
5. Compare options, including status quo and incremental options.
6. Include trade-offs, migration, rollback/mitigation, testing, observability, security,
   sequencing, and acceptance criteria.
7. Do not recommend a rewrite without evidence and explicit trade-off analysis.
8. Do not edit implementation code unless explicitly asked.
9. Do not commit or push unless explicitly authorized.

Expected output:
- Architecture improvement plan draft.
- Options/trade-off table.
- Recommended option with rationale.
- ADR needed: Yes / No / Needs confirmation.
- Human decisions required.
- Suggested first safe implementation step.

Human confirmation required when:
- The recommendation changes architecture boundaries, data model, API contracts,
  infrastructure, security model, or migration strategy.
```
