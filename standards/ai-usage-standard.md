# AI Usage Standard

AI agents may assist development, QA, security review, documentation, commits, and PRs, but humans remain accountable.

## Required Behavior

- Read project `AGENTS.md` before acting.
- Inspect repository state before changing files.
- Use actual project commands, not invented commands.
- Treat AI output as untrusted until reviewed and verified.
- Do not include secrets, credentials, restricted data, or personal data in prompts or outputs.
- Do not claim tests passed unless executed successfully.
- Mark unknown project facts as `Needs confirmation`.
- Ask for human approval before high-risk actions.

## Standard Workflow

For non-trivial feature work, developers and AI agents must use the feature development lifecycle in `guides/feature-development-workflow.md`.

```text
Understand -> Plan -> Impact Check -> Confirm -> Task -> Implement -> Update -> Verify -> Review/Secure -> PR
```

Do not skip planning for feature work unless the change is tiny, low-risk, and clearly specified. Plans must surface open questions and impact before implementation starts. High-risk features require security review before implementation and again after the diff exists.

## Human Accountability

The developer or reviewer owns the final decision. AI may draft, inspect, and suggest, but it must not bypass review, security approval, or release controls.
