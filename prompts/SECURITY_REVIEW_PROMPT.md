# Security Review Prompt

Copy and paste this prompt from the target repository root.

```text
Read AGENTS.md first.

Perform an adversarial security review of the current diff. Assume the change may contain vulnerabilities until evidence shows otherwise.

Do not modify code. Do not commit.

Review for:
- Authentication bypass
- Missing authorization or permission checks
- IDOR or insecure direct object access
- Tenant or organization isolation failures
- SQL injection
- XSS
- CSRF
- Command injection
- Path traversal
- Unsafe file upload handling
- Unsafe deserialization
- Server-side request forgery where relevant
- Sensitive data exposure
- Secrets in code, configuration, logs, or tests
- Weak validation
- Unsafe redirects
- Insecure defaults
- Dependency or configuration risks
- Data deletion or migration risks
- Race conditions where relevant

Stack-specific reminders:

Native PHP 5.6 and PHP 7.4:
- Look for string-built SQL queries and missing prepared statements.
- Check direct use of `$_GET`, `$_POST`, `$_REQUEST`, and uploaded files.
- Check unsafe `include`, `require`, `eval`, `exec`, `shell_exec`, or similar calls.
- Check weak password handling.
- Check missing output escaping.
- Check legacy session and cookie settings.
- Consider compatibility limitations of old PHP versions.

jQuery:
- Check unsafe `.html()` usage.
- Check DOM-based XSS.
- Check whether API responses are trusted before rendering.
- Check inline event handlers.
- Check client-side-only permission enforcement.

Laravel:
- Check missing policies, gates, middleware, or request authorization.
- Check mass-assignment problems.
- Check unsafe raw SQL.
- Check missing validation.
- Check incorrect CSRF assumptions.
- Check queue or job authorization boundaries.
- Check storage visibility.
- Check route model binding and tenant scoping.

Go:
- Check missing request timeouts.
- Check ignored errors.
- Check unsafe command execution.
- Check path handling.
- Check SQL query construction.
- Check goroutine leaks and race conditions.
- Check authentication middleware coverage.
- Check unsafe logging of request data.

React:
- Check unsafe HTML rendering.
- Check token storage.
- Check client-side-only authorization.
- Check secrets exposed through frontend environment variables.
- Check unsafe redirect or URL handling.
- Check dependency and supply-chain risks.

For each finding include:
- Severity
- File and location
- Evidence
- Exploit or failure scenario
- Recommended remediation
- Remaining uncertainty

Final verdict must be one of:
- PASS
- PASS WITH WARNINGS
- FAIL
- BLOCKED

Also state whether mandatory human review is required.
```
