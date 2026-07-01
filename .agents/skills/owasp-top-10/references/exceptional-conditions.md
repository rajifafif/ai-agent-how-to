# A10:2025 Mishandling of Exceptional Conditions

**Description:** The application handles errors, edge cases, timeouts, dependency failures,
rate limits, partial failures, or unexpected states in ways that expose data, bypass
controls, corrupt state, or make the system unreliable.

## Common Patterns

- Detailed stack traces, SQL errors, tokens, file paths, or internal hostnames shown to users.
- Exceptions swallowed without rollback, alerting, or safe fallback.
- Fail-open behavior when auth, policy, payment, inventory, or external validation fails.
- Missing timeout, retry, circuit breaker, or idempotency around external calls.
- Partial writes that leave inconsistent business state.
- Race conditions during concurrent requests or repeated retries.
- Background jobs retry unsafe operations without deduplication.
- Error paths skip authorization, audit logging, or data validation.

## Review Checklist

- [ ] User-facing errors are generic and do not expose sensitive internals.
- [ ] Internal logs contain enough context for investigation without leaking secrets or PII.
- [ ] Auth, authorization, payment, and policy failures fail closed.
- [ ] External calls have timeout and error handling.
- [ ] Retries are bounded and idempotent for state-changing operations.
- [ ] Transactions or compensation logic protect multi-step workflows.
- [ ] Background jobs handle duplicate delivery and partial failure safely.
- [ ] Rate limit and quota errors cannot be used to bypass business rules.
- [ ] Panic/recover, exception handlers, or middleware preserve security checks and audit logs.

## Examples

### Fail-Open Authorization

```text
VULNERABLE pattern:
If the policy service times out, the application allows the request.

SECURE pattern:
If the policy service times out, the application denies the request or uses a previously
validated safe decision with clear expiration and audit logging.
```

### Partial Failure

```text
VULNERABLE pattern:
Payment succeeds, order creation fails, and retry creates duplicate charges.

SECURE pattern:
Use idempotency keys, transactional state transitions, and reconciliation jobs.
```

## Remediation Patterns

- Fail closed for security-critical checks.
- Define explicit error contracts for APIs.
- Use centralized error handling and safe response mapping.
- Add timeouts to network calls and database operations.
- Use idempotency keys for retried state-changing requests.
- Add transaction boundaries or compensation steps for multi-step workflows.
- Log exceptional security events and alert on repeated failures.
