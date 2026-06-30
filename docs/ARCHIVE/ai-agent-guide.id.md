# Panduan Penggunaan AI Agent

Status: Detail reference (Indonesian translation)

Panduan ini menjelaskan cara tim menyiapkan project untuk AI coding agent dan cara
memakai agent dengan aman dalam development harian.

Tujuannya bukan membiarkan AI mengambil semua keputusan. Tujuannya adalah memberi AI
context project, command, aturan, dan safety boundary yang cukup supaya AI bisa membantu
lebih cepat tanpa merusak codebase.

## Prinsip Utama

1. Human tetap pemilik keputusan final.
2. AI harus mengikuti konvensi project.
3. AI tidak boleh commit kecuali diminta secara eksplisit.
4. AI harus membuat plan sebelum perubahan besar atau berisiko.
5. AI harus menjalankan check yang relevan sebelum bilang selesai.
6. Human wajib review security, auth, permissions, database migrations, payments, data
deletion, dan production config.
7. Setiap project sebaiknya punya file `AGENTS.md` di root repository.

## Apa Itu “AI Agent Ready”

Project disebut AI Agent Ready jika AI agent bisa cepat menjawab:

- Project ini apa?
- Tech stack apa yang dipakai?
- Bagaimana install dependencies?
- Bagaimana menjalankan app?
- Bagaimana menjalankan tests?
- Bagaimana menjalankan lint/typecheck/build?
- Business logic harus ditempatkan di mana?
- Database migrations dikelola bagaimana?
- Auth, permissions, dan tenant/org scoping dikelola bagaimana?
- File apa yang tidak boleh disentuh?
- Aturan apa yang harus diikuti sebelum pekerjaan dianggap selesai?

## File yang Dibutuhkan

Baseline yang direkomendasikan:

```text
.
├── AGENTS.md
├── README.md
├── .env.example
├── docs/
│   ├── architecture.md
│   ├── ai-workflows.md
│   └── testing.md
└── .github/
    └── pull_request_template.md
```

Optional tapi direkomendasikan:

```text
docs/api-contracts.md
docs/database.md
docs/coding-standards.md
docs/deployment.md
Makefile
```

## Prompt Setup Pertama

Gunakan prompt ini saat membuka existing project dengan AI agent untuk pertama kali.

```text
Please make this project AI Agent Ready.

Tasks:
1. Inspect the repository structure, tech stack, package manager, test commands, lint commands, typecheck commands, migration system, and local setup flow.
2. Create or update AGENTS.md with clear instructions for AI coding agents.
3. Add docs/ai-workflows.md explaining how agents should work in this repo.
4. Add docs/architecture.md summarizing current architecture, important folders, and boundaries.
5. Add docs/testing.md with exact commands for test, lint, typecheck, build, and known caveats.
6. Check if README.md has enough local setup instructions. If missing, propose or add improvements.
7. Check .env.example exists and is safe. Do not expose secrets.
8. Do not commit changes.
9. Before editing, show your plan.
10. After editing, show changed files and commands verified.

Important rules:
- Read existing files before writing new docs.
- Follow existing project conventions.
- Do not invent architecture that does not exist.
- Prefer documentation based on actual files.
- If uncertain, mark as “Needs confirmation”.
```

## Review Prompt Setelah Setup

Gunakan ini setelah AI membuat docs setup pertama.

```text
Review the AI Agent Ready setup.

Check:
1. Is AGENTS.md specific enough for this project?
2. Are setup/test/build/lint/typecheck commands accurate?
3. Are dangerous or unclear instructions removed?
4. Are architecture docs based on actual code?
5. Are security rules included?
6. Are git rules included, especially “do not commit unless asked”?
7. Are auth, permissions, database, and tenant/org conventions documented?
8. What should be improved before other team members use this?

Give me:
- Missing items
- Risky instructions
- Recommended edits
```

## Workflow AI Harian

### 1. Mulai Setiap Task

```text
Read AGENTS.md first.
Understand current code patterns.
Ask questions if requirements are unclear.
Create a short plan before editing.
Do not commit.
```

### 2. Feature Work

```text
Implement this feature: [describe feature].

Rules:
- Read AGENTS.md first.
- Follow existing patterns.
- Keep changes small and focused.
- Add or update tests where appropriate.
- Run relevant lint/typecheck/test/build commands.
- Do not commit.

Final response must include:
1. Summary
2. Files changed
3. Commands run
4. Risks or notes
```

### 3. Bug Fixing

```text
Fix this bug: [describe bug].

Use systematic debugging:
1. Reproduce or inspect the issue first.
2. Identify root cause.
3. Explain why it happens.
4. Make the minimal safe fix.
5. Add a regression test if possible.
6. Run verification commands.
7. Do not commit.
```

### 4. Refactor

```text
Refactor [area].

Rules:
- No behavior change unless explicitly stated.
- Keep public APIs compatible.
- Keep changes focused.
- Run tests before and after if practical.
- Explain risk.
- Do not commit.
```

### 5. Sebelum Pull Request

```text
Review all current changes like a senior engineer.

Check:
- correctness
- security
- auth and permissions
- tenant/org scoping
- performance
- migration safety
- missing tests
- type errors
- lint errors
- docs updates
- unrelated changes

Do not commit.
Return prioritized findings and a final checklist.
```

## Checklist Skill / Mode

AI agent biasanya bekerja lebih baik jika diberi mode spesifik. Gunakan mode berikut
sesuai tipe task.

### Planning Mode

Gunakan untuk perubahan besar, task ambigu, architecture changes, atau pekerjaan
multi-step.

```text
Use planning mode.
Read the codebase and write an implementation plan first.
Do not edit files yet.
Break the work into small safe steps.
Include files likely to change, test plan, risks, and questions.
```

### Systematic Debugging Mode

Gunakan untuk bug, production issue, dan error yang belum jelas.

```text
Use systematic debugging.
Do not guess.
First reproduce or inspect the issue.
Find root cause.
Then propose the minimal fix.
Add a regression test if possible.
Run verification commands.
```

### Test-Driven Development Mode

Gunakan untuk critical logic, permissions, billing, data transformation, dan area
berisiko tinggi.

```text
Use TDD.
Write or update tests first.
Confirm the failing test.
Then implement the minimal fix.
Then refactor if needed.
Run relevant tests.
```

### Code Review Mode

Gunakan sebelum merge atau saat review perubahan yang dibuat AI.

```text
Review this change like a senior engineer.
Check correctness, security, performance, maintainability, tests, and edge cases.
Do not rewrite unless necessary.
Return prioritized findings.
```

### Backend-First Mode

Gunakan untuk fullstack feature.

```text
Use backend-first approach.
Finalize API contract, backend validation, permissions, database changes, and tests before frontend.
Do not start UI until backend behavior is clear.
```

## Checklist Project JavaScript / TypeScript

Wajib:

- Lockfile ada: `package-lock.json`, `pnpm-lock.yaml`, `bun.lockb`, atau `yarn.lock`.
- Package manager terdokumentasi.
- Script `dev` ada.
- Script `build` ada.
- Script `test` ada atau gap testing terdokumentasi.
- Script `lint` ada atau gap linting terdokumentasi.
- Script `typecheck` ada untuk TypeScript project.
- `.env.example` ada.
- Setup README valid.
- AGENTS.md ada.

Script yang direkomendasikan:

```json
{
  "scripts": {
    "dev": "...",
    "build": "...",
    "test": "...",
    "lint": "...",
    "typecheck": "...",
    "format": "prettier --write .",
    "check": "npm run lint && npm run typecheck && npm run test"
  }
}
```

## Checklist React / Frontend

Dokumentasikan pilihan berikut dengan jelas:

- Routing library
- State management
- Server state/data fetching
- Form library
- Validation library
- UI component system
- Styling approach
- Auth/session handling
- API client pattern
- Error handling pattern
- Loading/empty/error state rules

Default yang direkomendasikan saat memulai React project baru:

- Client state: Redux Toolkit hanya jika global client state memang dibutuhkan.
- Server state REST: TanStack Query atau SWR.
- Server state GraphQL: Apollo Client.
- Forms: React Hook Form.
- Validation: Zod.
- Type safety: TypeScript strict mode jika memungkinkan.

### Tentang Redux Toolkit / RTK

Jangan install RTK secara otomatis di semua project.

Install RTK jika app punya:

- shared client state di banyak screen
- auth/user/session state
- complex UI state
- offline/local state workflows
- non-trivial state transitions

Contoh install:

```bash
npm install @reduxjs/toolkit react-redux
```

atau:

```bash
bun add @reduxjs/toolkit react-redux
```

Jika project sudah menggunakan Apollo, React Query, atau SWR untuk server state, hindari
duplikasi server state ke Redux kecuali ada alasan jelas.

## Backend Checklist

Dokumentasikan:

- framework
- API style: REST, GraphQL, RPC, dll.
- auth mechanism
- permission model
- tenant/org scoping model
- validation pattern
- error response format
- database migration tool
- seed data process
- background jobs/queues
- logging pattern
- test strategy

Sebelum AI mengubah backend code, pastikan:

- API contract dipahami
- validation rules jelas
- permission checks teridentifikasi
- migration safety direview
- tests diupdate

## Human Review Checklist

Human wajib review manual perubahan AI yang menyentuh:

- authentication
- authorization
- organization/tenant scoping
- payments
- invoices
- data deletion
- database migrations
- production config
- secrets
- dependency upgrades
- generated code
- background jobs
- external API integrations

## Definition of Done untuk AI Tasks

Pekerjaan AI belum selesai sampai:

- Code mengikuti existing patterns.
- Tidak ada file unrelated yang berubah.
- Tests ditambahkan atau diupdate saat behavior berubah.
- Lint pass atau failure dijelaskan.
- Typecheck pass atau failure dijelaskan.
- Build pass untuk frontend changes atau failure dijelaskan.
- Database migration aman dan terdokumentasi jika berubah.
- Auth/permission/tenant rules diverifikasi jika relevan.
- Dokumentasi diupdate jika behavior berubah.
- File yang berubah dirangkum.
- Commands yang dijalankan dicatat.
- Risiko dicatat.

## Format Final Response Standar

Minta agent menyelesaikan dengan format ini:

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

## Safety Rules

AI agent tidak boleh:

- Commit kecuali diminta secara eksplisit.
- Push kecuali diminta secara eksplisit.
- Rewrite git history kecuali diminta secara eksplisit.
- Menghapus folder besar tanpa konfirmasi.
- Mengubah production secrets.
- Print secrets ke chat.
- Menambahkan refactor unrelated.
- Mengganti existing architecture tanpa approval.
- Install major dependency baru tanpa menjelaskan alasannya.
- Mengubah database schema tanpa migration dan rollback/safety notes.

## Team Policy yang Direkomendasikan

1. Gunakan AI untuk mempercepat kerja, bukan sebagai otoritas buta.
2. Setiap PR hasil AI wajib human-reviewed.
3. Setiap project wajib maintain AGENTS.md.
4. Setiap project baru sebaiknya dibuat AI Agent Ready dari hari pertama.
5. Setiap perubahan AI yang berisiko wajib direview dua kali: sekali oleh AI review
mode, sekali oleh human.
