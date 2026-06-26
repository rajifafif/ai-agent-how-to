# AI-Assisted Development Lifecycle

This lifecycle is for teams using AI coding agents as helpers, not decision owners.

## Lifecycle

1. Prepare context
   - Make sure the project has `AGENTS.md`, setup notes, architecture notes, and testing notes.
   - If a fact is not known, write “Needs confirmation”.

2. Define the task
   - State the requested behavior, acceptance criteria, constraints, and out-of-scope items.

3. Inspect before planning
   - The agent should inspect real files before proposing design.
   - Do not let the agent invent architecture, commands, APIs, or migration systems.

4. Create a written plan
   - Keep the plan short and practical.
   - Include affected files, risks, tests, documentation impact, and human approval points.

5. Implement in small steps
   - Prefer focused diffs.
   - Follow existing patterns.
   - Avoid unrelated refactoring.

6. Verify deterministically
   - Run relevant commands and checks.
   - Record exact commands and results.
   - Green tests help, but they do not prove the implementation is correct.

7. Perform independent review
   - Ask a separate review pass to inspect correctness, scope, maintainability, and missing tests.

8. Perform security review
   - Treat security review as a separate step from implementation.
   - Use an adversarial mindset.

9. Update documentation
   - Update only docs affected by the actual change.
   - Keep commands exact or clearly labeled as examples.

10. Obtain human approval
    - Human approval is required before commits and before sensitive changes are accepted.

11. Commit
    - Stage explicit files.
    - Create focused commits only after approval.
    - Do not push unless separately authorized.

12. Persist unfinished state
    - Save plans and handoffs in repository files.
    - Do not rely on chat history as durable memory.

## Workflow Diagram

```text
Prepare -> Define -> Inspect -> Plan -> Implement
                                      |
                                      v
Handoff <- Commit <- Human Approval <- Docs <- Security Review <- Verify
   |                                                                  ^
   +-------------------------- Continue -----------------------------+
```

## Evidence Types

| Evidence type | What it means | Limitation |
| --- | --- | --- |
| Agent-generated output | Explanation, code, plan, or review produced by an AI agent | Can be wrong or incomplete |
| Deterministic verification | Actual test, lint, typecheck, build, migration, manual, API, or browser check output | Only covers what was checked |
| Independent evaluator review | Separate review pass focused on correctness, scope, or security | Still not a substitute for human ownership |
| Human approval | Human decision to accept risk, merge, commit, deploy, or continue | Requires enough evidence to be meaningful |

## Sensitive Work Requires Human Review

Mandatory human review applies to authentication, authorization, permissions, payments, personal data, data deletion, migrations, production configuration, cryptography, file uploads, and tenant or organization boundaries.
