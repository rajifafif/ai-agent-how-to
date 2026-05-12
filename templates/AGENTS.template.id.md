# AGENTS.md

File ini berisi instruksi untuk AI coding agent yang bekerja di repository ini.

## Project Overview

Project name: [isi]
Purpose: [isi]
Main users: [isi]
Business domain: [isi]

## Tech Stack

Backend: [isi]
Frontend: [isi]
Database: [isi]
Queue/background jobs: [isi]
Cache: [isi]
Auth: [isi]
Deployment: [isi]
Package manager: [isi]

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

Jika command tidak bisa dijalankan, jelaskan alasannya dan command apa yang harus dijalankan manual.

## AI Agent Workflow

Untuk feature work:

1. Baca file ini.
2. Inspect pattern yang sudah ada.
3. Tulis plan singkat untuk pekerjaan non-trivial.
4. Tanya klarifikasi jika requirement kurang jelas.
5. Implement perubahan kecil dan fokus.
6. Jalankan test/lint/typecheck/build yang relevan.
7. Rangkum file yang berubah, command yang dijalankan, dan risiko.

Untuk debugging:

1. Reproduce atau inspect issue.
2. Identifikasi root cause sebelum mengubah code.
3. Buat fix minimal yang aman.
4. Tambahkan regression test jika memungkinkan.
5. Jalankan verification.

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
