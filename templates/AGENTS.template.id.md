# AGENTS.md

File ini berisi instruksi untuk AI coding agent yang bekerja di repository ini.

## Project Overview

Project name: [isi] Purpose: [isi] Main users: [isi] Business domain: [isi]

## Tech Stack

Backend: [isi] Frontend: [isi] Database: [isi] Queue/background jobs: [isi] Cache: [isi]
Auth: [isi] Deployment: [isi] Package manager: [isi]

## Local Setup

Install dependencies:

```bash
[isi]
```

Run app:

```bash
[isi]
```

Run tests:

```bash
[isi]
```

Run lint:

```bash
[isi]
```

Run typecheck:

```bash
[isi]
```

Run build:

```bash
[isi]
```

Run migrations:

```bash
[isi]
```

## Repository Structure

```text
[isi folder penting]
```

## Architecture Rules

- [isi lokasi business logic]
- [isi konvensi API layer]
- [isi konvensi database/migration]
- [isi konvensi frontend state management]
- [isi konvensi testing]

## Coding Standards

- Ikuti pattern existing project sebelum membuat pattern baru.
- Buat perubahan kecil dan fokus.
- Jangan lakukan refactor yang tidak berhubungan.
- Jangan hardcode secrets.
- Jangan bypass validation.
- Jangan bypass auth/permission checks.
- Pilih code yang eksplisit dan mudah dibaca dibanding code yang terlalu clever.
- Tambahkan atau update test jika behavior berubah.

## Git Rules

- Jangan commit kecuali user secara eksplisit meminta.
- Jangan push kecuali user secara eksplisit meminta.
- Jangan rewrite git history kecuali user secara eksplisit meminta.
- Tampilkan file yang berubah di final response.

## Security Rules

- Jangan pernah print secrets.
- Jangan ubah nilai `.env` asli kecuali diminta secara eksplisit.
- Gunakan `.env.example` untuk dokumentasi environment variables.
- Validasi auth, permissions, dan tenant/org scoping untuk protected data.
- Minta konfirmasi sebelum destructive data changes.

## Database Rules

- Gunakan migration system project ini.
- Jangan edit historical migrations kecuali project ini memang mengizinkan.
- Sertakan rollback/safety notes untuk schema changes.
- Pertimbangkan existing production data.

## Testing Rules

Sebelum selesai, jalankan command yang relevan:

```bash
[isi]
```

Jika command tidak bisa dijalankan, jelaskan alasannya dan command apa yang harus
dijalankan manual.

## AI Agent Workflow

Baca file ini dulu untuk setiap task. Lalu route permintaan user dalam bahasa natural ke
workflow yang tepat. Developer tidak perlu paste prompt panjang jika intent sudah jelas.

Jika repository ini punya `docs/ai-workflows.md`, baca file itu untuk workflow routing
dan short-prompt behavior.

| User asks for | Follow |
| --- | --- |
| Make project AI Agent Ready | `prompts/bootstrap-existing-project.md` jika ada |
| Create plan from ..., plan larger work, pecah task jadi phases | `.agents/skills/plan-feature/SKILL.md` dan `prompts/plan-feature.md` jika ada |
| Implement, build, add, atau change behavior | Approved plan di `docs/plans/`, lalu instruksi repository dan implementation skill jika ada |
| Fix bug, debug, error, regression | `prompts/fix-bug.md` jika ada |
| Check current changes, verify, verify this, review diff | `.agents/skills/verify-changes/SKILL.md` dan `checklists/pre-commit-checklist.md` jika ada |
| Security review, auth/permission review | `prompts/review-security.md` jika ada |
| Update docs, clean up docs, remove obsolete docs | `.agents/skills/cleanup-docs/SKILL.md` dan `standards/documentation-standard.md` jika ada |
| Make commits, commits, create commits | `.agents/skills/create-commits/SKILL.md` dan `prompts/create-commits.md` jika ada |
| Prepare commit, commit rules | Commit workflow dalam prepare-only mode; jangan commit |
| Make release, create release, tag release | `.agents/skills/make-release/SKILL.md` jika ada; siapkan changelog dan konfirmasi sebelum tagging |
| Create PR, create pull request, open PR | `.agents/skills/create-pull-request/SKILL.md` dan `prompts/create-pull-request.md` jika ada |
| Prepare PR, draft PR body | PR workflow dalam prepare-only mode; jangan push atau create PR |
| Continue, resume, handoff | `prompts/continue-unfinished-work.md` jika ada |

Untuk request gabungan, jalankan workflow dalam urutan aman:

1. Inspect status dan diff.
2. Verify changes.
3. Jalankan security review jika relevan.
4. Update dokumentasi jika perlu.
5. Prepare commit atau commit hanya jika diotorisasi eksplisit.
6. Simpan handoff jika pekerjaan belum selesai.

Aturan intent commit:

- “prepare commit” berarti prepare-only mode. Jangan commit.
- “commit rules” berarti jalankan safety check commit. Jangan commit kecuali commit juga
diminta eksplisit.
- “make commits”, “create commits”, atau “commit this” berarti commit-authorized mode
setelah verification dan safety checks.
- Izin commit tidak berarti izin push.
- Jangan pakai `git add .` secara blind. Stage file eksplisit saja.

Untuk feature work:

1. Baca file ini.
2. Inspect pattern yang sudah ada.
3. Restate behavior dan acceptance criteria.
4. Untuk pekerjaan non-trivial, baca `prompts/plan-feature.md` jika ada, lalu
create atau update persistent plan di `docs/plans/` memakai
`templates/IMPLEMENTATION_PLAN.template.md`.
5. Tanya klarifikasi jika requirement kurang jelas.
6. Implement perubahan kecil dan fokus.
7. Update plan saat pekerjaan selesai, blocked, atau berubah.
8. Tambahkan atau update test jika praktis.
9. Jalankan test/lint/typecheck/build yang relevan.
10. Jika unfinished, create atau update handoff di `docs/handoffs/` memakai
`templates/HANDOFF.template.md`.
11. Rangkum file yang berubah, command yang dijalankan, risiko, dan commit status.

Untuk debugging:

1. Reproduce atau inspect issue.
2. Untuk bug non-trivial, create atau update persistent investigation plan di
`docs/plans/`.
3. Identifikasi root cause sebelum mengubah code.
4. Buat fix minimal yang aman.
5. Tambahkan regression test jika memungkinkan.
6. Jika unfinished, create atau update handoff di `docs/handoffs/`.
7. Jalankan verification.

## Final Response Format

```text
Summary:
- ...

Files changed:
- ...

Commands run:
- ...

Risks / notes:
- ...
```
