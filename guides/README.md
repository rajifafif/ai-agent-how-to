# Guides

Practical adoption and workflow guides.

Use guides when applying the standards to a real repository or workflow.
For agent execution, use the runnable prompt listed in the table. Guides explain the standard; prompts are the copy-paste/checklist entry points agents should follow.

| Guide | Use when | Runnable prompt |
| --- | --- | --- |
| `opencode-adoption-guide.md` | Rolling this toolkit out to developers using OpenCode. | `../prompts/bootstrap-existing-project.md` for pilot setup, then task prompts below. |
| `make-new-project-ai-ready.md` | Preparing a new repository for AI-assisted development. | `../prompts/bootstrap-existing-project.md` |
| `make-legacy-project-ai-ready.md` | Preparing an existing/legacy repo without changing behavior. | `../prompts/bootstrap-existing-project.md` |
| `repository-context-guide.md` | Creating project-local docs that AI agents can read. | `../prompts/bootstrap-existing-project.md` or `../prompts/initialize-project.md` |
| `feature-development-workflow.md` | Planning and implementing features with AI assistance. | `../prompts/plan-feature.md`, then `../prompts/implement-feature.md`, then `../prompts/create-pull-request.md` when authorized. |
| `bugfix-workflow.md` | Investigating and fixing bugs with AI assistance. | `../prompts/fix-bug.md` |
| `security-review-workflow.md` | Reviewing changes for security risks. | `../prompts/review-security.md` |
| `qa-handover-workflow.md` | Preparing QA-ready handover from a PR/change. | Needs prompt. Until created, use this guide as the checklist. |
| `unfinished-work-handover.md` | Saving context when work is incomplete. | `../prompts/continue-unfinished-work.md` |
