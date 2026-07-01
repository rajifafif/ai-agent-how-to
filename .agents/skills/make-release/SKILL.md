---
name: make-release
description: Prepare release notes, changelog, and proposed tag/version from changes since the previous release; confirm before tagging or publishing.
---

# Make Release

Use when the user says:
- make release
- create release
- prepare release
- release this
- tag release
- changelog for release

## Required Source Order

1. Read `AGENTS.md`.
2. Read release/versioning guidance if present:
   - `docs/ai-workflows.md`
   - `docs/project-context.md`
   - `docs/release.md`
   - `CHANGELOG.md`
   - `.github/release.yml`
   - package/version files such as `package.json`, `pyproject.toml`, `composer.json`, `go.mod`, or app-specific version files
3. If `.agents/skills/make-release/SKILL.md` exists, use it as the repository-local release workflow.
4. Use repository release history and tags over generic assumptions.

## Intent Semantics

- `prepare release` = prepare-only mode; write or print release plan/changelog, no tag.
- `make release`, `create release`, `release this` = prepare release notes/changelog and ask confirmation before tagging.
- `tag release` = may create a local tag only after confirming exact tag/version and changelog.
- `publish release`, `push tag`, or `create GitHub release` = publish only when explicitly requested after tag/changelog confirmation.

Default rule: prepare release and changelog first, then confirm before tagging.

## Workflow

1. Inspect `git status --short --branch`.
2. Require a clean working tree before tagging or publishing. If dirty, stop and ask whether to commit/stash first.
3. Identify the previous release:
   - latest semver-like git tag when present;
   - latest release entry in `CHANGELOG.md` when present;
   - GitHub releases via `gh release list` when available and authenticated;
   - otherwise mark previous release as `Needs confirmation`.
4. Inspect commits since previous release with `git log`.
5. Inspect previous release notes/changelog format and reuse the project style.
6. Generate a clear changelog grouped by category:
   - Breaking Changes
   - Features
   - Fixes
   - Security
   - Performance
   - Documentation
   - Chores/Internal
7. Propose next version/tag based on repository convention and observed changes. If versioning convention is unclear, mark `Needs confirmation` and offer options.
8. Prepare release notes with:
   - proposed tag/version;
   - target branch/commit;
   - previous release baseline;
   - changelog;
   - migration/upgrade notes;
   - known risks;
   - verification/release checks;
   - publish commands to run after approval.
9. Ask for confirmation before creating any tag.
10. Do not push tags or create/publish a GitHub release unless explicitly requested.

## Changelog Rules

- Base the changelog on actual commits and diffs since the previous release.
- Prefer user-facing changes over raw commit noise.
- Combine duplicate/internal commits into readable entries.
- Preserve breaking changes and security changes clearly.
- If previous release notes exist, match their tone and structure.
- Do not invent issues, PR numbers, contributors, or tickets.
- Mark uncertain entries as `Needs confirmation`.

## Tagging Rules

Before local tag creation, require confirmation of:
- exact tag name/version;
- target commit SHA/branch;
- release notes/changelog text;
- whether version files need updating first;
- whether the tag should be annotated or lightweight, based on project convention.

Publishing requires separate explicit approval for:
- pushing tag;
- creating GitHub/GitLab release;
- marking prerelease/latest;
- attaching artifacts.

## Expected Output

- Previous release baseline.
- Proposed next tag/version.
- Draft changelog/release notes.
- Release risks and `Needs confirmation` items.
- Verification/release checks performed and actual results.
- Exact commands that would tag/publish after approval.
- Clear statement that no tag or publish was done unless explicitly confirmed.

## Human Confirmation Required

Always confirm before:
- creating a local tag;
- updating version files;
- pushing tags;
- publishing a release;
- attaching artifacts;
- marking a release as latest/stable.

## Pitfalls

- Do not tag with a dirty working tree.
- Do not infer semantic version bump when the project convention is unclear.
- Do not push or publish from `make release` alone.
- Do not fabricate changelog entries, PR numbers, issue IDs, or contributors.
- Do not include secrets, credentials, production data, patient data, or unnecessary PII in release notes.
