# AI-Agent-Ready Repository Standard

Status: Detail reference

Source of truth: `../standards/ai-ready-repository-standard.md`.

This file remains as a detailed reference for repository readiness. New minimum-file or
starter-pack policy changes should update the canonical standard first.

A repository is AI-agent-ready when humans and AI agents can understand how to inspect,
change, verify, document, and hand off work without guessing.

## Required When Applicable

A target repository should document:

- `AGENTS.md`;
- architecture overview;
- repository map;
- setup instructions;
- install command;
- development command;
- test command;
- lint command;
- type-check command;
- build command;
- migration command;
- seed command;
- verification command;
- environment documentation;
- code conventions;
- dependency rules;
- testing rules;
- git safety rules;
- security boundaries;
- sensitive-file rules;
- generated-file rules;
- documentation update rules;
- workflow routing;
- source-of-truth definitions;
- unfinished-work handoff;
- human approval boundaries.

## AI Setup Rules

An AI agent preparing a target repository must:

1. Inspect the target repository.
2. Detect the real stack.
3. Discover actual commands from files and scripts.
4. Propose changes before large edits.
5. Preserve existing valid documentation.
6. Mark unknown information as `Needs confirmation`.
7. Obtain human review before treating generated docs as authoritative.
8. Remove temporary bootstrap material after durable docs/prompts/templates are installed.

## Do Not Blindly Overwrite

Do not overwrite target-project files without inspecting them. If `AGENTS.md`, `README.md`,
`docs/`, `prompts/`, or `templates/` already exist, merge useful content and preserve
project-specific rules.

## Minimal AI-Ready File Set

| File | Purpose |
| --- | --- |
| `AGENTS.md` | Main AI-agent operating rules. |
| `docs/architecture.md` or equivalent | How the system is organized. |
| `docs/testing.md` or equivalent | Real test strategy and commands. |
| `docs/environment.md` or equivalent | Environment variables and setup. |
| `docs/ai-workflows.md` | Workflow routing for short prompts. |
| `prompts/` | Reusable detailed prompts when needed. |
| `templates/` | Plans, handoffs, PR/QA/security templates. |

## Validation

Use `../scripts/validate-ai-agent-readiness.sh` from the toolkit root to check file
presence and simple consistency. The script does not validate semantic correctness.

## Acceptance Criteria

A repository is ready for pilot use when:

- `AGENTS.md` exists and names real or `Needs confirmation` commands;
- setup/test/verification instructions are not fictional;
- sensitive-file and git safety rules are explicit;
- workflow routing exists for feature, bugfix, verification, security, PR, and handoff;
- high-risk human approval boundaries are named;
- temporary bootstrap folders are removed or marked temporary;
- at least one Developer and one reviewer manually checked the generated docs.
