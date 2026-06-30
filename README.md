1|1|1|1|1|1|# AI Agent How-To
2|2|2|2|2|2|
3|3|3|3|3|3|Practical, reusable, AI-agent-friendly implementation guide for Developer, QA, Security,
4|4|4|4|4|4|DevOps, and Engineering teams.
5|5|5|5|5|5|
6|6|6|6|6|6|This repository is not only conceptual documentation. It provides standards, templates,
7|7|7|7|7|7|checklists, prompts, examples, validation rules, and adoption instructions that can be
8|8|8|8|8|8|copied or adapted into real software repositories.
9|9|9|9|9|9|
10|10|10|10|10|10|## What Problem Does It Solve?
11|11|11|11|11|11|
12|12|12|12|12|12|Teams using AI coding agents need shared rules for safe development, QA collaboration,
13|13|13|13|13|13|verification evidence, PR handover, security review, automation testing, environment
14|14|14|14|14|14|readiness, and incident learning. This toolkit makes those workflows explicit and reusable
15|15|15|15|15|15|without assuming a specific technology stack.
16|16|16|16|16|16|
17|17|17|17|17|17|## Who Should Use It?
18|18|18|18|18|18|
19|19|19|19|19|19|| Role | Use this repository to |
20|20|20|20|20|20|| --- | --- |
21|21|21|21|21|21|| Developer | Plan, implement, verify, document, and prepare PRs with AI assistance safely. |
22|22|22|22|22|22|| QA Engineer | Review requirements, generate scenarios, validate evidence, report bugs, and review QA handovers. |
23|23|23|23|23|23|| Tech Lead | Adopt consistent Dev-QA workflow, PR standards, architecture decisions, and human approval boundaries. |
24|24|24|24|24|24|| QA Lead | Standardize bug reporting, severity/SLA, automation testing, metrics, and release readiness. |
25|25|25|25|25|25|| DevOps | Standardize environment, deployment, smoke validation, drift checks, and readiness evidence. |
26|26|26|26|26|26|| Security Reviewer | Apply secure coding, security review, and high-risk approval rules. |
27|27|27|27|27|27|| AI Agent | Read `AGENTS.md`, route tasks through `docs/ai-workflows.md`, and use task-specific prompts/templates. |
28|28|28|28|28|28|| Engineering Manager | Track adoption, quality metrics, incident follow-up, and ownership decisions. |
29|29|29|29|29|29|
30|30|30|30|30|30|## Read This First
31|31|31|31|31|31|
32|32|32|32|32|32|1. `AGENTS.md` — operating rules for AI agents in this repository.
33|33|33|33|33|33|2. `docs/getting-started.md` — role-based starting points and safe customization rules.
34|34|34|34|34|34|3. `docs/implementation-roadmap.md` — incremental adoption phases.
35|35|35|35|35|35|4. `docs/prompt-library.md` — prompt catalog and missing prompt backlog.
36|36|36|36|36|36|5. `docs/roadmap/Q3_IMPLEMENTATION_GAP_ANALYSIS.md` — audit baseline for Q3 scope.
37|37|37|37|37|37|6. `docs/roadmap/Q3_ACTION_ITEM_TRACEABILITY.md` — action-item-to-artifact tracker.
38|38|38|38|38|38|
39|39|39|39|39|39|## Source of Truth
40|40|40|40|40|40|
41|41|41|41|41|41|| Topic | Canonical file |
42|42|42|42|42|42|| --- | --- |
43|43|43|43|43|43|| Root navigation | `README.md` |
44|44|44|44|44|44|| AI-agent operating rules for this repo | `AGENTS.md` |
45|45|45|45|45|45|| Adoption phases | `docs/implementation-roadmap.md` |
46|46|46|46|46|46|| Terminology | `docs/glossary.md` |
47|47|47|47|47|47|| Definition of Done | `docs/definition-of-done.md` |
48|48|48|48|48|48|| AI workflow routing | `docs/ai-workflows.md` |
49|49|49|49|49|49|| Prompt catalog | `docs/prompt-library.md` |
50|50|50|50|50|50|| Q3 audit baseline | `docs/roadmap/Q3_IMPLEMENTATION_GAP_ANALYSIS.md` |
51|51|51|51|51|51|| Q3 traceability | `docs/roadmap/Q3_ACTION_ITEM_TRACEABILITY.md` |
52|52|52|52|52|52|
53|53|53|53|53|53|## Current Toolkit Contents
54|54|54|54|54|54|
55|55|55|55|55|55|| Area | Files |
56|56|56|56|56|56|| --- | --- |
57|57|57|57|57|57|| AI-agent setup | `docs/ai-agent-guide.md`, `templates/AGENTS.template.md`, `prompts/INITIAL_AI_AGENT_READY_PROMPT.md` |
58|58|58|58|58|58|| Workflow routing | `docs/ai-workflows.md`, `docs/prompt-library.md` |
59|59|59|59|59|59|| Planning and lifecycle | `docs/development-lifecycle.md`, `docs/planning-loop-guide.md`, `templates/IMPLEMENTATION_PLAN.template.md`, `prompts/PLANNING_LOOP_PROMPT.md` |
60|60|60|60|60|60|| Implementation and bugfix | `prompts/FEATURE_IMPLEMENTATION_PROMPT.md`, `prompts/BUGFIX_PROMPT.md` |
61|61|61|61|61|61|| Verification | `docs/verification-guide.md`, `prompts/VERIFY_CHANGES_PROMPT.md` |
62|62|62|62|62|62|| AI and security | `docs/security/ai-assisted-development-standard.md`, `docs/security/secure-coding-checklist.md`, `docs/security/security-review-guide.md`, `templates/SECURITY_REVIEW.template.md`, `prompts/SECURITY_REVIEW_PROMPT.md` |
63|63|63|63|63|63|| Documentation update | `docs/documentation-guide.md`, `prompts/UPDATE_DOCUMENTATION_PROMPT.md` |
64|64|64|64|64|64|| Commit and handoff | `docs/commit-guide.md`, `docs/unfinished-work-guide.md`, `prompts/COMMIT_PROMPT.md`, `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md`, `templates/HANDOFF.template.md`, `templates/COMPLETION_REPORT.template.md` |
65|65|65|65|65|65|| Roadmap and governance | `docs/implementation-roadmap.md`, `docs/definition-of-done.md`, `docs/glossary.md`, `docs/roadmap/` |
66|66|66|66|66|| Core Dev-QA standards | `docs/dev-qa/social-contract-guide.md`, `docs/dev-qa/quality-workflow.md`, `docs/dev/pr-standard.md`, `docs/qa/bug-report-standard.md`, `docs/qa/bug-severity-and-sla.md` |
67|67|67|67|67|| Core Dev-QA templates | `templates/DEV_QA_SOCIAL_CONTRACT.template.md`, `templates/PR_CHECKLIST.template.md`, `templates/BUG_REPORT.template.md`, `templates/QA_HANDOVER_CHECKLIST.template.md`, `templates/RELEASE_QUALITY_GATE.template.md` |
68|68|68|| Automation metrics/testing | `docs/qa/automation-metrics-and-kpi.md`, `docs/qa/automation-testing-standard.md`, `templates/AUTOMATION_KPI_PLAN.template.md`, `templates/AUTOMATION_COVERAGE_REPORT.template.md`, `templates/AUTOMATION_TEST_PLAN.template.md` |
69|69|| Repository/environment readiness | `docs/ai-agent-ready-repository-standard.md`, `docs/devops/environment-standard.md`, `docs/devops/deployment-readiness.md`, `scripts/validate-ai-agent-readiness.sh`, `scripts/validate-links.sh`, `scripts/validate-templates.sh` |
70|| Architecture and incidents | `docs/architecture/architecture-improvement-workflow.md`, `templates/ARCHITECTURE_IMPROVEMENT_PLAN.template.md`, `templates/ADR.template.md`, `docs/incidents/incident-response-playbook.md`, `docs/incidents/root-cause-analysis-guide.md` |
| Examples and validation | `docs/examples/fictional-sample-project-end-to-end.md`, `docs/examples/automation-testing/fictional-checkout-flow.md`, `.github/workflows/docs-quality.yml`, `scripts/validate-docs.sh` |
71|70|69|68|68|66|
72|71|70|69|69|67|## Which Prompt Should Be Used?
73|72|71|70|70|68|
74|73|72|71|71|69|| Task | Prompt |
75|74|73|72|72|70|| --- | --- |
76|75|74|73|73|71|| Prepare an existing repository for AI agents | `prompts/INITIAL_AI_AGENT_READY_PROMPT.md` |
77|76|75|74|74|72|| Plan larger work before implementation | `prompts/PLANNING_LOOP_PROMPT.md` |
78|77|76|75|75|73|| Implement a feature | `prompts/FEATURE_IMPLEMENTATION_PROMPT.md` |
79|78|77|76|76|74|| Investigate/fix a bug | `prompts/BUGFIX_PROMPT.md` |
80|79|78|77|77|75|| Verify current changes | `prompts/VERIFY_CHANGES_PROMPT.md` |
81|80|79|78|78|76|| Run security review | `prompts/SECURITY_REVIEW_PROMPT.md` |
82|81|80|79|79|77|| Update documentation | `prompts/UPDATE_DOCUMENTATION_PROMPT.md` |
83|82|81|80|80|78|| Prepare commits, only when authorized | `prompts/COMMIT_PROMPT.md` |
84|83|82|81|81|79|| Resume unfinished work | `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md` |
85|84|83|82|82|80|| See full prompt coverage and gaps | `docs/prompt-library.md` |
86|85|84|83|83|81|
87|86|85|84|84|82|Short daily examples:
88|87|86|85|85|83|
89|88|87|86|86|84|```text
90|89|88|87|87|85|Read AGENTS.md first. Implement this feature: [feature].
91|90|89|88|88|86|```
92|91|90|89|89|87|
93|92|91|90|90|88|```text
94|93|92|91|91|89|Read AGENTS.md first. Review this change for QA readiness: [change or PR].
95|94|93|92|92|90|```
96|95|94|93|93|91|
97|96|95|94|94|92|## How to Copy This Toolkit Into Another Repository
98|97|96|95|95|93|
99|98|97|96|96|94|1. Inspect the target repository first.
100|99|98|97|97|95|2. Copy or temporarily download only the needed guides/templates/prompts.
101|100|99|98|98|96|3. Generate `AGENTS.md` from `templates/AGENTS.template.md` using facts discovered from
102|101|100|99|99|97|   the target repository.
103|102|101|100|100|98|4. Discover actual install, test, lint, type-check, build, migration, seed, and run
104|103|102|101|101|99|   commands. Do not invent them.
105|104|103|102|102|100|5. Mark unknown values as `Needs confirmation`.
106|105|104|103|103|101|6. Ask for human review before making generated docs authoritative.
107|106|105|104|104|102|7. Remove temporary bootstrap material after durable prompts/templates/docs are installed.
108|107|106|105|105|103|
109|108|107|106|106|104|See `docs/getting-started.md` for the safe customization rules.
110|109|108|107|107|105|
111|110|109|108|108|106|## Templates vs Standards
112|111|110|109|109|107|
113|112|111|110|110|108|| Type | Meaning |
114|113|112|111|111|109|| --- | --- |
115|114|113|112|112|110|| Template | A reusable starting point under `templates/`. Copy and customize. Keep placeholders for organization-specific values. |
116|115|114|113|113|111|| Standard | A guide that becomes mandatory only after a team adopts it. Link to it instead of duplicating it. |
117|116|115|114|114|112|| Prompt | Copy-paste instruction for an AI agent. It should route to standards and templates. |
118|117|116|115|115|113|| Example | Fictional demonstration only. Never treat examples as real project policy. |
119|118|117|116|116|114|
120|119|118|117|117|115|## Language Strategy
121|120|119|118|118|116|
122|121|120|119|119|117|English is the primary source of truth for this repository unless a file explicitly says
123|122|121|120|120|118|otherwise.
124|123|122|121|121|119|
125|124|123|122|122|120|Indonesian files currently maintained:
126|125|124|123|123|121|
127|126|125|124|124|122|- `README.id.md`
128|127|126|125|125|123|- `docs/ai-agent-guide.id.md`
129|128|127|126|126|124|- `templates/AGENTS.template.id.md`
130|129|128|127|127|125|
131|130|129|128|128|126|When an English source changes, translated files should either be updated or marked with
132|131|130|129|129|127|an outdated note. Do not maintain two manually diverging full document sets without a
133|132|131|130|130|128|clear owner and review cadence.
134|133|132|131|131|129|
135|134|133|132|132|130|Adoption-critical files to consider translating next:
136|135|134|133|133|131|
137|136|135|134|134|132|- `docs/getting-started.md`
138|137|136|135|135|133|- `docs/implementation-roadmap.md`
139|138|137|136|136|134|- future Social Contract template
140|139|138|137|137|135|- future PR checklist
141|140|139|138|138|136|- future bug-report template
142|141|140|139|139|137|- future Dev-QA quality workflow
143|142|141|140|140|138|
144|143|142|141|141|139|## Current Status
145|144|143|142|142|140|
146|145|144|143|143|141|Stage 1 and Stage 2 foundation work are in progress:
147|146|145|144|144|142|
148|147|146|145|145|143|- Audit baseline: `docs/roadmap/Q3_IMPLEMENTATION_GAP_ANALYSIS.md`
149|148|147|146|146|144|- Adoption roadmap: `docs/implementation-roadmap.md`
150|149|148|147|147|145|- Traceability tracker: `docs/roadmap/Q3_ACTION_ITEM_TRACEABILITY.md`
151|150|149|148|148|146|- Definition of Done: `docs/definition-of-done.md`
152|151|150|149|149|147|- Prompt catalog: `docs/prompt-library.md`
153|152|151|150|150|148|
154|153|152|151|151|149|The remaining Q3 implementation artifacts are tracked in the traceability matrix. Do not
155|154|153|152|152|150|claim all 12 Q3 action items are complete until the traceability matrix and Definition of
156|155|154|153|153|151|Done checks support that claim.
157|156|155|154|154|152|