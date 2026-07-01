# Dev-QA Q3 Output Checklist

Status: Active checklist

This checklist tracks the expected outputs from the Q3 Dev-QA action items. If an output
already exists in this repository, the reference is listed. If it does not exist yet, the
status stays `Missing` or `Needs confirmation`.

## Status Legend

| Status | Meaning |
| --- | --- |
| Done | Output exists and has a reference. |
| Partial | Related output exists, but the requested output is incomplete or not specific enough. |
| Missing | Output is not available yet. |
| Needs confirmation | Output needs business/team decision before it can be finalized. |

## Output Checklist

| No | Action item | Expected output | Status | Reference / next action |
| --- | --- | --- | --- | --- |
| 1 | Finalisasi & Sosialisasi Social Contract Dev-QA Q3 | Dokumen Social Contract Dev-QA Q3 | Missing | Create `standards/dev-qa-social-contract-standard.md`. |
| 2 | Finalisasi & Publikasi Prompt Library Dev & QA | Repository Prompt Library Dev & QA | Partial | Existing: `docs/prompt-library.md`, `prompts/`, `skills/README.md`. Needs Dev/QA-specific prompt coverage review. |
| 3 | Pembuatan Checklist standar Pull Request Dev | Dokumen Checklist Pull Request Dev | Done | `standards/pull-request-standard.md`, `checklists/pull-request-checklist.md`, `templates/PR_CHECKLIST.template.md`. |
| 3 | Pembuatan Checklist standar Pull Request Dev | AI Skills untuk Commit & Pull Request | Done | `skills/create-commits/SKILL.md`, `skills/create-pull-request/SKILL.md`, `prompts/create-commits.md`, `prompts/create-pull-request.md`. |
| 4 | Pembuatan Template Bug Report QA & penetapan SLA | Template Bug Report QA | Missing | Create `templates/BUG_REPORT.template.md`. |
| 4 | Pembuatan Template Bug Report QA & penetapan SLA | Dokumen Bug Severity & SLA | Needs confirmation | Create `standards/bug-report-severity-sla-standard.md`; SLA values need QA/leadership confirmation. |
| 5 | Penetapan Target Metrik Automation Coverage & KPI Q3 | Dokumen Target Automation Coverage & KPI Q3 | Needs confirmation | Create `docs/metrics/automation-coverage-kpi-q3.md`; baseline and target need QA Lead confirmation. |
| 6 | Evaluasi perbaikan arsitektur sistem berdasarkan temuan Open Discussion | Markdown Plan Perbaikan Arsitektur | Missing | Create `docs/plans/architecture-improvement-q3.md` after open discussion findings are available. |
| 7 | Standarisasi AI-Assisted Development & Security | Dokumen AI-Assisted Development & Security Standard | Partial | Existing: `standards/ai-usage-standard.md`, `standards/secure-coding-standard.md`, `guides/security-review-workflow.md`. Needs combined Dev-QA AI security standard if required. |
| 7 | Standarisasi AI-Assisted Development & Security | AI Skill untuk Security Checking | Done | `skills/review-security/SKILL.md`, `prompts/review-security.md`. |
| 7 | Standarisasi AI-Assisted Development & Security | AI Usage Checklist | Partial | Existing related: `checklists/owasp-review-checklist.md`, `templates/SECURITY_REVIEW.template.md`. Create `checklists/ai-usage-checklist.md` if separate AI usage gate is required. |
| 8 | Standarisasi Dev-QA Quality Workflow | Dokumen Dev-QA Quality Workflow | Partial | Existing related: `guides/qa-handover-workflow.md`, `guides/feature-development-workflow.md`. Create `standards/dev-qa-quality-workflow-standard.md` for formal standard. |
| 8 | Standarisasi Dev-QA Quality Workflow | Checklist QA Handover & Release Quality Gate | Partial | Existing: `checklists/release-readiness-checklist.md`, `skills/qa-handover/SKILL.md`. Create `checklists/qa-handover-checklist.md` if a dedicated checklist is required. |
| 9 | Implementasi Automation Testing Standard | Dokumen Automation Testing Standard | Partial | Existing: `standards/testing-standard.md`. Needs automation-specific details: stack, structure, test-id, reporting, CI, flaky policy. |
| 9 | Implementasi Automation Testing Standard | Repository Automation Testing Starter Harness | Missing | Create only after automation stack is confirmed. |
| 9 | Implementasi Automation Testing Standard | Dashboard Automation Coverage | Needs confirmation | Dashboard tool/source and metric owner need confirmation. |
| 10 | Implementasi AI-Agent Ready Repository | Repository AI-Agent Ready Starter Template | Done | `templates/STARTER_PACK/README.md`, `templates/AI_AGENT_READY_REPOSITORY/README.md`. |
| 10 | Implementasi AI-Agent Ready Repository | Template README & AI Agent Instructions | Done | `templates/AGENTS.template.md`, `templates/AGENTS.template.id.md`, `templates/PROJECT_CONTEXT.template.md`, `prompts/bootstrap-existing-project.md`, `prompts/initialize-project.md`. |
| 11 | Standarisasi Environment Setup & Validation | Repository Deployment Configuration | Missing | Create only if this repository should own deployment configuration examples. Otherwise link to DevOps repository when confirmed. |
| 11 | Standarisasi Environment Setup & Validation | Checklist Deployment Readiness | Partial | Existing related: `checklists/release-readiness-checklist.md`. Create `checklists/deployment-readiness-checklist.md` or `standards/environment-setup-validation-standard.md`. |
| 12 | Standarisasi Bug & Incident Management | Dokumen Incident Response Playbook | Missing | Create `standards/bug-incident-management-standard.md` or `guides/incident-response-playbook.md`. |
| 12 | Standarisasi Bug & Incident Management | Template Production Incident Report | Missing | Create `templates/PRODUCTION_INCIDENT_REPORT.template.md` and optional `templates/RCA.template.md`. |

## Summary

| Status | Count |
| --- | ---: |
| Done | 5 |
| Partial | 7 |
| Missing | 7 |
| Needs confirmation | 4 |

## Immediate Missing Outputs

Create these first if the team wants all Q3 action item outputs represented in this repo:

- `standards/dev-qa-social-contract-standard.md`
- `templates/BUG_REPORT.template.md`
- `standards/bug-report-severity-sla-standard.md`
- `docs/metrics/automation-coverage-kpi-q3.md`
- `docs/plans/architecture-improvement-q3.md`
- `standards/dev-qa-quality-workflow-standard.md`
- `checklists/qa-handover-checklist.md`
- `checklists/ai-usage-checklist.md`
- `standards/environment-setup-validation-standard.md`
- `checklists/deployment-readiness-checklist.md`
- `standards/bug-incident-management-standard.md`
- `templates/PRODUCTION_INCIDENT_REPORT.template.md`
- `templates/RCA.template.md`

## Needs Confirmation Before Finalizing

- Bug severity SLA values.
- Automation coverage baseline and Q3 target.
- QA KPI target and measurement source.
- Automation testing stack.
- Automation dashboard tool/source.
- Deployment configuration ownership.
- Incident escalation contacts and communication rules.
