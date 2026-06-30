# Prepare Pull Request Prompt

Copy and paste this prompt from the target repository root.

```text
Read AGENTS.md first.

Prepare Pull Request content for the current repository changes.

Objective:
Create accurate PR text and checklist evidence based on the real current diff.

Inputs:
- Current git status and diff.
- Existing PR template if present.
- Relevant issue/requirement if provided: [LINK OR NEEDS CONFIRMATION]
- Target branch/release context if provided: [CONTEXT OR NEEDS CONFIRMATION]

Process:
1. Inspect git status and the full current diff before writing PR text.
2. Read standards/pull-request-standard.md if it exists.
3. Read templates/PR_CHECKLIST.template.md or .github/PULL_REQUEST_TEMPLATE.md if present.
4. Identify affected modules, behavior changes, config/env changes, API changes,
   database/migration changes, security impact, performance impact, documentation impact,
   and QA validation scope.
5. Inspect available verification evidence from command output or documented manual checks.
6. If verification is missing, state exactly what is not run and why.
7. Do not invent test results, screenshots, issue links, owners, or deployment notes.
8. Do not commit, push, open a PR, or edit remote metadata unless explicitly asked.

Constraints:
- Do not claim tests passed unless the command ran successfully.
- Mark unknown facts as Needs confirmation.
- Keep PR content concise but complete.

Expected output:
- PR title suggestion.
- PR body using the repository template if available.
- Completed checklist with unchecked or Needs confirmation items preserved.
- Verification evidence table.
- QA handover summary.
- Risks and remaining human decisions.

Human confirmation required when:
- High-risk changes are present.
- Deployment or rollback notes are uncertain.
- SLA/security/release approval decisions are needed.
- Required verification could not run.
```
