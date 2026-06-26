# AI Agent How-To

Panduan, prompt, dan template untuk membuat project tim siap digunakan oleh AI coding
agent secara aman.

Repository ini bisa dicopy ke project lain sebelum tim mulai menggunakan AI agent secara
intensif. Repository ini juga bisa dipakai sebagai workshop kit praktis.

## Strategi Bahasa

Saat ini repository memakai strategi bilingual terbatas:

- Materi awal tersedia dalam Bahasa Indonesia.
- Materi lifecycle baru tersedia dalam English-only agar maintainable dan tidak
  menghasilkan terjemahan mesin berkualitas rendah.
- Jika tim membutuhkan versi Indonesia lengkap, terjemahkan bertahap mulai dari file
  yang paling sering dipakai: prompt, verification guide, security review guide, lalu
  commit/handoff guide.

## File Bahasa Indonesia

- `docs/ai-agent-guide.id.md` — panduan utama tim dalam Bahasa Indonesia: checklist,
  workflow, safety rules, mode/skill, dan prompt siap pakai.
- `templates/AGENTS.template.id.md` — copy ke root project sebagai `AGENTS.md`, lalu
  minta AI agent mengisi detail spesifik project.

Versi English:

- `README.md`
- `docs/ai-agent-guide.md`
- `templates/AGENTS.template.md`

## Materi Baru English-Only

Prompt siap copy-paste:

- `prompts/INITIAL_AI_AGENT_READY_PROMPT.md` — menyiapkan project existing agar AI Agent
  Ready.
- `prompts/FEATURE_IMPLEMENTATION_PROMPT.md` — implementasi feature.
- `prompts/BUGFIX_PROMPT.md` — systematic bugfix.
- `prompts/VERIFY_CHANGES_PROMPT.md` — verifikasi perubahan setelah implementasi.
- `prompts/SECURITY_REVIEW_PROMPT.md` — review security terpisah dan adversarial.
- `prompts/UPDATE_DOCUMENTATION_PROMPT.md` — sinkronisasi dokumentasi setelah code
  change.
- `prompts/COMMIT_PROMPT.md` — prepare commit atau commit hanya jika diizinkan
  eksplisit.
- `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md` — melanjutkan work dari plan/handoff.

Guide lifecycle:

- `docs/ai-workflows.md` — workflow router agar agent bisa mengubah short
  natural-language prompt menjadi workflow yang tepat. English-only.
- `docs/development-lifecycle.md` — workflow lengkap AI-assisted development.
- `docs/verification-guide.md` — cara verifikasi dengan command output nyata.
- `docs/security-review-guide.md` — kapan dan bagaimana melakukan security review.
- `docs/documentation-guide.md` — kapan dokumentasi harus diupdate.
- `docs/commit-guide.md` — lifecycle commit yang aman.
- `docs/unfinished-work-guide.md` — menyimpan pekerjaan yang belum selesai di
  repository.

Template:

- `templates/IMPLEMENTATION_PLAN.template.md`
- `templates/HANDOFF.template.md`
- `templates/SECURITY_REVIEW.template.md`
- `templates/COMPLETION_REPORT.template.md`

## Alur Workshop yang Disarankan

1. Jadikan project AI Agent Ready.
   - Prompt: `prompts/INITIAL_AI_AGENT_READY_PROMPT.md`
   - Guide: `docs/ai-agent-guide.id.md` atau `docs/ai-agent-guide.md`
   - Template: `templates/AGENTS.template.id.md` atau `templates/AGENTS.template.md`
2. Implement feature kecil.
   - Prompt: `prompts/FEATURE_IMPLEMENTATION_PROMPT.md` English-only
   - Template: `templates/IMPLEMENTATION_PLAN.template.md` English-only
3. Verifikasi perubahan.
   - Prompt: `prompts/VERIFY_CHANGES_PROMPT.md` English-only
   - Guide: `docs/verification-guide.md` English-only
4. Jalankan security review.
   - Prompt: `prompts/SECURITY_REVIEW_PROMPT.md` English-only
   - Guide: `docs/security-review-guide.md` English-only
5. Update dokumentasi.
   - Prompt: `prompts/UPDATE_DOCUMENTATION_PROMPT.md` English-only
   - Guide: `docs/documentation-guide.md` English-only
6. Siapkan commit.
   - Prompt: `prompts/COMMIT_PROMPT.md` English-only
   - Guide: `docs/commit-guide.md` English-only
7. Simpan handoff dan lanjutkan di sesi baru.
   - Prompt: `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md` English-only
   - Guide: `docs/unfinished-work-guide.md` English-only

## Prompt Mana yang Dipakai?

| Situasi | Prompt |
| --- | --- |
| Menyiapkan existing project | `prompts/INITIAL_AI_AGENT_READY_PROMPT.md` |
| Membuat feature | `prompts/FEATURE_IMPLEMENTATION_PROMPT.md` |
| Memperbaiki bug | `prompts/BUGFIX_PROMPT.md` |
| Mengecek code yang selesai | `prompts/VERIFY_CHANGES_PROMPT.md` |
| Review security | `prompts/SECURITY_REVIEW_PROMPT.md` |
| Sinkronisasi docs | `prompts/UPDATE_DOCUMENTATION_PROMPT.md` |
| Menyiapkan commit | `prompts/COMMIT_PROMPT.md` |
| Melanjutkan work sebelumnya | `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md` |

## Membuat Prompt Lebih Mudah Dipakai

Developer tidak perlu paste prompt panjang untuk kerja harian.

Pola yang disarankan:

1. Copy `templates/AGENTS.template.id.md` ke target project sebagai `AGENTS.md`.
2. Copy `docs/ai-workflows.md` ke target project jika ingin workflow router. File ini
   English-only.
3. Copy folder `prompts/` jika tim ingin detailed reusable checklist.
4. Minta agent membaca `AGENTS.md` dulu.
5. Pakai short natural-language prompt.

Contoh short prompt:

```text
Read AGENTS.md first. Implement: [feature].
```

```text
Read AGENTS.md first. Verify current changes.
```

```text
Read AGENTS.md first. Check current code changes, apply commit rules, and make focused commits.
```

Workflow router di `AGENTS.md` membantu agent memilih prompt/detail workflow yang tepat
selama agent mengikuti repository instructions.

## Checklist Langkah Pertama untuk Project Apa Pun

Gunakan checklist ini saat menyiapkan project baru atau existing project agar siap
dibantu AI agent.

### 1. Download temporary guide templates ke target project

Mulai dari project yang ingin disiapkan. Download workshop kit ini ke folder temporary
`guide-templates/` supaya agent bisa membaca guide tanpa mencampur source template ke
final project docs.

Contoh:

```bash
cd /path/to/target-project
mkdir -p guide-templates/docs guide-templates/templates guide-templates/prompts
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/docs/ai-agent-guide.md -o guide-templates/docs/ai-agent-guide.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/docs/ai-workflows.md -o guide-templates/docs/ai-workflows.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/templates/AGENTS.template.md -o guide-templates/templates/AGENTS.template.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/templates/IMPLEMENTATION_PLAN.template.md -o guide-templates/templates/IMPLEMENTATION_PLAN.template.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/templates/HANDOFF.template.md -o guide-templates/templates/HANDOFF.template.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/templates/SECURITY_REVIEW.template.md -o guide-templates/templates/SECURITY_REVIEW.template.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/templates/COMPLETION_REPORT.template.md -o guide-templates/templates/COMPLETION_REPORT.template.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/INITIAL_AI_AGENT_READY_PROMPT.md -o guide-templates/prompts/INITIAL_AI_AGENT_READY_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/FEATURE_IMPLEMENTATION_PROMPT.md -o guide-templates/prompts/FEATURE_IMPLEMENTATION_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/BUGFIX_PROMPT.md -o guide-templates/prompts/BUGFIX_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/VERIFY_CHANGES_PROMPT.md -o guide-templates/prompts/VERIFY_CHANGES_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/SECURITY_REVIEW_PROMPT.md -o guide-templates/prompts/SECURITY_REVIEW_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/UPDATE_DOCUMENTATION_PROMPT.md -o guide-templates/prompts/UPDATE_DOCUMENTATION_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/COMMIT_PROMPT.md -o guide-templates/prompts/COMMIT_PROMPT.md
curl -fsSL https://raw.githubusercontent.com/rajifafif/ai-agent-how-to/main/prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md -o guide-templates/prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md
```

### 2. Buka target project dengan AI agent

Jalankan AI agent dari root target project setelah `guide-templates/` tersedia.

Contoh:

```bash
hermes
```

Atau gunakan agent CLI/tool lain.

### 3. Minta agent menjalankan initial setup dari temporary templates

Paste prompt ini:

```text
Read guide-templates/prompts/INITIAL_AI_AGENT_READY_PROMPT.md completely and execute it for this repository.

Use guide-templates/docs/ai-agent-guide.md as the source guide.
Use guide-templates/docs/ai-workflows.md as the workflow-router reference.
Use guide-templates/templates/AGENTS.template.md as the starting template for AGENTS.md.

Create or update project-local files such as AGENTS.md, docs/ai-agent-guide.md, docs/architecture.md, docs/testing.md, and docs/ai-workflows.md based on the real repository.
Install reusable prompts from guide-templates/prompts/ into prompts/.
Install reusable templates from guide-templates/templates/ into templates/.
Create docs/plans/ and docs/handoffs/ for persistent implementation plans and handoffs.
Inspect the real repository before documenting it.
Show a concise plan before editing project-specific files.
Do not invent architecture or commands.
Mark unknown facts as “Needs confirmation”.
Do not commit or push.

After setup is complete and verified, delete the temporary guide-templates/ folder only if prompts/ and templates/ contain the reusable workflow files.
```

Folder temporary `guide-templates/` hanya bootstrap material.
Final project menyimpan generated project-local docs plus installed `prompts/` dan
`templates/`, bukan references ke temporary source folder.

### 4. Optional: download full prompt set

Untuk daily short-prompt workflows, download seluruh folder `prompts/` dari repository
ini atau clone/download repository. Plain `curl` cocok untuk raw file individual, tapi
bukan untuk download GitHub directory dalam satu command.

### Bagaimana AI agent memakai docs ini setelah setup

Setelah setup selesai, docs yang dibuat menjadi context layer project untuk AI agent:

- `AGENTS.md` menjadi rulebook utama. Prompt harian sebaiknya dimulai dengan “Read
  AGENTS.md first.” Agent menggunakannya untuk memahami aturan project, command, batas
  arsitektur, aturan git, testing, dan safety.
- `docs/ai-agent-guide.md` menjadi panduan workflow tim.
- `docs/architecture.md` membantu agent memahami lokasi code yang benar sebelum
  mengedit.
- `docs/testing.md` memberi tahu command verifikasi yang harus dijalankan sebelum agent
  bilang task selesai.
- `docs/ai-workflows.md` memberi tahu workflow spesifik repo untuk feature, bugfix,
  refactor, review, dan release.

Dalam kerja harian, tim tidak perlu mengulang semua context project secara manual. Cukup
bilang:

```text
Read AGENTS.md first, then help me with [task].
```

### 5. Review docs yang dibuat secara manual

Cek terutama:

- `AGENTS.md`
- `docs/architecture.md`
- `docs/testing.md`
- `docs/ai-workflows.md`
- bagian setup di README
- `.env.example`
- package scripts / Makefile commands

### 6. Commit hanya setelah human review

AI tidak boleh commit secara default. Human review diff, verification evidence, security
finding jika relevan, dan update dokumentasi sebelum commit diotorisasi.

## Minimum Project Readiness Checklist

Project siap untuk AI-assisted development jika punya:

- `AGENTS.md`
- `docs/ai-agent-guide.md`
- `docs/ai-workflows.md`
- `docs/architecture.md`
- `docs/testing.md`
- `docs/plans/`
- `docs/handoffs/`
- `prompts/`
- `templates/`
- README local setup instructions
- `.env.example`
- command install/dev/test/lint/typecheck/build terdokumentasi
- command migration terdokumentasi jika backend/database project
- aturan git jelas: AI tidak boleh commit kecuali diminta
- aturan security jelas: AI tidak boleh expose secrets
- human review wajib untuk auth, permission, data deletion, migrations, payments, dan
  production config

## Catatan RTK / Redux Toolkit

Jangan wajibkan RTK untuk semua frontend project.

Rekomendasikan RTK jika:

- perlu global client state
- auth/session/user state dipakai di banyak screen
- ada complex UI state
- predictable state transitions penting

Jangan rekomendasikan RTK hanya karena project memakai React.

Jika project sudah memakai React Query, SWR, atau Apollo untuk server state, jangan
duplikasi server state ke Redux kecuali ada alasan jelas.
