# Automation Testing Standard

Status: Detail reference

This standard defines how automated tests should be designed, implemented, reviewed, and
maintained. It is technology-neutral and does not force one framework on all projects.

Item 9 defines implementation standards. Item 5, `automation-metrics-and-kpi.md`, defines
metrics and targets.

## Test Strategy

Use a distribution appropriate to the system, not a rigid pyramid.

| Test type | Purpose | Typical scope | Notes |
| --- | --- | --- | --- |
| Unit | Validate isolated logic. | Functions, methods, small modules. | Fast and deterministic. |
| Integration | Validate collaboration between components. | Database, service boundaries, modules. | Use controlled dependencies. |
| API | Validate externally consumed contracts. | REST/GraphQL/RPC endpoints. | Include auth, validation, errors, and compatibility. |
| UI / E2E | Validate critical user journeys. | Browser/mobile flows. | Keep focused; avoid brittle overuse. |
| Contract | Validate provider/consumer expectations. | APIs/events/integrations. | Useful for distributed systems. |
| Smoke | Validate minimum release health. | Deploy/startup/core flow. | Small, fast, release-oriented. |
| Regression | Re-check known risk areas. | Changed/impacted flows. | Prioritize by risk. |
| Accessibility | Validate accessible behavior. | UI components/pages. | Apply when UI is relevant. |
| Performance | Validate response/resource expectations. | Hot paths, load-sensitive flows. | Define thresholds per project. |
| Security | Validate abuse cases and controls. | Auth/authz/input/file/API flows. | Complements security review. |

## Framework Selection Decision Table

Examples only. Prefer the target project's current stack and approved tooling.

| Project type | Prefer existing tools when | Candidate examples |
| --- | --- | --- |
| JavaScript/TypeScript frontend | Project already uses Node/Bun ecosystem. | Vitest, Jest, Playwright, Cypress, Testing Library. |
| Backend API | Existing language test runner and HTTP tools exist. | Language unit runner, Postman/Newman, Schemathesis, Pact. |
| Go service | Go modules and standard tooling exist. | `go test`, httptest, testify, Pact. |
| PHP/Laravel | Composer/PHPUnit/Pest exists. | PHPUnit, Pest, Laravel test helpers. |
| Legacy web app | Limited tooling exists. | Characterization tests, smoke scripts, browser checks. |
| Mobile app | Native project tooling exists. | XCTest, Espresso, Detox, Appium. |

Selection criteria:

- already used by the project;
- supports the required test type;
- works in CI without external optional services;
- stable selectors/fixtures are possible;
- team can maintain it;
- reporting and debugging artifacts are available.

## Implementation Rules

- Tests must be deterministic and isolated.
- Test data must be controlled and cleaned up.
- Fixtures/utilities should be reusable but not hide important assertions.
- Mock at external boundaries, not the behavior under test.
- Prefer stable selectors such as `data-testid` for UI automation when appropriate.
- Avoid depending on test order.
- Keep tests named by behavior, not implementation detail.
- Tag tests by type/risk/scope where the framework supports it.
- Capture screenshots, traces, logs, or API artifacts for failure diagnosis when useful.
- Parallel execution must not cause shared-state conflicts.
- Retry policy must be explicit and limited; retries are not a substitute for fixing flaky
  tests.
- Quarantined tests require owner, reason, and repair target.

## Suggested Directory Structure

Use the project's existing convention if one exists. If not, adapt
`../../templates/AUTOMATION_PROJECT_STRUCTURE/`.

```text
tests/
├── unit/
├── integration/
├── api/
├── e2e/
├── contract/
├── smoke/
├── fixtures/
├── helpers/
└── reports/
```

## Test Review Checklist

- [ ] Test asserts meaningful behavior.
- [ ] Test would fail for the intended defect/regression.
- [ ] Setup and cleanup are clear.
- [ ] Test data is safe and deterministic.
- [ ] External dependencies are mocked or controlled appropriately.
- [ ] UI selectors are stable.
- [ ] Failure output is useful.
- [ ] Test does not require hidden local state.
- [ ] Test belongs at the right layer.
- [ ] Flaky risk is considered.

## CI Integration

Automated tests in CI should:

- use commands discovered from the real repository;
- fail on required quality gates;
- upload reports/artifacts when useful;
- not require optional external services unless guarded or mocked;
- separate smoke/fast checks from expensive scheduled checks when needed;
- clearly report skipped/quarantined tests.

## Flaky-Test Policy

When a test is flaky:

1. Record evidence and frequency.
2. Assign an owner.
3. Decide whether to fix immediately or quarantine.
4. If quarantined, document reason and repair target.
5. Do not silently delete the test unless risk is accepted and recorded.

## Acceptance Criteria

The automation testing standard is adopted when:

- the project has an agreed test distribution;
- automation candidates are tied to requirements or risks;
- test data and cleanup rules are documented;
- flaky-test handling is explicit;
- CI integration is documented or marked `Needs confirmation`;
- metrics are tracked separately through the KPI guide.
