# Automation Metrics and KPI

This guide defines how to measure automation progress and quality impact. It does not set
fictional targets. Teams must define baselines and targets from their own context.

Item 5 defines metrics and targets. Item 9, `automation-testing-standard.md`, defines how
automated tests should be implemented.

## Metric Principles

- A raw count of automated tests is not a quality metric by itself.
- Metrics must have a definition, formula, data source, owner, limitations, and review
  cadence.
- Prefer risk and requirement coverage over vanity counts.
- Track both implementation progress and release-quality outcomes.
- Include anti-gaming notes so teams do not optimize the number while reducing quality.

## Metric Categories

| Category | What it answers | Example metric |
| --- | --- | --- |
| Automation implementation progress | Are we building the planned automation? | Percentage of agreed automation candidates implemented. |
| Test coverage | Which code/paths are exercised? | Code coverage, endpoint coverage, UI flow coverage. |
| Requirement coverage | Which requirements have automated checks? | Requirements with at least one mapped automated test. |
| Risk coverage | Which high-risk flows have protection? | Critical risk scenarios with automated or documented checks. |
| Execution pass rate | Are automated checks passing? | Passed tests / executed tests. |
| Flaky-test rate | How much noise exists? | Flaky tests / executed tests over a time window. |
| Escaped defect rate | What defects reached later stages or production? | Escaped defects per release or per period. |
| Regression duration | How long does regression feedback take? | Time from test start to actionable result. |
| Defect detection stage | Where are defects found? | Defects found in dev, QA, staging, production. |
| Release quality indicators | Is release risk improving? | Open defects by severity, rollback count, hotfix count. |

## Recommended KPI Template Usage

Use `../../templates/AUTOMATION_KPI_PLAN.template.md` for planning and
`../../templates/AUTOMATION_COVERAGE_REPORT.template.md` for recurring reporting.

For each metric define:

- metric definition;
- formula;
- data source;
- baseline;
- target;
- reporting frequency;
- owner;
- limitations;
- anti-gaming notes;
- review cadence.

## Example Metrics

These are examples only. Do not copy targets without approval.

| Metric | Formula | Good use | Anti-gaming note |
| --- | --- | --- | --- |
| Requirement automation coverage | Requirements with automated checks / total agreed requirements | Shows whether important behavior is protected. | Do not split requirements artificially to improve percentage. |
| Critical risk coverage | Critical risk scenarios covered / agreed critical risk scenarios | Keeps automation focused on high-impact flows. | Do not mark shallow smoke checks as full risk coverage. |
| Flaky-test rate | Flaky tests observed / executed tests | Shows reliability of automation signal. | Do not delete tests to lower flake rate without risk acceptance. |
| Regression duration | End time - start time for regression run | Shows feedback speed. | Do not skip required checks to make duration look better. |
| Escaped defect rate | Production/staging defects / release or period | Shows quality outcome. | Normalize by release scope and detection quality. |

## Review Cadence

Recommended review points:

- Sprint/release review: pass rate, flaky tests, new coverage, blockers.
- Monthly/quarterly quality review: risk coverage, escaped defects, regression duration,
  automation ROI, maintenance cost.
- Post-incident review: detection gaps and missing automation candidates.

## Acceptance Criteria

Automation metrics are ready when:

- every KPI has an owner and data source;
- targets are approved or marked `Needs confirmation`;
- limitations and anti-gaming notes are explicit;
- metrics distinguish coverage/progress/outcome;
- reports are reviewed on a defined cadence;
- metric changes are linked to real process improvement decisions.
