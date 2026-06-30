# Secure Coding Checklist

Status: Detail reference

Source of truth: `../../standards/secure-coding-standard.md` and
`../../checklists/owasp-review-checklist.md`.

This file remains as a detailed reference checklist. New organization-wide security rules
should update the canonical standard/checklist first.

Use this checklist during implementation, code review, and security review. It is
technology-neutral. Apply stack-specific tooling where available.

## Authentication

- [ ] Authentication happens server-side where required.
- [ ] Session/token handling follows project standards.
- [ ] Passwords or secrets are never logged.
- [ ] Account recovery and login flows do not leak sensitive information.

## Authorization

- [ ] Server-side authorization checks protect every sensitive action.
- [ ] Object ownership, tenant, or organization scope is enforced.
- [ ] UI-only permission checks are not trusted as enforcement.
- [ ] Role/permission changes are reviewed by a human.

## Input Validation and Injection

- [ ] Inputs are validated at trust boundaries.
- [ ] SQL/NoSQL queries use safe parameterization where supported.
- [ ] Command execution avoids user-controlled arguments or uses safe allowlists.
- [ ] HTML/DOM rendering escapes untrusted content.
- [ ] LDAP, template, XML, and expression injection risks are considered when relevant.

## Secrets and Sensitive Configuration

- [ ] No credentials, tokens, private keys, or real secrets are committed.
- [ ] `.env.example` uses placeholders only.
- [ ] Secret access is documented without exposing secret values.
- [ ] Production config changes require approval.

## Sensitive Logging and Privacy

- [ ] Logs do not expose secrets, tokens, personal data, payment data, or restricted data.
- [ ] Error responses do not expose internal details.
- [ ] Debug logs are not enabled by default in production.
- [ ] Data retention/privacy requirements are considered.

## Encryption and Cryptography

- [ ] Approved libraries/patterns are used.
- [ ] No custom cryptography without explicit approval.
- [ ] Key management is documented and secrets are not stored in code.
- [ ] Randomness is cryptographically secure where required.

## File Handling

- [ ] Upload file type, size, and content checks are defined.
- [ ] File paths are normalized and constrained.
- [ ] Path traversal is prevented.
- [ ] Uploaded files are not executed.
- [ ] Storage visibility/access rules are explicit.

## Database and Data Changes

- [ ] Migrations are reversible or rollback limitations are documented.
- [ ] Destructive changes require approval and backup/rollback notes.
- [ ] Data access preserves tenant/organization scope.
- [ ] Sensitive data is protected at rest/in transit according to project policy.

## API Security

- [ ] Endpoints require correct auth/authz.
- [ ] Validation errors are safe and useful.
- [ ] Rate limiting/throttling is considered where abuse is possible.
- [ ] API contract changes are documented.
- [ ] SSRF risk is checked for outbound URL fetching.

## Deserialization and Parsing

- [ ] Untrusted serialized data is not deserialized unsafely.
- [ ] XML/entity parsing avoids XXE where relevant.
- [ ] Large/untrusted payloads have size and timeout limits.

## Race Conditions and Concurrency

- [ ] Critical state transitions are atomic where needed.
- [ ] Duplicate submissions/retries are idempotent where needed.
- [ ] Locking/transactions are used where consistency matters.

## Dependencies and Supply Chain

- [ ] New dependencies are justified.
- [ ] Known vulnerability tooling is run where available.
- [ ] Dependency license/maintenance status is acceptable.
- [ ] Generated code and copied snippets are reviewed.

## Minimum Security Testing

- [ ] Abuse cases are considered for changed behavior.
- [ ] Auth/authz negative tests are added or manually checked where relevant.
- [ ] Input validation failure paths are tested.
- [ ] Sensitive logs/secrets are checked in diff and evidence.
- [ ] High-risk changes have a security review record.
