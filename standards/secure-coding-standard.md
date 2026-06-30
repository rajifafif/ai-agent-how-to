# Secure Coding Standard

Security is part of the full workflow, not only a final checklist.

## Mandatory Rules

- Validate external input.
- Enforce authorization server-side.
- Use parameterized queries.
- Do not hardcode credentials.
- Do not log secrets or personal data.
- Use trusted cryptographic libraries.
- Verify file type, size, and storage rules.
- Restrict external network requests.
- Review dependency changes.
- Use safe defaults.
- Handle errors without leaking sensitive details.
- Follow least privilege.

## OWASP Review Areas

- broken access control;
- cryptographic failures;
- injection;
- insecure design;
- security misconfiguration;
- vulnerable/outdated components;
- authentication failures;
- software/data integrity failures;
- logging/monitoring failures;
- SSRF.

Specialist review is required for auth, authorization, payments, sensitive data, file handling, cryptography, infrastructure, and dependency-risk changes.
