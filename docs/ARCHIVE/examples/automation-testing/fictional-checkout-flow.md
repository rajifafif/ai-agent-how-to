# Fictional Example: Checkout Flow Automation

Status: Example

This is an example only. The project is fictional and non-sensitive.

Project: `Sample Shop`
Flow: guest checkout for a demo product

## Requirement

A guest user can add a demo product to cart, enter shipping details, choose a mock payment
method, and receive an order confirmation.

## Risk Assessment

| Risk | Level | Automation approach |
| --- | --- | --- |
| Cart total incorrect | High | Unit + API tests. |
| Order API accepts invalid address | High | API validation tests. |
| UI checkout breaks on release | High | Focused E2E smoke test. |
| Payment provider unavailable | Medium | Mock provider contract test. |

## Example Test Distribution

| Layer | Example check |
| --- | --- |
| Unit | Price calculation handles quantity and discount. |
| API | `POST /orders` rejects missing shipping address. |
| Contract | Mock payment provider response shape is honored. |
| E2E | Add product -> checkout -> confirmation using stable test data. |
| Smoke | Health check + one checkout happy path in staging with mock payment. |

## Example Evidence

```text
example only — not a real command result
npm test -- checkout-calculation
npm run test:api -- orders
npm run test:e2e -- checkout-smoke
```

Do not copy these commands unless the target repository actually defines them.

## QA Handover Notes

- Validate error states for invalid address.
- Confirm order confirmation copy.
- Confirm mock payment is used, not real payment.
- Review accessibility labels on checkout form.

## Metrics Mapping

| Metric | Example mapping |
| --- | --- |
| Requirement coverage | Checkout requirement has unit, API, and E2E checks. |
| Risk coverage | High-risk cart total and order validation have automated checks. |
| Flaky-test rate | Track E2E retries over release window. |
| Regression duration | Measure checkout suite runtime in CI. |
