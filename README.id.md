# AI Agent How-To

Panduan dan template untuk membuat project tim siap digunakan oleh AI coding agent.

Repository ini bisa dicopy ke project lain sebelum tim mulai menggunakan AI agent secara intensif.

## File

- `docs/ai-agent-guide.id.md` — panduan utama tim dalam Bahasa Indonesia: checklist, workflow, safety rules, mode/skill, dan prompt siap pakai.
- `templates/AGENTS.template.id.md` — copy ke root project sebagai `AGENTS.md`, lalu minta AI agent mengisi detail spesifik project.

Versi English:

- `README.md`
- `docs/ai-agent-guide.md`
- `templates/AGENTS.template.md`

## Checklist Langkah Pertama untuk Project Apa Pun

Gunakan checklist ini saat menyiapkan project baru atau existing project agar siap dibantu AI agent.

### 1. Copy AI guide ke target project

Dari repository ini:

```bash
mkdir -p /path/to/target-project/docs
cp docs/ai-agent-guide.id.md /path/to/target-project/docs/ai-agent-guide.md
```

Catatan: di target project, tetap gunakan nama `docs/ai-agent-guide.md` supaya prompt standar tetap sama.

### 2. Copy template AGENTS.md ke target project

```bash
cp templates/AGENTS.template.id.md /path/to/target-project/AGENTS.md
```

### 3. Buka target project dengan AI agent

Jalankan AI agent dari root target project.

Contoh:

```bash
cd /path/to/target-project
hermes
```

Atau gunakan agent CLI/tool lain yang biasa dipakai tim.

### 4. Minta AI agent membaca guide dan menjalankan setup

Gunakan prompt pertama di bawah.

Penting: prompt ini meminta agent membaca `docs/ai-agent-guide.md` dulu, lalu menjalankan setup AI Agent Ready berdasarkan guide tersebut.

### Bagaimana AI agent memakai docs ini setelah setup

Setelah setup selesai, docs yang dibuat menjadi context layer project untuk AI agent:

- `AGENTS.md` menjadi rulebook utama. Prompt harian sebaiknya dimulai dengan “Read AGENTS.md first.” Agent menggunakannya untuk memahami aturan project, command, batas arsitektur, aturan git, testing, dan safety.
- `docs/ai-agent-guide.md` menjadi panduan workflow tim. Agent menggunakannya untuk memahami ekspektasi kerja: planning sebelum perubahan berisiko, tidak commit, menjalankan checks, merangkum file yang berubah, dan memilih mode yang tepat seperti planning, debugging, TDD, review, atau backend-first.
- `docs/architecture.md` membantu agent memahami lokasi code yang benar sebelum mengedit.
- `docs/testing.md` memberi tahu command verifikasi yang harus dijalankan sebelum agent bilang task selesai.
- `docs/ai-workflows.md` memberi tahu workflow spesifik repo untuk feature, bugfix, refactor, review, dan release.

Dalam kerja harian, tim tidak perlu mengulang semua context project secara manual. Cukup bilang:

```text
Read AGENTS.md first, then help me with [task].
```

Agent harus memakai docs yang sudah dibuat untuk planning, editing, verification, dan reporting secara konsisten.

### 5. Review docs yang dibuat secara manual

Cek terutama:

- `AGENTS.md`
- `docs/architecture.md`
- `docs/testing.md`
- `docs/ai-workflows.md`
- bagian setup di README
- `.env.example`
- package scripts / Makefile commands

### 6. Jalankan review prompt

Setelah setup pertama selesai, jalankan review prompt di bawah untuk audit sebelum dibagikan ke anggota tim lain.

### 7. Commit hanya setelah human review

AI tidak boleh commit secara default. Human review diff dulu, baru human commit.

## Prompt Pertama: Make Project AI Agent Ready

Copy-paste prompt ini ke AI agent dari root target project.

```text
Please make this project AI Agent Ready.

First, read docs/ai-agent-guide.md completely and follow it as the operating guide for this setup.

Then execute the AI Agent Ready setup for this repository.

Tasks:
1. Inspect the repository structure, tech stack, package manager, test commands, lint commands, typecheck commands, migration system, and local setup flow.
2. Create or update AGENTS.md with clear project-specific instructions for AI coding agents.
3. Add or update docs/ai-workflows.md explaining how agents should work in this repo.
4. Add or update docs/architecture.md summarizing current architecture, important folders, and boundaries.
5. Add or update docs/testing.md with exact commands for install, dev, test, lint, typecheck, build, migration, and known caveats.
6. Check if README.md has enough local setup instructions. If missing, propose or add improvements.
7. Check .env.example exists and is safe. Do not expose secrets.
8. Check package scripts, Makefile, or equivalent command runners. Recommend missing scripts if needed.
9. Check frontend state management needs. If this is a React project, only recommend Redux Toolkit / RTK if global client state is actually needed. Do not install dependencies without explaining why.
10. Do not commit changes.
11. Before editing, show your plan.
12. After editing, show changed files and commands verified.

Important rules:
- Follow docs/ai-agent-guide.md.
- Follow existing project conventions.
- Do not invent architecture that does not exist.
- Base documentation on actual files.
- If uncertain, write “Needs confirmation”.
- Do not use destructive commands.
- Do not change unrelated files.
- Prefer minimal, safe changes.
```

## Review Prompt: Audit AI Agent Ready Setup

Jalankan setelah prompt pertama selesai.

```text
Review the AI Agent Ready setup.

First, read docs/ai-agent-guide.md and AGENTS.md.

Check:
1. Is AGENTS.md specific enough for this project?
2. Are setup/test/build/lint/typecheck/migration commands accurate?
3. Are dangerous or unclear instructions removed?
4. Are architecture docs based on actual code?
5. Are security rules included?
6. Are git rules included, especially “do not commit unless asked”?
7. Are auth, permissions, database, and tenant/org conventions documented where relevant?
8. Are frontend state management recommendations accurate and not blindly adding RTK?
9. Are missing scripts or tooling clearly marked as recommendations instead of fake existing commands?
10. Is this ready for other team members to use?

Give me:
- Missing items
- Risky instructions
- Incorrect assumptions
- Recommended edits
- Final readiness verdict

Do not commit.
```

## Workflow Harian Tim

Untuk setiap task, anggota tim harus memberi context yang cukup dan menentukan mode agent.

### Prompt feature

```text
Read AGENTS.md first.
Use planning mode before editing.
Implement this feature: [describe feature].

Rules:
- Follow existing patterns.
- Keep changes small.
- Do not commit.
- Run relevant checks before final response.

Final response must include summary, files changed, commands run, and risks.
```

### Prompt bugfix

```text
Read AGENTS.md first.
Use systematic debugging.
Fix this bug: [describe bug].

Rules:
- Reproduce or inspect first.
- Identify root cause before changing code.
- Make minimal safe fix.
- Add regression test if possible.
- Do not commit.
```

### Prompt PR review

```text
Read AGENTS.md first.
Review current changes like a senior engineer.

Check correctness, security, auth/permission, tenant/org scoping, migrations, performance, tests, and unrelated changes.
Do not commit.
Return prioritized findings.
```

## Minimum Project Readiness Checklist

Project siap untuk AI-assisted development jika punya:

- `AGENTS.md`
- `docs/ai-agent-guide.md`
- `docs/ai-workflows.md`
- `docs/architecture.md`
- `docs/testing.md`
- README local setup instructions
- `.env.example`
- command install/dev/test/lint/typecheck/build terdokumentasi
- command migration terdokumentasi jika backend/database project
- aturan git jelas: AI tidak boleh commit kecuali diminta
- aturan security jelas: AI tidak boleh expose secrets
- human review wajib untuk auth, permission, data deletion, migrations, payments, dan production config

## Catatan RTK / Redux Toolkit

Jangan wajibkan RTK untuk semua frontend project.

Rekomendasikan RTK jika:

- perlu global client state
- auth/session/user state dipakai di banyak screen
- ada complex UI state
- predictable state transitions penting

Jangan rekomendasikan RTK hanya karena project memakai React.

Jika project sudah memakai React Query, SWR, atau Apollo untuk server state, jangan duplikasi server state ke Redux kecuali ada alasan jelas.
