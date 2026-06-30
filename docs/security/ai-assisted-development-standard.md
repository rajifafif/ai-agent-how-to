# AI-Assisted Development Standard

AI can accelerate software delivery, but AI output is untrusted until reviewed and
verified. Humans remain accountable for all changes.

## Core Rules

1. The Developer remains accountable for AI-assisted work.
2. AI output must be reviewed before use.
3. AI output is untrusted until verified with evidence.
4. Do not put secrets, tokens, credentials, personal data, customer data, or restricted
   information into prompts.
5. Respect repository and data access boundaries.
6. Do not invent commands, architecture, owners, issue links, CI results, or test results.
7. Do not claim checks passed unless they actually ran successfully.
8. Mark unknown facts as `Needs confirmation`.
9. High-risk changes require human approval.
10. Generated code must be checked for licensing, dependency, security, and maintainability
    risks according to team policy.

## Verification Layers

| Layer | Purpose | Example evidence |
| --- | --- | --- |
| Normal code verification | Prove the change behaves as intended. | Tests, lint, type-check, build, manual checks. |
| Dedicated security review | Look for abuse cases and vulnerabilities. | Security review report, findings, remediation. |
| Security-sensitive human approval | Decide whether risk is acceptable. | Named approver and approval note. |

AI review does not replace required human review.

## High-Risk Areas

Human approval is required for changes involving:

- authentication;
- authorization;
- permission changes;
- payments;
- personal or sensitive data;
- file upload;
- data deletion;
- database migrations;
- production configuration;
- cryptography;
- external command execution;
- dependency changes;
- infrastructure changes;
- tenant or organization boundaries;
- secrets handling;
- logging of sensitive data;
- external integrations that move sensitive data.

## Prompt Safety

Do not include:

- API keys, tokens, passwords, private keys, certificates;
- production credentials or addresses;
- personal/customer data unless explicitly approved and sanitized;
- proprietary restricted documents unless the tool and policy allow it;
- incident details that are restricted from the AI tool being used.

Use sanitized examples and placeholders.

## Dependency Safety

Before adding or changing dependencies:

- confirm the dependency is needed;
- check license compatibility according to team policy;
- review maintenance status and known vulnerabilities where tooling exists;
- prefer existing project-approved libraries;
- document why the dependency is added;
- require human approval for high-risk or production dependency changes.

## Secure Coding Coverage

Use `secure-coding-checklist.md` for detailed review areas including OWASP Top 10,
authentication, authorization, injection, secrets, sensitive logging, encryption, file
handling, database changes, API security, SSRF, path traversal, command execution,
deserialization, race conditions, and privacy.

## Adoption

1. Link this standard from project `AGENTS.md`.
2. Link the security review guide from PR and release workflows.
3. Define the organization-specific human approval roles.
4. Pilot on one security-sensitive PR.
5. Update the high-risk list when incidents or review findings reveal gaps.
