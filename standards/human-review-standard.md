# Human Review Standard

AI agents must not perform all actions autonomously.

## Usually Requires Explicit Human Approval

- creating commits;
- creating or merging pull requests;
- pushing to remote branches;
- deleting files or data;
- running destructive migrations;
- changing access control;
- changing authentication/session logic;
- modifying production infrastructure;
- rotating credentials;
- publishing releases;
- modifying payments/billing;
- changing security policies;
- adding high-risk dependencies;
- suppressing security findings.

Project `AGENTS.md` should classify actions as:

```text
Allowed automatically
Allowed after confirmation
Prohibited
```
