# Security Review Guide

Status: Detail reference

Security review is a dedicated evaluator step. It is separate from normal code
verification and from human risk approval.

## When to Perform Security Review

Perform security review for changes involving:

- authentication or authorization;
- permissions or roles;
- payments;
- personal/sensitive data;
- file upload or file handling;
- data deletion;
- database migrations;
- production configuration;
- cryptography;
- external command execution;
- dependencies;
- infrastructure;
- API contracts;
- external integrations;
- untrusted input, rendering, parsing, or storage.

## Review Process

1. Inspect the actual diff before reading the implementation explanation.
2. Identify trust boundaries.
3. Trace user input to storage, rendering, logs, network calls, commands, files, and
   database queries.
4. Confirm server-side authorization and tenant/organization scoping.
5. Check the secure coding checklist.
6. Check secrets in code, docs, config, tests, and logs.
7. Check migration and data deletion safety.
8. Write findings with severity, evidence, scenario, remediation, and uncertainty.
9. State whether mandatory human approval is required.

## Verdicts

| Verdict | Meaning |
| --- | --- |
| PASS | No blocking security issues found in reviewed scope. |
| PASS WITH WARNINGS | Non-blocking issues or uncertainties remain. |
| FAIL | Blocking security issue found. |
| BLOCKED | Review could not complete because evidence/access/context is missing. |

## Output Template

Use `../../templates/SECURITY_REVIEW.template.md`.

## AI Limitation

AI security review is useful but not authoritative. It does not replace human approval,
threat modeling, dependency scanning, penetration testing, or production monitoring when
those are required.
