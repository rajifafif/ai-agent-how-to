1|# AI Agent How-To
2|
3|Toolkit praktis untuk Developer, QA, Security, DevOps, dan Engineering team yang ingin
4|menggunakan AI coding agent dengan aman dan konsisten.
5|
6|English adalah source of truth utama. File Indonesia membantu adoption, tetapi tidak
7|semua guide diterjemahkan penuh supaya tidak ada dua dokumen besar yang divergen.
8|
9|## Baca Ini Dulu
10|
11|| Kebutuhan | File |
12|| --- | --- |
13|| Navigasi utama English | `README.md` |
14|| Aturan AI agent untuk repository ini | `AGENTS.md` |
15|| Mulai pakai toolkit | `docs/getting-started.md` |
16|| Roadmap adoption bertahap | `docs/implementation-roadmap.md` |
17|| Katalog prompt | `docs/prompt-library.md` |
18|| Gap analysis Q3 | `docs/ARCHIVE/roadmap/Q3_IMPLEMENTATION_GAP_ANALYSIS.md` |
19|| Traceability Q3 | `docs/ARCHIVE/roadmap/Q3_ACTION_ITEM_TRACEABILITY.md` |
20|| Panduan AI agent Bahasa Indonesia | `docs/ARCHIVE/ai-agent-guide.id.md` |
21|| Template AGENTS Bahasa Indonesia | `templates/AGENTS.template.id.md` |
22|
23|## Strategi Bahasa
24|
25|- English adalah source of truth utama.
26|- File Indonesia yang saat ini tersedia:
27|  - `README.id.md`
28|  - `docs/ARCHIVE/ai-agent-guide.id.md`
29|  - `templates/AGENTS.template.id.md`
30|- Jika source English berubah, file Indonesia harus diupdate atau ditandai outdated.
31|- Jangan membuat dua set dokumentasi lengkap yang dimaintain manual tanpa owner dan
32|  review cadence.
33|
34|Prioritas terjemahan berikutnya jika diperlukan:
35|
36|1. `docs/getting-started.md`
37|2. `docs/implementation-roadmap.md`
38|3. Social Contract template setelah dibuat
39|4. PR checklist setelah dibuat
40|5. Bug-report template setelah dibuat
41|6. Dev-QA quality workflow setelah dibuat
42|
43|## Cara Developer Memakai
44|
45|Prompt harian pendek:
46|
47|```text
48|Read AGENTS.md first. Implement this feature: [feature].
49|```
50|
51|Agent harus membaca `AGENTS.md`, lalu route ke `docs/ai-workflows.md` dan prompt yang
52|sesuai.
53|
54|## Cara QA Memakai
55|
56|Prompt harian pendek:
57|
58|```text
59|Read AGENTS.md first. Review this change for QA readiness: [change or PR].
60|```
61|
62|QA artifact lengkap masih dalam roadmap Q3. Statusnya bisa dilihat di
63|`docs/ARCHIVE/roadmap/Q3_ACTION_ITEM_TRACEABILITY.md`.
64|
65|## Status Saat Ini
66|
67|Repository sudah punya fondasi AI-assisted development:
68|
69|- AI-agent setup guide/template
70|- planning loop
71|- feature/bugfix prompt
72|- verification guide
73|- security review guide
74|- commit dan handoff guide
75|
76|Yang sedang ditambahkan lewat roadmap Q3:
77|
78|- Dev-QA Social Contract
79|- PR standard
80|- bug report dan SLA
81|- automation metrics dan testing standard
82|- architecture improvement workflow
83|- AI/security standard yang lebih lengkap
84|- environment/deployment readiness
85|- incident/RCA workflow
86|- validation scripts dan examples
87|
88|Jangan anggap semua 12 item Q3 selesai sampai traceability matrix menyatakan lengkap
89|dan Definition of Done terpenuhi.
90|
## Contoh dan Validasi

- Contoh end-to-end fictional: `docs/ARCHIVE/examples/fictional-sample-project-end-to-end.md`
- Contoh automation testing fictional: `docs/ARCHIVE/examples/automation-testing/fictional-checkout-flow.md`
- Validasi dokumentasi: `scripts/validate-docs.sh`
- CI documentation quality: `.github/workflows/docs-quality.yml`
