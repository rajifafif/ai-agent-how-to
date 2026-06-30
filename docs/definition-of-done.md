# Definition of Done Framework

Status: Canonical

Use this framework to decide whether a documentation standard, workflow, prompt, or
template is actually complete. A file existing is not enough.

## Documentation and Workflow Definition of Done

An item is complete only when:

1. The intended document or template exists.
2. It is linked from the correct index or router.
3. Terminology is consistent with `docs/glossary.md`.
4. It does not duplicate another source of truth.
5. It includes ownership or owner-role guidance.
6. It includes adoption instructions.
7. It includes acceptance criteria.
8. It includes an example where useful.
9. It has been manually reviewed.
10. Links and structure have been validated.
11. AI-agent instructions are unambiguous.
12. Unknown organization-specific values remain configurable.
13. The output can be piloted in at least one target repository.
14. Feedback and maintenance ownership are defined.

## Evidence Required

| Evidence | Required for |
| --- | --- |
| File path | Every artifact. |
| Link from index/router | Guides, prompts, templates, examples, scripts. |
| Acceptance criteria | Standards, workflows, templates, scripts. |
| Owner role | Standards, gates, reviews, incident workflows. |
| Verification note | Scripts, examples, prompts that claim executable behavior. |
| Human decision list | SLA, KPI target, escalation, release approval, security approval. |

## Not Done Examples

- A PR template exists but does not require test evidence.
- A prompt says “run tests” but allows the agent to claim tests passed without command output.
- A QA workflow exists but does not define blockers between stages.
- An SLA table contains fictional organization targets that nobody approved.
- A translated file diverges from the English source without an outdated marker.

## Maintenance Rule

When a team discovers a better workflow during a pilot, update the canonical guide first,
then update templates/prompts that reference it. Do not copy-paste the full rule into many
prompts.
