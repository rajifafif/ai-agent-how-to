# AI-Ready Repository Standard

A repository is AI-ready when an AI agent can understand how to work safely without repeated manual explanation.

## Minimum Files

```text
AGENTS.md
README.md
docs/PROJECT_CONTEXT.md
docs/ARCHITECTURE.md
docs/DEVELOPMENT.md
docs/TESTING.md
docs/SECURITY.md
.github/pull_request_template.md
scripts/verify.sh
```

## Minimum AGENTS.md Content

- documents to read first;
- repository boundaries;
- real setup/test/lint/build commands;
- sensitive files and restricted areas;
- coding conventions;
- security requirements;
- commit and PR rules;
- definition of done;
- human approval boundaries.

## Rule

Do not blindly copy this toolkit. Inspect the target repository, preserve useful existing docs, and mark unknowns as `Needs confirmation`.
