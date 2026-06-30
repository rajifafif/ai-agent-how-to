# Automation Project Structure Template

Copy this structure only when the target repository does not already have a better test
organization. Do not overwrite existing tests blindly.

```text
tests/
├── unit/             # isolated logic checks
├── integration/      # component/database/service collaboration checks
├── api/              # HTTP/RPC/API contract behavior checks
├── e2e/              # focused user journeys
├── contract/         # provider/consumer contracts when relevant
├── smoke/            # minimal release/deployment health checks
├── fixtures/         # safe reusable test data
├── helpers/          # shared utilities
└── reports/          # generated artifacts; usually gitignored
```

Setup rules:

1. Inspect existing repository structure first.
2. Detect the current stack and test framework.
3. Reuse existing conventions when present.
4. Add only folders needed by the chosen test scope.
5. Document actual commands in project docs or `AGENTS.md`.
6. Mark unknown information as `Needs confirmation`.
