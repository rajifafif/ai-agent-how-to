# OWASP Review Checklist

Use this checklist for security reviews of code, architecture, configuration, and dependency changes.

Mark items `N/A` only when the area is truly not touched by the change.

## OWASP Top 10 2021

| ID | Risk | Check |
| --- | --- | --- |
| A01 | Broken Access Control | Verify server-side authorization, object ownership, tenant/org scoping, role checks, route guards, and direct-object-reference protections. |
| A02 | Cryptographic Failures | Verify sensitive data classification, transport security, encryption at rest where required, secret handling, password/token storage, and no weak/custom crypto. |
| A03 | Injection | Verify parameterized database queries, safe command execution, safe template rendering, validated input, and no unsafe dynamic eval/interpolation. |
| A04 | Insecure Design | Verify abuse cases, trust boundaries, rate limits, workflow bypasses, business-rule enforcement, and secure failure behavior. |
| A05 | Security Misconfiguration | Verify secure defaults, disabled debug mode, safe CORS, headers, error handling, environment config, storage permissions, and least privilege. |
| A06 | Vulnerable and Outdated Components | Verify dependency changes, known vulnerabilities, unsupported packages, pinned/locked versions, and supply-chain risk. |
| A07 | Identification and Authentication Failures | Verify login/session flows, password reset, MFA where required, token expiry/rotation, cookie flags, and account enumeration controls. |
| A08 | Software and Data Integrity Failures | Verify CI/CD trust, signed/verified artifacts where required, safe deserialization, migration integrity, dependency source trust, and update mechanisms. |
| A09 | Security Logging and Monitoring Failures | Verify audit events, security-relevant logs, alertability, no secret/PII leakage in logs, and incident investigation evidence. |
| A10 | Server-Side Request Forgery | Verify outbound request allowlists, metadata/IP blocking, URL parsing, redirects, DNS rebinding risk, and timeout/size limits. |

## Review Checklist

### Access Control

- [ ] Protected routes/endpoints require authentication.
- [ ] Authorization is enforced server-side, not only in the UI.
- [ ] Object ownership and tenant/org scoping are checked.
- [ ] Admin/staff actions require explicit roles or permissions.
- [ ] Direct object references cannot access another user's data.
- [ ] Bulk/list/export endpoints apply the same permission rules as detail endpoints.

### Sensitive Data and Cryptography

- [ ] Secrets, tokens, passwords, private keys, and credentials are not committed, printed, or logged.
- [ ] Sensitive data and PII are minimized in responses, logs, analytics, and errors.
- [ ] Passwords/tokens use appropriate hashing, storage, expiry, and rotation behavior.
- [ ] Cryptography uses trusted libraries and approved algorithms, not custom crypto.
- [ ] Transport security and cookie flags are appropriate for auth/session data.

### Injection and Input Handling

- [ ] Database queries are parameterized or use safe ORM/query-builder APIs.
- [ ] Shell commands avoid unsafe string concatenation and validate arguments.
- [ ] Template rendering escapes untrusted data by default.
- [ ] File paths, uploads, MIME types, sizes, and extensions are validated.
- [ ] User-controlled redirects, URLs, and callback parameters are constrained.

### Authentication and Session Logic

- [ ] Login, logout, refresh, reset-password, and invitation flows are reviewed.
- [ ] Session/token expiry and revocation behavior is clear.
- [ ] Cookies use secure flags when applicable: `HttpOnly`, `Secure`, `SameSite`.
- [ ] Account enumeration and brute-force risks are considered.
- [ ] MFA or stronger verification requirements are respected where applicable.

### Secure Design and Business Logic

- [ ] Abuse cases and bypass paths were considered.
- [ ] State transitions cannot skip required approvals or validations.
- [ ] Rate limits, quotas, idempotency, and replay protections are considered where relevant.
- [ ] Error handling fails closed for security-sensitive flows.
- [ ] High-risk behavior requires human review when project policy requires it.

### Configuration and Infrastructure

- [ ] Debug/development modes are disabled outside local development.
- [ ] CORS, security headers, storage permissions, and network exposure are intentional.
- [ ] Environment-specific settings are documented without exposing secret values.
- [ ] Services and credentials follow least privilege.
- [ ] Destructive scripts, migrations, and admin tools require explicit approval.

### Dependencies and Supply Chain

- [ ] New or upgraded dependencies are necessary and maintained.
- [ ] Known vulnerabilities are checked with the project's available tooling.
- [ ] Lockfiles are updated intentionally.
- [ ] Package sources, build scripts, generated artifacts, and CI steps are trusted.
- [ ] Unsafe deserialization or untrusted plugin/module loading is avoided.

### Logging, Monitoring, and Incident Evidence

- [ ] Security-relevant events are logged with enough context for investigation.
- [ ] Logs avoid secrets, raw tokens, passwords, private keys, and unnecessary PII.
- [ ] Authentication, authorization, payment, data export, and admin actions are auditable where required.
- [ ] Errors do not leak stack traces, SQL, credentials, or internal infrastructure details to users.

### SSRF and External Requests

- [ ] Outbound requests validate scheme, host, port, and path.
- [ ] Internal IPs, localhost, link-local, metadata services, and private networks are blocked unless explicitly allowed.
- [ ] Redirects are constrained or revalidated.
- [ ] Timeouts, response size limits, and content-type checks are configured.
- [ ] Webhook/callback integrations authenticate requests and verify signatures when available.

## Final Review Output

Record:

- OWASP Top 10 areas touched by the change.
- Findings by severity: blocking, high, medium, low, note.
- Files/functions reviewed.
- Tests or checks run.
- Human confirmation required.
