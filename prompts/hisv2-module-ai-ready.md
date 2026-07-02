# HISv2 Module AI-Ready Prompt

Copy-paste this prompt into an AI coding agent opened inside a HISv2 module folder, for example:

```text
/Users/rajifafif/www/html/awalbros/hisv2/module
```

The HISv2 root project is expected to be the parent directory:

```text
..
```

## Prompt

```text
You are opened inside one HISv2 module folder.

Goal: make this module AI-agent ready without copying the full HISv2 root toolkit into the module.

Important project layout:
- Current folder: this module.
- HISv2 root project: `..`
- Root agent guide: `../AGENTS.md`
- Root README: `../README.md`

Required behavior:
1. Read `../AGENTS.md` first.
2. Read `../README.md` second.
3. Use root rules, workflows, skills, prompts, security rules, commit rules, PR rules, release rules, and documentation rules from the HISv2 root project.
4. Then inspect this module to understand its real purpose, structure, commands, framework, entrypoints, and important files.
5. Create or update this module's `AGENTS.md`.
6. Create or update this module's `README.md`.
7. Keep both files concise.
8. Do not create or copy `.agents/skills` into this module.
9. Do not copy root docs/prompts/templates into this module.
10. Do not modify files outside this module unless explicitly asked.
11. Do not commit.
12. Do not invent module facts. If something is unclear, write `Needs confirmation`.

The module `AGENTS.md` is for AI-agent instructions. It must contain:

# AGENTS.md

This file is for AI agents opened directly inside this HISv2 module.

## Required Reading

Before non-trivial work in this module, read:

1. `../AGENTS.md`
2. `../README.md`
3. this module `README.md`

Use the HISv2 root files as the source of truth for shared rules, workflows, skills, prompts, security rules, commit rules, PR rules, release rules, and documentation rules.

## Module Scope

- Current folder is this module.
- HISv2 root project is `..`.
- Keep edits inside this module unless the user explicitly asks to change root/shared files.
- Use paths relative to this module in summaries unless touching root/shared files.

## Skills and Workflows

- Use root HISv2 skills and workflows from `..`.
- Do not copy root `.agents/skills`, docs, prompts, or templates into this module.
- If a task needs planning, verification, security review, commits, PR, release, handoff, or docs cleanup, follow the root HISv2 guide first.

## Module Facts

Module purpose: Needs confirmation
Main language/framework: Needs confirmation
Setup command: Needs confirmation
Test command: Needs confirmation
Build command: Needs confirmation

Only claim a command works after running it successfully.

The module `README.md` is for humans and module-specific details. It must contain:

# <Module Name>

Status: Needs confirmation

## Purpose

Explain what this module does based on repository evidence. If unclear, write `Needs confirmation`.

## HISv2 Root Guidance

This module is part of the HISv2 root project.

Before working with this module, AI agents must read:

1. `../AGENTS.md`
2. `../README.md`
3. this module `AGENTS.md`

Use those root files as the source of truth for shared HISv2 rules, workflows, skills, prompts, security rules, commit rules, PR rules, release rules, and documentation rules.

This README only contains module-specific details.

## Module Details

| Item | Value |
| --- | --- |
| Module path | Current directory |
| Root project | `..` |
| Main language/framework | Needs confirmation |
| Main entrypoints | Needs confirmation |
| Main dependencies | Needs confirmation |
| Owner/team | Needs confirmation |

## Important Paths

| Path | Purpose |
| --- | --- |
| Needs confirmation | Needs confirmation |

## Setup

Needs confirmation

## Run / Develop

Needs confirmation

## Test / Verification

Needs confirmation

Only list commands that exist in this module or are documented in root HISv2 files. Do not claim a command passed unless you run it successfully.

## Notes for AI Agents

- Start from this module folder when editing module files.
- Read this module `AGENTS.md`, then `../AGENTS.md` and `../README.md`, before non-trivial work.
- Use root HISv2 skills/workflows instead of copying them here.
- Keep module-specific plans or notes in this module only when needed.
- Ask before changing files outside this module.

After updating files, report:
- module purpose found or `Needs confirmation`;
- files changed;
- root files read;
- commands run;
- remaining `Needs confirmation` items.
```
