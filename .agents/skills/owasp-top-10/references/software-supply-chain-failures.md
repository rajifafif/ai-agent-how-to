# A03:2025 Software Supply Chain Failures

**Description:** Weaknesses in dependencies, build pipelines, package sources, artifacts,
CI/CD workflows, or update mechanisms that allow attackers to compromise software before
or during delivery.

## Common Patterns

- Unpinned or untrusted dependencies.
- Packages installed from unverified registries or mirrors.
- Known vulnerable dependencies without remediation plan.
- CI/CD secrets exposed to untrusted pull requests or scripts.
- Build artifacts not signed, verified, or reproducible where required.
- Generated code, plugins, templates, or binaries accepted without provenance checks.
- Dependency confusion risk between private and public package names.

## Review Checklist

- [ ] Dependency manifests and lock files are present where the ecosystem supports them.
- [ ] Dependency audit was run with the project-appropriate tool when available.
- [ ] Critical/high dependency findings are fixed, mitigated, or explicitly accepted.
- [ ] Private package names cannot be hijacked from public registries.
- [ ] CI/CD workflows limit secrets to trusted branches and trusted jobs.
- [ ] Build scripts do not download and execute unverified remote code.
- [ ] Release artifacts are produced from trusted source and traceable build steps.
- [ ] Container base images are scanned and pinned to trusted sources where practical.
- [ ] Generated files are reproducible or reviewed before release.

## Stack-Specific Tool Examples

Use only tools available in the project. Do not invent commands.

- JavaScript/TypeScript: `npm audit`, `pnpm audit`, `yarn audit`, `bun audit`
- PHP: `composer audit`
- Go: `govulncheck`, `go list -m all`
- Python: `pip-audit`, `safety`
- Containers/images: Trivy, Grype
- CI/code scanning: CodeQL, Semgrep, SonarQube

## Remediation Patterns

- Pin dependencies and commit lock files.
- Remove unused dependencies.
- Upgrade vulnerable packages or apply vendor-supported patches.
- Restrict package registries and verify private package resolution.
- Protect release branches and production deployment jobs.
- Scope CI/CD tokens to least privilege.
- Sign or checksum release artifacts when required by the organization.
