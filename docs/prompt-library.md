1|1|1|# Prompt Library
2|2|2|
3|3|3|This file is the catalog for AI-agent prompts. Short daily instructions should start with
4|4|4|`Read AGENTS.md first` and route through `docs/ai-workflows.md` or this catalog.
5|5|5|
6|6|6|## Prompt Rules
7|7|7|
8|8|8|Every prompt should define:
9|9|9|
10|10|10|- objective;
11|11|11|- inputs;
12|12|12|- expected process;
13|13|13|- constraints;
14|14|14|- expected output;
15|15|15|- verification expectations;
16|16|16|- conditions requiring human confirmation.
17|17|17|
18|18|18|Do not duplicate full security, verification, PR, or QA rules in every prompt. Link to the
19|19|19|canonical guide and include only task-specific instructions.
20|20|20|
21|21|21|## Current Prompt Catalog
22|22|22|
23|23|23|| Workflow | Role | Current prompt | Coverage status |
24|24|24|| --- | --- | --- | --- |
25|25|25|| Repository onboarding | Developer / AI Agent | `prompts/INITIAL_AI_AGENT_READY_PROMPT.md` | Partial; needs updated readiness standard and validation script. |
26|26|26|| Feature planning | Developer / Tech Lead | `prompts/PLANNING_LOOP_PROMPT.md` | Good foundation. |
27|27|27|| Feature implementation | Developer / AI Agent | `prompts/FEATURE_IMPLEMENTATION_PROMPT.md` | Partial; should route to PR/QA handover after Stage 3. |
28|28|28|| Bug investigation | Developer / QA | `prompts/BUGFIX_PROMPT.md` | Partial; needs separate bug report/reproduction prompts. |
29|29|29|| Bug fixing | Developer / AI Agent | `prompts/BUGFIX_PROMPT.md` | Good foundation for code fix workflow. |
30|30|30|| Refactoring | Developer | Needed | Missing dedicated refactor prompt. |
31|31|31|| Verification | Developer / QA | `prompts/VERIFY_CHANGES_PROMPT.md` | Good foundation. |
32|32|32|| Documentation update | Developer / Technical Writer | `prompts/UPDATE_DOCUMENTATION_PROMPT.md` | Good foundation. |
33|33|33|| Pull Request preparation | Developer | Needed | Missing PR prompt. |
34|34|34|| Commit preparation | Developer | `prompts/COMMIT_PROMPT.md` | Present. Must remain explicit: no commit unless authorized. |
35|35|35|| Security review | Security Reviewer / Developer | `prompts/SECURITY_REVIEW_PROMPT.md` | Present; needs updated security guide references. |
36|36|36|| Unfinished-work handoff | Developer / AI Agent | `prompts/CONTINUE_UNFINISHED_WORK_PROMPT.md` | Present for resuming; needs handoff creation prompt or route. |
37|37|37|| Environment validation | DevOps / Developer | Needed | Missing. |
38|38|38|| Incident investigation | DevOps / Support / Developer | `prompts/INCIDENT_TRIAGE_PROMPT.md` | Present. |
39|39|39|| Requirement analysis | QA | Needed | Missing. |
40|40|40|| Refinement preparation | QA / Product / Dev | Needed | Missing. |
41|41|41|| Test scenario generation | QA | Needed | Missing. |
42|42|42|| Exploratory testing | QA | Needed | Missing. |
43|43|43|| Regression planning | QA | Needed | Missing. |
44|44|44|| API testing | QA | Needed | Missing. |
45|45|45|| UI testing | QA | Needed | Missing. |
46|46|46|| Bug report preparation | QA | `prompts/CREATE_BUG_REPORT_PROMPT.md` | Present. |
47|47|47|| Bug reproduction | QA / Developer | Needed | Missing. |
48|48|48|| Evidence review | QA / Reviewer | Needed | Missing. |
49|49|49|| PR handover review | QA | `prompts/QA_HANDOVER_REVIEW_PROMPT.md` | Present. |
50|50|50|| Release readiness review | QA Lead / Tech Lead | `prompts/RELEASE_READINESS_PROMPT.md` | Present. |
51|51|51|| Automation candidate identification | QA Automation | Use `docs/qa/automation-metrics-and-kpi.md` and `templates/AUTOMATION_KPI_PLAN.template.md` | Guide/template present; dedicated prompt still optional/missing. |
52|52|52|| Test automation implementation review | QA Automation / Developer | `prompts/REVIEW_AUTOMATION_TEST_PROMPT.md` | Present. |
53|53|53|| Production incident support | QA / DevOps / Developer | `prompts/INCIDENT_TRIAGE_PROMPT.md`, `prompts/ROOT_CAUSE_ANALYSIS_PROMPT.md` | Present. |
54|54|54|
55|55|55|## Short Daily Prompt Examples
56|56|56|
57|57|57|Developer:
58|58|58|
59|59|59|```text
60|60|60|Read AGENTS.md first. Implement this feature: [feature].
61|61|61|```
62|62|62|
63|63|63|QA Engineer:
64|64|64|
65|65|65|```text
66|66|66|Read AGENTS.md first. Review this change for QA readiness: [change or PR].
67|67|67|```
68|68|68|
69|69|69|Security Reviewer:
70|70|70|
71|71|71|```text
72|72|72|Read AGENTS.md first. Perform a security review of the current diff. Do not modify code.
73|73|73|```
74|74|74|
75|75|75|DevOps:
76|76|76|
77|77|77|```text
78|78|78|Read AGENTS.md first. Validate environment readiness for [environment]. Mark unknowns as Needs confirmation.
79|79|79|```
80|80|80|
81|81|81|## Backlog for Prompt Organization
82|82|82|
83|83|83|When Stage 3-7 artifacts are added, organize prompts without breaking existing paths:
84|84|84|
85|85|85|```text
86|86|86|prompts/
87|87|87|├── developer/
88|88|88|├── qa/
89|89|89|├── security/
90|90|90|├── devops/
91|91|91|├── incidents/
92|92|92|└── shared/
93|93|93|```
94|94|94|
95|95|95|Keep old flat prompt paths as compatibility files or index links until users migrate.
96|96|96|