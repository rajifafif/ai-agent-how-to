# AI Agent How-To

Toolkit praktis untuk Developer, QA, Security, DevOps, dan Engineering team yang ingin
menggunakan AI coding agent dengan aman dan konsisten.

English adalah source of truth utama. File Indonesia membantu adoption, tetapi tidak
semua guide diterjemahkan penuh supaya tidak ada dua dokumen besar yang divergen.

## Baca Ini Dulu

| Kebutuhan | File |
| --- | --- |
| Navigasi utama English | `README.md` |
| Aturan AI agent untuk repository ini | `AGENTS.md` |
| Mulai pakai toolkit | `docs/getting-started.md` |
| Roadmap adoption bertahap | `docs/implementation-roadmap.md` |
| Katalog prompt | `docs/prompt-library.md` |
| Template AGENTS Bahasa Indonesia | `templates/AGENTS.template.id.md` |

## Strategi Bahasa

- English adalah source of truth utama.
- File Indonesia yang saat ini tersedia:
  - `README.id.md`
  - `templates/AGENTS.template.id.md`
- Jika source English berubah, file Indonesia harus diupdate atau ditandai outdated.
- Jangan membuat dua set dokumentasi lengkap yang dimaintain manual tanpa owner dan
  review cadence.

Prioritas terjemahan berikutnya jika diperlukan:

1. `docs/getting-started.md`
2. `docs/implementation-roadmap.md`
3. Social Contract template setelah dibuat
4. PR checklist setelah dibuat
5. Bug-report template setelah dibuat
6. Dev-QA quality workflow setelah dibuat

## Cara Developer Memakai

Prompt harian pendek:

```text
Read AGENTS.md first. Implement this feature: [feature].
```

Agent harus membaca `AGENTS.md`, lalu route ke `docs/ai-workflows.md` dan prompt yang
sesuai.

## Cara QA Memakai

Prompt harian pendek:

```text
Read AGENTS.md first. Review this change for QA readiness: [change or PR].
```

QA artifact mengikuti standar, guide, checklist, prompt, dan template aktif di repository
ini.

## Status Saat Ini

Repository sudah punya fondasi AI-assisted development:

- AI-agent setup guide/template
- planning loop
- feature/bugfix prompt
- verification guide
- security review guide
- commit dan handoff guide

Archive legacy sudah dihapus dari active tree. Gunakan file aktif di `standards/`,
`guides/`, `checklists/`, `skills/`, `templates/`, `prompts/`, dan `docs/ai-workflows.md`.

## Contoh dan Validasi

- Validasi dokumentasi: `scripts/validate-docs.sh`
- CI documentation quality: `.github/workflows/docs-quality.yml`
