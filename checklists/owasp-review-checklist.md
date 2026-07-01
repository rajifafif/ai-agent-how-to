# OWASP Review Checklist

Use this checklist for security reviews of code, architecture, configuration, and dependency changes.

Mark items `N/A` only when the area is truly not touched by the change.

## OWASP Top 10 2025

| ID | Risk | Check |
| --- | --- | --- |
| A01:2025 | Broken Access Control | Verify server-side authorization, object ownership, tenant/org scoping, role checks, route guards, direct-object-reference protections, and deny-by-default behavior. |
| A02:2025 | Security Misconfiguration | Verify secure defaults, disabled debug mode, safe CORS, security headers, error handling, environment config, storage permissions, network exposure, and least privilege. |
| A03:2025 | Software Supply Chain Failures | Verify dependency provenance, dependency audit results, package source trust, lockfiles, build scripts, CI/CD secrets, artifact traceability, generated code, and release pipeline trust. |
| A04:2025 | Cryptographic Failures | Verify sensitive data classification, transport security, encryption at rest where required, secret handling, password/token storage, key rotation, and no weak/custom crypto. |
| A05:2025 | Injection | Verify parameterized database queries, safe command execution, safe template rendering, context-aware output encoding, validated input, and no unsafe dynamic eval/interpolation. |
| A06:2025 | Insecure Design | Verify abuse cases, trust boundaries, rate limits, workflow bypasses, business-rule enforcement, secure failure behavior, and defense-in-depth controls. |
| A07:2025 | Authentication Failures | Verify login/session flows, password reset, MFA where required, token expiry/rotation, cookie flags, brute-force controls, and account enumeration controls. |
| A08:2025 | Software or Data Integrity Failures | Verify safe deserialization, migration integrity, trusted update mechanisms, integrity checks, signed/verified artifacts where required, and protection against unauthorized data/code changes. |
| A09:2025 | Security Logging and Alerting Failures | Verify audit events, alertability, log retention needs, no secret/PII leakage in logs, incident investigation evidence, and security event monitoring. |
| A10:2025 | Mishandling of Exceptional Conditions | Verify errors, edge cases, timeouts, retries, dependency failures, partial failures, race conditions, and unexpected states fail safely without exposing data or bypassing controls. |

Note: OWASP Top 10 2025 changes category order and emphasis from 2021. `Vulnerable and Outdated Components` is now primarily reviewed under A03:2025 Software Supply Chain Failures. SSRF remains important and should be reviewed under A05:2025 Injection, A06:2025 Insecure Design, and the dedicated outbound request section below.

## Review Checklist

### Access Control

- [ ] Protected routes/endpoints require authentication.
- [ ] Authorization is enforced server-side, not only in the UI.
- [ ] Object ownership and tenant/org scoping are checked.
- [ ] Admin/staff actions require explicit roles or permissions.
- [ ] Direct object references cannot access another user's data.
- [ ] Bulk/list/export endpoints apply the same permission rules as detail endpoints.
- [ ] Default behavior denies access when permission, policy, tenant, or ownership state is missing or unclear.

### Configuration and Infrastructure

- [ ] Debug/development modes are disabled outside local development.
- [ ] CORS, security headers, storage permissions, and network exposure are intentional.
- [ ] Environment-specific settings are documented without exposing secret values.
- [ ] Services, service accounts, CI/CD tokens, and cloud credentials follow least privilege.
- [ ] Default passwords, sample keys, unsafe demo routes, and unused services are removed or disabled.
- [ ] Destructive scripts, migrations, and admin tools require explicit approval.

### Dependencies and Supply Chain

- [ ] New or upgraded dependencies are necessary and maintained.
- [ ] Known vulnerabilities are checked with the project's available tooling.
- [ ] Critical/high dependency findings are fixed, mitigated, or explicitly accepted.
- [ ] Lockfiles are updated intentionally where the ecosystem supports them.
- [ ] Package sources, registries, mirrors, build scripts, generated artifacts, and CI steps are trusted.
- [ ] Private package names cannot be hijacked from public registries.
- [ ] CI/CD workflows do not expose secrets to untrusted branches, pull requests, scripts, or forks.
- [ ] Release artifacts are produced from trusted source and traceable build steps.
- [ ] Container base images and runtime images are pinned/scanned where practical.

### Sensitive Data and Cryptography

- [ ] Secrets, tokens, passwords, private keys, and credentials are not committed, printed, or logged.
- [ ] Sensitive data and PII are minimized in responses, logs, analytics, and errors.
- [ ] Passwords/tokens use appropriate hashing, storage, expiry, and rotation behavior.
- [ ] Cryptography uses trusted libraries and approved algorithms, not custom crypto.
- [ ] Transport security and cookie flags are appropriate for auth/session data.
- [ ] Encryption keys and signing secrets have clear ownership, rotation, and revocation paths where required.

### Injection and Input Handling

- [ ] Database queries are parameterized or use safe ORM/query-builder APIs.
- [ ] Shell commands avoid unsafe string concatenation and validate arguments.
- [ ] Template rendering escapes untrusted data by default.
- [ ] Output encoding matches the destination context: HTML, JavaScript, URL, SQL, shell, LDAP, XML, or JSON.
- [ ] File paths, uploads, MIME types, sizes, and extensions are validated.
- [ ] User-controlled redirects, URLs, callback parameters, and webhook targets are constrained.
- [ ] Dynamic evaluation, reflection, expression languages, and deserialization are avoided or tightly controlled.

### Secure Design and Business Logic

- [ ] Abuse cases and bypass paths were considered.
- [ ] Trust boundaries are explicit for users, roles, tenants, services, queues, webhooks, and third parties.
- [ ] State transitions cannot skip required approvals or validations.
- [ ] Rate limits, quotas, idempotency, and replay protections are considered where relevant.
- [ ] Error handling fails closed for security-sensitive flows.
- [ ] High-risk behavior requires human review when project policy requires it.
- [ ] Security controls are designed into the workflow, not only added as validation at the edge.

### Authentication and Session Logic

- [ ] Login, logout, refresh, reset-password, invitation, and account recovery flows are reviewed.
- [ ] Session/token expiry and revocation behavior is clear.
- [ ] Cookies use secure flags when applicable: `HttpOnly`, `Secure`, `SameSite`.
- [ ] Account enumeration and brute-force risks are considered.
- [ ] MFA or stronger verification requirements are respected where applicable.
- [ ] Session fixation, token replay, remember-me behavior, and device/session management are considered.

### Software and Data Integrity

- [ ] Unsafe deserialization or untrusted plugin/module loading is avoided.
- [ ] Data migrations, import/export jobs, and background processors preserve integrity on retry or failure.
- [ ] Webhooks, callbacks, and integration messages authenticate the sender and verify signatures when available.
- [ ] Updates, generated code, templates, binaries, and model/config artifacts are reviewed before release.
- [ ] Integrity checks, signatures, checksums, or provenance controls are used where project policy requires them.

### Logging, Monitoring, and Incident Evidence

- [ ] Security-relevant events are logged with enough context for investigation.
- [ ] Logs avoid secrets, raw tokens, passwords, private keys, and unnecessary PII.
- [ ] Authentication, authorization, payment, data export, and admin actions are auditable where required.
- [ ] Errors do not leak stack traces, SQL, credentials, or internal infrastructure details to users.
- [ ] Alerting or review paths exist for repeated auth failures, access denials, suspicious admin actions, dependency failures, and integration failures where required.

### Exceptional Conditions and Failure Handling

- [ ] User-facing errors are generic and do not expose sensitive internals.
- [ ] Auth, authorization, payment, policy, and tenant-scope failures fail closed.
- [ ] External calls have timeout, retry, and safe fallback behavior.
- [ ] Retries are bounded and idempotent for state-changing operations.
- [ ] Transactions or compensation logic protect multi-step workflows.
- [ ] Background jobs handle duplicate delivery, partial failure, poison messages, and replay safely.
- [ ] Race conditions and concurrent requests cannot bypass approvals, limits, quotas, inventory, or ownership checks.
- [ ] Panic/recover, exception handlers, middleware, and global error handlers preserve security checks and audit logs.

### SSRF and External Requests

- [ ] Outbound requests validate scheme, host, port, and path.
- [ ] Internal IPs, localhost, link-local, metadata services, and private networks are blocked unless explicitly allowed.
- [ ] Redirects are constrained or revalidated.
- [ ] Timeouts, response size limits, and content-type checks are configured.
- [ ] Webhook/callback integrations authenticate requests and verify signatures when available.
- [ ] DNS rebinding, URL parser confusion, alternate IP formats, IPv6, and proxy behavior are considered for high-risk outbound requests.

## Final Review Output

Record:

- OWASP Top 10 2025 areas touched by the change.
- Findings by severity: blocking, high, medium, low, note.
- Files/functions reviewed.
- Tests or checks run.
- Human confirmation required.
