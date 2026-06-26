# Security Review Guide

Security review is a separate evaluator step after implementation. It is not the same as
normal code review.

## When to Perform Security Review

Perform security review for any change involving user input, data access, permissions,
external systems, file handling, configuration, dependencies, or persistence.

## Review Levels

| Level | Use when | Reviewer focus |
| --- | --- | --- |
| Normal review | Routine low-risk changes | Correctness, maintainability, tests, scope |
| Security-sensitive review | Input, auth, permissions, data, files, network, migrations, dependencies | Abuse cases and vulnerability classes |
| Mandatory human review | High-risk areas listed below | Human decision on risk acceptance |

## Mandatory Human Review

Human review is mandatory for changes involving:

- Authentication
- Authorization
- Permissions
- Payments
- Personal or sensitive data
- Data deletion
- Database migrations
- File uploads
- Production configuration
- Cryptography
- Tenant or organization boundaries

## How to Review

1. Inspect the diff before reading the implementation explanation.
2. Identify new or changed trust boundaries.
3. Trace user input to storage, rendering, logs, network calls, commands, and file
paths.
4. Confirm authorization happens server-side, not only in the UI.
5. Check tenant or organization scoping on every data access path.
6. Look for secrets in code, tests, logs, and documentation.
7. Check migration and deletion safety.
8. Report evidence, exploit scenario, severity, and remediation.

## AI Review Is Not Enough

An AI security review is an additional evaluator, not a replacement for security testing
or mandatory human approval. It does not replace:

- human approval
- threat modeling for critical systems
- security testing
- dependency scanning
- penetration testing when required
- production monitoring

## Stack Reminders

- Native PHP 5.6 / PHP 7.4: string-built SQL, direct superglobals, unsafe includes, weak
sessions, missing escaping, old runtime limitations.
- jQuery: `.html()` XSS, DOM XSS, inline handlers, trusting API responses, client-only
permissions.
- Laravel: policies, gates, middleware, form request authorization, mass assignment, raw
SQL, CSRF, storage visibility, tenant-scoped route model binding.
- Go: ignored errors, timeouts, SQL construction, command execution, path handling,
goroutine leaks, race conditions, unsafe logs.
- React: unsafe HTML rendering, token storage, frontend environment variables,
client-only authorization, redirects, dependency risks.
