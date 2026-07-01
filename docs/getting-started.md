# Getting Started

Status: Active guide

This repository is a practical toolkit for building AI-agent-friendly engineering and QA
workflows. Use it as a source of reusable standards, templates, prompts, validation
scripts, and examples.

## Read This First

| Role | Start here | Then use |
| --- | --- | --- |
| Developer | `README.md`, `AGENTS.md`, `docs/ai-workflows.md` | Feature/bugfix/verification/PR prompts and templates. |
| QA Engineer | `README.md`, `guides/qa-handover-workflow.md` | QA handover, bug report, release readiness, testing prompts. |
| Tech Lead | `docs/implementation-roadmap.md`, `standards/README.md` | Social contract, PR standard, architecture workflow, security approval rules. |
| QA Lead | `docs/implementation-roadmap.md`, `standards/testing-standard.md` | Bug/SLA, automation metrics, automation testing standard. |
| DevOps | `README.md`, `templates/STARTER_PACK/README.md` | Deployment readiness and validation prompts/templates. |
| Security Reviewer | `guides/security-review-workflow.md`, `standards/secure-coding-standard.md` | Secure coding checklist and security review prompt/template. |
| AI Agent | `AGENTS.md` | `docs/ai-workflows.md`, `docs/prompt-library.md`, and task-specific prompts. |
| Engineering Manager | `docs/implementation-roadmap.md` | Metrics, SLA, incident, adoption, and ownership artifacts. |

## How to Use This Toolkit in a Target Repository

1. Inspect the target repository first.
2. Detect the real stack, commands, CI, architecture, and documentation that already
   exist.
3. Copy only the guides/templates/prompts needed for the pilot workflow.
4. Generate or update `AGENTS.md` from `templates/AGENTS.template.md`.
5. Mark unknown project-specific values as `Needs confirmation`.
6. Ask for human review before treating generated documentation as authoritative.
7. Remove temporary bootstrap material after reusable prompts/templates have been copied.

## Mandatory vs Template Files

| Type | How to treat it |
| --- | --- |
| Root `README.md` | Canonical navigation for this toolkit. |
| `AGENTS.md` | Operating rules for AI agents inside this repository. In a target repository, customize it based on real project facts. |
| `docs/*standard*.md` | Normative guidance once adopted by a team. |
| `templates/*.template.md` | Copy/customize; keep placeholders until humans provide values. |
| `prompts/*.md` | Copy-paste or reference from short daily prompts. |
| `docs/examples/`, when present | Fictional examples only; never treat as policy. |

## Safe Customization Rules

- Prefer linking to canonical guides instead of duplicating rules.
- Keep examples clearly labelled as examples.
- Do not add fictional commands, CI names, owners, contacts, SLA targets, or KPI targets.
- Preserve useful existing project docs unless they conflict with agreed source-of-truth
  rules.
- When replacing a file path, add a compatibility note or update all links.
