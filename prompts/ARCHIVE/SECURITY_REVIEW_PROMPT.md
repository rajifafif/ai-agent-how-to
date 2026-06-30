# Security Review Prompt

Copy and paste this prompt from the target repository root.

```text
Read AGENTS.md first.

Perform an adversarial security review of the current diff. Assume the change may contain
vulnerabilities until evidence shows otherwise.

Objective:
Identify security risks, abuse cases, missing controls, and required human approvals.

Inputs:
- Current repository diff or PR: current diff unless another target is provided.
- Security context or threat model if provided: [CONTEXT OR NEEDS CONFIRMATION]

Process:
1. Inspect the actual diff before reading implementation notes.
2. Read standards/ai-usage-standard.md if it exists.
3. Read docs/ARCHIVE/security/security-review-guide.md if it exists.
4. Read standards/secure-coding-standard.md if it exists.
5. Read templates/SECURITY_REVIEW.template.md if it exists.
6. Identify changed trust boundaries and high-risk areas.
7. Review authentication, authorization, tenant/org scoping, input validation, injection,
   secrets, logging, encryption, file handling, database changes, API security, SSRF,
   path traversal, command execution, deserialization, race conditions, dependency risk,
   privacy, and production configuration where relevant.
8. Do not modify code. Do not commit.

Expected output:
- Verdict: PASS / PASS WITH WARNINGS / FAIL / BLOCKED.
- Mandatory human approval required: Yes / No, with reason.
- Findings with severity, file/location, evidence, exploit/failure scenario, recommended
  remediation, and remaining uncertainty.
- Checks performed.
- Checks not performed and why.

Human confirmation required when:
- The change touches high-risk areas.
- Required context or evidence is missing.
- Risk acceptance is needed.
```
