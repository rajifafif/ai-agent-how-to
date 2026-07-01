# OpenCode Adoption Guide

## Use These Prompts

For pilot project setup, use `../prompts/bootstrap-existing-project.md` from the target project root.
For daily work, use the task prompts routed by `../docs/ai-workflows.md`.

This guide explains rollout. The prompts are the runnable entry points.

Use this guide to roll out the toolkit to developers using OpenCode.

## Simple Explanation

This repo is the company standard. Each project gets local `AGENTS.md`. Skills make common commands easy.

## First Project Setup

1. Pick one pilot project.
2. Run the local bootstrap script in dry-run mode, then apply only the files the project needs.
3. Fill real commands in `AGENTS.md`.
4. Install or copy needed skills.
5. Ask OpenCode: `Read AGENTS.md first.`
6. Pilot feature -> PR -> QA handover.

## Daily Commands

```text
Implement this feature: ...
Review this change for security issues
Create commits for the completed work
Create a pull request from this branch
Prepare QA handover
```

## Rule

OpenCode should read project `AGENTS.md` automatically through skills or explicit instruction.
