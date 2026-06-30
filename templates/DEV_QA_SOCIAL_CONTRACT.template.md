# Dev-QA Social Contract

Status: Draft / Adopted / Needs review
Team/repository: Needs confirmation
Owner roles: Tech Lead and QA Lead unless customized
Review cadence: Needs confirmation
Last reviewed: Needs confirmation

## 1. Shared Purpose

We agree to collaborate so that changes are understandable, testable, verified with
evidence, and releasable with known risk.

## 2. Shared Responsibilities

| Area | Developer responsibility | QA responsibility | Shared / lead responsibility |
| --- | --- | --- | --- |
| Requirement clarity | Identify ambiguity before implementation. | Identify testability gaps and edge cases. | Product/Lead resolves scope and priority. |
| Implementation | Follow existing architecture and coding standards. | Provide risk/test input when needed. | Tech Lead resolves technical trade-offs. |
| Verification | Run relevant checks and record evidence. | Review evidence and perform agreed validation. | QA Lead defines quality gate expectations. |
| Defects | Fix confirmed defects or explain constraint. | Provide reproducible report and impact. | Leads resolve severity/priority disputes. |
| Release | Provide deployment/rollback notes when relevant. | Confirm release readiness evidence. | Release owner approves go/no-go. |

## 3. Developer Commitments

- I will not hand work to QA without scope, risk, and verification evidence.
- I will not claim tests passed unless I executed them successfully.
- I will document commands that could not run and why.
- I will flag config, migration, security, API, and compatibility changes.
- I will keep PRs reviewable or explain why a larger change is necessary.

## 4. QA Commitments

- I will review requirements and acceptance criteria early when possible.
- I will report defects with reproducible steps or clearly state what is unknown.
- I will separate severity from business priority.
- I will review Developer evidence before duplicating checks.
- I will state release blockers clearly with evidence.

## 5. Communication Rules

| Situation | Expected behavior | Channel/contact |
| --- | --- | --- |
| Requirement ambiguity | Ask before implementation or testing proceeds. | Needs confirmation |
| QA blocker | Provide evidence and blocking reason. | Needs confirmation |
| Dev needs QA input | Ask with context, affected area, and decision needed. | Needs confirmation |
| Disagreement | Discuss evidence first, escalate respectfully if unresolved. | Needs confirmation |
| Urgent production issue | Follow incident or urgent bug workflow. | Needs confirmation |

## 6. Definition of Ready

Work is ready for implementation when:

- Problem or requirement is clear enough to start.
- Acceptance criteria exist or unknowns are marked.
- Dependencies are known or flagged.
- Testability risks are identified.
- Security, migration, environment, or release risks are flagged.

## 7. Definition of Done

Work is done only when:

- Scope is implemented or explicitly deferred.
- Developer verification evidence is recorded.
- PR checklist is complete.
- QA handover is complete when QA validation is needed.
- Bugs found during validation are resolved, deferred, or accepted by the right owner.
- Documentation, security, environment, and release notes are updated when relevant.

## 8. Evidence Requirements

Minimum evidence:

- Commands run and results.
- Manual test scenarios and observed results when relevant.
- Screenshots/recordings for UI changes when relevant.
- API request/response examples for API changes when relevant.
- Logs with secrets and personal data redacted when relevant.
- Known limitations and unverified areas.

## 9. Escalation Rules

Escalate when:

- Severity/priority is disputed.
- A release blocker is unresolved.
- A security-sensitive risk is accepted or deferred.
- An urgent change bypasses normal validation.
- Required owner or environment access is unavailable.

Escalation owner/contact: Needs confirmation

## 10. Urgent Work Rules

Urgent work may use a reduced workflow only when delay creates higher risk.

Minimum required even for urgent work:

- Clear impact statement.
- Owner and approver.
- Focused verification evidence.
- Rollback or mitigation note.
- Follow-up ticket for skipped documentation/tests/review.

## 11. AI-Generated Change Rules

- Humans remain accountable for AI-generated changes.
- AI output is untrusted until reviewed and verified.
- No secrets or restricted information may be pasted into prompts.
- High-risk changes require human approval.
- AI agents must inspect real repository changes before preparing PR or QA handover text.

## 12. Review and Renewal

Review cadence: Needs confirmation
Review owner: Needs confirmation
Next review date: Needs confirmation
Feedback source: PR retrospectives / QA handovers / incidents / team retro
