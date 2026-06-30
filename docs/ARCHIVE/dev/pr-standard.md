# Pull Request Standard

Status: Detail reference

Source of truth: `../../standards/pull-request-standard.md`.

This file remains as a detailed PR reference. New organization-wide PR requirements should
update the canonical standard first.

A Pull Request must explain what changed, why it changed, how it was verified, and what
QA/reviewers need to know. It must not claim checks passed unless they actually ran.

## Source of Truth

- PR content standard: this file.
- Reusable checklist: `../../templates/PR_CHECKLIST.template.md`.
- GitHub template: `../../.github/PULL_REQUEST_TEMPLATE.md`.
- AI prompt: `../../prompts/PREPARE_PULL_REQUEST_PROMPT.md`.
- Verification rules: `../verification-guide.md`.

## Required PR Sections

1. Summary.
2. Business or technical purpose.
3. Scope and out-of-scope items.
4. Affected modules/files/areas.
5. Related issue, requirement, ticket, or `Needs confirmation`.
6. Implementation approach.
7. Testing instructions.
8. Test commands and actual results.
9. Testing evidence such as screenshots, recordings, logs, or API examples when relevant.
10. API contract changes.
11. Configuration or environment variable changes.
12. Database/migration changes.
13. Backward compatibility notes.
14. Security impact.
15. Performance impact.
16. Known limitations.
17. Risk assessment.
18. Rollback considerations.
19. Deployment notes.
20. QA handover.
21. Documentation changes.
22. Checklist confirmation.

## AI-Agent Rules for PR Preparation

An AI agent preparing PR content must:

- inspect `git status` and the actual diff first;
- identify changed files and affected areas from the repository, not from memory;
- read relevant project docs and existing PR conventions if present;
- use actual command output for verification claims;
- state `Not run` with a reason when a check was not executed;
- mark unknown ticket, owner, deployment, or rollback facts as `Needs confirmation`;
- not commit, push, open PRs, or edit remote metadata unless explicitly asked.

## What Blocks PR Readiness

A PR is not ready for normal review when:

- changed scope is unclear;
- no verification evidence is provided;
- tests are claimed without command evidence;
- security-sensitive changes lack human approval path;
- database/config/deployment changes are undocumented;
- QA cannot identify what to validate;
- known limitations are hidden.

## Acceptance Criteria

The PR standard is adopted when:

- PRs consistently include evidence and QA handover notes;
- reviewers can reproduce or understand verification steps;
- high-risk changes are flagged before merge;
- unknown organization-specific values remain configurable;
- the template is linked from `README.md`, `AGENTS.md`, or project contribution docs.
