# Dev-QA Quality Workflow

This workflow shows how QA participates from refinement to release. It routes to focused
standards instead of duplicating every rule.

## Stages and Ownership

| Stage | Developer | QA | Lead / other owner | Progression blocker |
| --- | --- | --- | --- | --- |
| 1. Refinement | Identify technical questions. | Identify testability gaps. | Product/Lead clarifies scope. | Requirement unclear enough that implementation/test planning would guess. |
| 2. Requirement clarification | Confirm behavior and constraints. | Confirm expected/edge cases. | Product owns decision. | Acceptance criteria missing or contradictory. |
| 3. Risk identification | Flag technical/security/data risks. | Flag quality/regression risks. | Tech/QA Lead resolves risk response. | High-risk area lacks owner/approval path. |
| 4. Testability review | Explain implementation boundaries. | Confirm observable outcomes and data needs. | QA Lead resolves testing gaps. | No way to validate expected behavior. |
| 5. Definition of Ready | Confirm ready to start. | Confirm QA input sufficient. | Lead approves exceptions. | DoR not met and no accepted exception. |
| 6. Implementation planning | Create plan for non-trivial work. | Review test impact when needed. | Tech Lead approves risky phases. | Large/risky work has no plan. |
| 7. Development | Implement scoped change. | Answer testability questions. | Tech Lead supports blockers. | Scope creep or unresolved dependency. |
| 8. Developer verification | Run relevant checks and record evidence. | May advise additional checks. | Developer owns evidence. | No verification evidence. |
| 9. PR creation | Complete PR standard/checklist. | Optional early handover review. | Reviewer assigned. | PR lacks scope/evidence/risk notes. |
| 10. Code review | Respond to review. | Review test impact if needed. | Reviewer owns code approval. | Blocking review comments unresolved. |
| 11. QA handover | Provide scope, evidence, risks, env, data. | Confirm handover is testable. | QA Lead resolves unclear handover. | QA cannot tell what to validate. |
| 12. QA testing | Fix confirmed defects. | Execute agreed validation. | QA owns validation result. | Critical/high defects unresolved or accepted. |
| 13. Defect handling | Investigate/fix or explain. | Report with evidence and severity. | Leads decide priority/deferral. | Defect lacks owner or decision. |
| 14. Regression | Support impacted-area checks. | Run targeted regression. | QA Lead sets scope. | Regression risk untested or unaccepted. |
| 15. Security review when required | Provide context and fixes. | Support abuse-case validation when relevant. | Security Reviewer approves/blocks. | Security-sensitive change lacks review/approval. |
| 16. Release readiness | Provide deployment/rollback notes. | Confirm quality gate. | Release owner approves go/no-go. | Release gate has unresolved blocker. |
| 17. Deployment | Support deployment validation. | Prepare smoke checks. | DevOps/release owner deploys. | Deployment prerequisites not met. |
| 18. Smoke testing | Fix smoke failures. | Execute smoke validation. | Release owner decides rollback/continue. | Smoke failure unresolved. |
| 19. Monitoring | Watch technical signals. | Watch user/defect signals. | DevOps/support monitors. | New incident/urgent bug not triaged. |
| 20. Closure and learning | Update docs/tests if needed. | Record QA learnings. | Leads review improvements. | Follow-up owner missing. |

## Lightweight RACI

| Activity | Responsible | Accountable | Consulted | Informed |
| --- | --- | --- | --- | --- |
| Requirement clarity | Product / requester | Product owner or delegated lead | Developer, QA | Team |
| Implementation | Developer | Tech Lead | QA, Security when relevant | QA |
| Developer verification | Developer | Developer | QA/Tech Lead | Reviewer |
| PR review | Reviewer | Tech Lead or code owner | QA/Security when relevant | Team |
| QA handover | Developer | Developer | QA | QA Lead |
| QA validation | QA | QA Lead | Developer | Team |
| Release readiness | Release owner | Release owner | Dev, QA, DevOps, Security | Stakeholders |
| Incident escalation | Incident owner | Engineering Manager / on-call owner | Dev, QA, DevOps, Security | Stakeholders |

## Handover Requirements

Use `../../templates/QA_HANDOVER_CHECKLIST.template.md`. Handover must include:

- scope;
- environment/build;
- changed areas;
- risk areas;
- Developer verification evidence;
- suggested QA focus;
- known limitations;
- linked PR/issue;
- release notes when relevant.

## Release Gate

Use `../../templates/RELEASE_QUALITY_GATE.template.md`. A release should not proceed when:

- Critical/High unresolved defects lack accepted risk decision;
- required verification is missing;
- security review is required but not completed;
- deployment/rollback/smoke plan is missing;
- owner for post-release monitoring is missing.

## Adoption

Pilot this workflow on one feature or bugfix. After the pilot, update the Social Contract,
PR standard, bug template, QA handover, and release gate with unclear fields or missing
owners.
