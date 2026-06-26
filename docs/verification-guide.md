# Verification Guide

Verification proves what was actually checked. It must rely on command output, inspected
diffs, or explicit manual checks, not agent confidence.

## Verification Steps

1. Scope verification
   - Compare the request with the changed files.
   - Confirm there are no unrelated edits.

2. Diff review
   - Look for debug statements, commented-out code, temporary files, generated files,
     formatting-only churn, and hardcoded secrets.

3. Automated tests
   - Run the smallest relevant test first, then broader suites when practical.

4. Focused tests
   - Prefer tests that directly cover the changed behavior or regression.

5. Static analysis, lint, and type checking
   - Run available project commands.
   - If unavailable, document the gap.

6. Build validation
   - Important for frontend, compiled backend, and release artifacts.

7. Migration checks
   - Review forward and rollback safety where supported.
   - Confirm data-risk assumptions with a human when needed.

8. Manual checks
   - Use focused scenarios tied to acceptance criteria.

9. Browser checks for frontend work
   - Check visible behavior, loading states, error states, permissions, and responsive
     layouts when relevant.

10. API checks for backend work
    - Check status codes, validation errors, authorization, and response shape.

11. Compatibility checks for legacy projects
    - Confirm syntax and runtime compatibility, especially for PHP 5.6, PHP 7.4, older
      jQuery, and older browsers.

12. Record exact commands and results
    - Never write “tests passed” unless the command ran and exited successfully.

13. Handle commands that cannot run
    - List the command and reason: missing dependency, missing service, credentials
      unavailable, environment unavailable, or Needs confirmation.

## Example Commands

These examples are not guaranteed project commands. Use commands discovered from the
target repository first.

### Native PHP examples

| Check | Example command |
| --- | --- |
| Syntax check one file | `php -l path/to/file.php` |
| Syntax check many files | `find . -name '*.php' -print0 | xargs -0 -n1 php -l` |
| PHPUnit if present | `vendor/bin/phpunit` |
| Composer scripts if present | `composer test` |

### Laravel examples

| Check | Example command |
| --- | --- |
| Tests | `php artisan test` |
| PHPUnit | `vendor/bin/phpunit` |
| Config loads | `php artisan config:clear` |
| Routes inspect | `php artisan route:list` |
| Migration status | `php artisan migrate:status` |

### Go examples

| Check | Example command |
| --- | --- |
| Tests | `go test ./...` |
| Race tests | `go test -race ./...` |
| Vet | `go vet ./...` |
| Build | `go build ./...` |

### React or Node examples

| Check | Example command |
| --- | --- |
| Install | `npm install` or `bun install` |
| Tests | `npm test` or `bun test` |
| Lint | `npm run lint` or `bun run lint` |
| Typecheck | `npm run typecheck` or `bun run typecheck` |
| Build | `npm run build` or `bun run build` |

### jQuery projects without modern tooling examples

| Check | Example command or action |
| --- | --- |
| PHP syntax if backend is PHP | `php -l path/to/file.php` |
| Browser smoke test | Open the changed page and verify acceptance criteria |
| Console check | Confirm no new browser console errors |
| Network check | Confirm expected requests, status codes, and response shapes |
| DOM XSS review | Inspect changed rendering code for unsafe `.html()` or string concatenation |

## Legacy Project Guidance

When automated tests are missing, risk increases. Compensate with:

- small diffs
- characterization tests where practical
- focused manual verification
- snapshots of existing behavior before changes
- rollback planning
- human review

Lack of tests is not permission to skip verification. It means verification must be more
explicit.
