# AI-Agent-Ready Repository Template

Use this folder as bootstrap guidance for target repositories. Do not copy blindly over an
existing repository.

## Setup Flow

1. Inspect target repository structure and existing docs.
2. Detect real stack, package managers, frameworks, CI, test tools, and commands.
3. Compare existing docs against `docs/ai-agent-ready-repository-standard.md`.
4. Propose changes before editing.
5. Generate or update `AGENTS.md` from `templates/AGENTS.template.md`.
6. Copy only relevant prompts/templates.
7. Mark unknown facts as `Needs confirmation`.
8. Ask for human review.
9. Remove temporary bootstrap material.

## Suggested Target Files

```text
AGENTS.md
docs/architecture.md
docs/testing.md
docs/environment.md
docs/ai-workflows.md
docs/plans/
docs/handoffs/
prompts/
templates/
```

## Validation

Run from the target repository after copying the script:

```bash
scripts/validate-ai-agent-readiness.sh
```

The script checks presence/simple consistency only. It does not prove the documentation is
accurate.
