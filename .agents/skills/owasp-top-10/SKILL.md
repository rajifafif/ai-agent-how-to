---
name: owasp-top-10
description: OWASP Top 10 2025 security vulnerabilities with detection and remediation patterns. Use when conducting security audits, implementing secure coding practices, or reviewing code for common security vulnerabilities.
keywords:
  - CSRF
  - OWASP
  - SQL injection
  - XSS
  - authentication failure
  - broken access control
  - cryptographic failure
  - injection
  - security audit
  - security vulnerability
file_patterns:
  - '**/*secret*.*'
  - '**/*auth*.*'
  - '**/*security*.*'
  - '**/auth/**'
  - '**/security/**'
  - '**/*.php'
  - '**/*.go'
  - '**/*.js'
  - '**/*.ts'
  - '**/*.py'
  - '**/*.java'
  - '**/*.rb'
  - '**/*.cs'
confidence: 0.9
---

# OWASP Top 10 Security Vulnerabilities

Expert guidance for identifying, preventing, and remediating the most critical web application security risks based on OWASP Top 10 2025.

## Language-Agnostic Usage

This skill applies to any web, API, backend, frontend, worker, mobile backend, or service
codebase. Examples may use JavaScript, PHP, Go, Python, SQL, or framework-specific APIs,
but reviewers must evaluate security patterns in the actual project stack.

Do not assume Node.js/npm tooling unless the repository uses it. Detect the real stack from
project files, framework files, lock files, CI configuration, and documented commands. Run
only available project commands; do not invent commands.

## When to Use This Skill

- Conducting security audits and code reviews
- Implementing secure coding practices in new features
- Reviewing authentication and authorization systems
- Assessing input validation and sanitization
- Evaluating third-party dependencies for vulnerabilities
- Designing security controls and defense-in-depth strategies
- Preparing for security certifications or compliance audits
- Investigating security incidents or suspicious behavior

## OWASP Top 10 2025 Overview

**Ranked by Risk Severity:**

1. **A01:2025** - Broken Access Control
2. **A02:2025** - Security Misconfiguration
3. **A03:2025** - Software Supply Chain Failures
4. **A04:2025** - Cryptographic Failures
5. **A05:2025** - Injection
6. **A06:2025** - Insecure Design
7. **A07:2025** - Authentication Failures
8. **A08:2025** - Software or Data Integrity Failures
9. **A09:2025** - Security Logging and Alerting Failures
10. **A10:2025** - Mishandling of Exceptional Conditions

The old 2021 categories are still useful as supporting review references. In 2025,
Vulnerable and Outdated Components is covered primarily by Software Supply Chain Failures,
and SSRF should still be reviewed under Injection, Insecure Design, and outbound request
handling.

## Quick Reference

Load detailed guidance for each vulnerability:

| Vulnerability | Reference File |
|---|---|
| **A01 Broken Access Control** | `skills/owasp-top-10/references/broken-access-control.md` |
| **A02 Security Misconfiguration** | `skills/owasp-top-10/references/security-misconfiguration.md` |
| **A03 Software Supply Chain Failures** | `skills/owasp-top-10/references/software-supply-chain-failures.md` |
| **A04 Cryptographic Failures** | `skills/owasp-top-10/references/cryptographic-failures.md` |
| **A05 Injection** | `skills/owasp-top-10/references/injection.md` |
| **A06 Insecure Design** | `skills/owasp-top-10/references/insecure-design.md` |
| **A07 Authentication Failures** | `skills/owasp-top-10/references/authentication-failures.md` |
| **A08 Software or Data Integrity Failures** | `skills/owasp-top-10/references/integrity-failures.md` |
| **A09 Security Logging and Alerting Failures** | `skills/owasp-top-10/references/logging-monitoring.md` |
| **A10 Mishandling of Exceptional Conditions** | `skills/owasp-top-10/references/exceptional-conditions.md` |
| **SSRF supporting reference** | `skills/owasp-top-10/references/ssrf.md` |
| **Vulnerable components supporting reference** | `skills/owasp-top-10/references/vulnerable-components.md` |
| **Prevention Strategies** | `skills/owasp-top-10/references/prevention-strategies.md` |
| **Assessment Workflow** | `skills/owasp-top-10/references/assessment-workflow.md` |

## Security Audit Workflow

1. **Identify Scope**: Determine application components and attack surface
2. **Select Vulnerabilities**: Choose relevant OWASP categories based on features
3. **Load Reference**: Read appropriate reference file(s) for detailed patterns
4. **Analyze Code**: Review code against vulnerable and secure patterns
5. **Document Findings**: Record vulnerabilities with severity and remediation
6. **Verify Fixes**: Test that remediations properly address issues
7. **Test Security**: Run automated security testing (SAST, DAST, SCA)

## Core Security Principles

### Defense in Depth
- Layer security controls at network, application, data, and monitoring levels
- Ensure failure of one control doesn't compromise entire system

### Secure by Default
- Deny all access by default, explicitly grant permissions
- Fail securely (errors don't expose sensitive information)
- Minimize attack surface (disable unused features)
- Apply least privilege to all accounts and services

### Input Validation
- Validate type, length, format, and allowed values
- Use allow-lists over deny-lists
- Sanitize for specific context (SQL, HTML, shell, etc.)
- Never trust client input

## Common Mistakes

1. **Trusting User Input**: Always validate and sanitize all user-supplied data
2. **Rolling Your Own Crypto**: Use established libraries (bcrypt, AES-256)
3. **Exposing Errors**: Log detailed errors internally, show generic messages to users
4. **Missing Authorization**: Check permissions on every request, not just UI
5. **Weak Session Management**: Use secure, httpOnly, sameSite cookies with HTTPS
6. **Ignoring Dependencies**: Regularly audit and update third-party libraries
7. **No Logging**: Log security events for detection and incident response
8. **Default Configurations**: Harden all systems, disable defaults

## Security Testing Tools

Use tools that match the actual repository stack and are available in the project. Do not
fail a review just because an optional tool is not installed; report what was and was not
run.

**SAST (Static)**: SonarQube, Semgrep, CodeQL, framework security linters
**DAST (Dynamic)**: OWASP ZAP, Burp Suite
**SCA (Dependencies)**:
- JavaScript/TypeScript: `npm audit`, `pnpm audit`, `yarn audit`, `bun audit` when available
- PHP: `composer audit`
- Go: `govulncheck`
- Python: `pip-audit`, `safety`
- Containers/images: Trivy, Grype
**Secrets Scanning**: GitGuardian, TruffleHog, Gitleaks
**Penetration Testing**: Metasploit, Kali Linux tools

## Resources

- **OWASP Top 10 2025**: https://owasp.org/Top10/2025/
- **OWASP Top 10 project**: https://owasp.org/Top10/
- **OWASP Cheat Sheets**: https://cheatsheetseries.owasp.org/
- **OWASP ASVS**: Application Security Verification Standard
- **CWE Top 25**: Common Weakness Enumeration
- **NIST Cybersecurity Framework**: https://www.nist.gov/cyberframework
- **CVE Database**: https://cve.mitre.org/
- **Snyk Vulnerability DB**: https://snyk.io/vuln/
