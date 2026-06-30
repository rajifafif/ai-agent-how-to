# Bug Report Standard

A bug report must make the problem reproducible, understandable, and triageable. It must
separate observed evidence from assumptions.

## Required Fields

- Clear title.
- Environment.
- Build, version, commit, or release identifier.
- Preconditions.
- Reproduction steps.
- Expected result.
- Actual result.
- Frequency.
- Severity.
- Priority.
- User or business impact.
- Affected scope.
- Evidence.
- Logs with sensitive data redacted.
- Suspected regression.
- Workaround.
- Ownership.
- Status.
- Validation notes.
- Closure evidence.

## Severity vs Priority

Severity describes impact. Priority describes business ordering. A high-severity bug may
not always be the next priority, and a low-severity bug can become high priority for a
specific business deadline.

Use `docs/qa/bug-severity-and-sla.md` for severity definitions and customizable SLA
planning.

## Good Bug Report Rules

- Use exact steps, not vague descriptions.
- Include actual data values only when safe and non-sensitive.
- Redact credentials, tokens, personal data, and restricted information.
- Attach screenshots, recordings, API examples, console logs, network traces, or server
  logs when useful.
- State when reproduction is intermittent.
- State what was not verified.
- Avoid blame language.

## Closure Criteria

A bug may be closed only when:

- Fix version/build/commit is known or marked `Needs confirmation`.
- Validation steps were executed or explicitly waived by the right owner.
- Actual result now matches expected result or accepted behavior changed.
- Closure evidence is attached or referenced.
- Any follow-up work is linked or marked `Needs confirmation`.
