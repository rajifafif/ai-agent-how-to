#!/usr/bin/env bash
set -u
fail=0

printf 'Documentation validation\n'

scripts/validate-links.sh || fail=$((fail + 1))
scripts/validate-templates.sh || fail=$((fail + 1))
scripts/validate-ai-agent-readiness.sh || fail=$((fail + 1))

required=(
  README.md
  README.id.md
  AGENTS.md
  docs/getting-started.md
  docs/implementation-roadmap.md
  docs/prompt-library.md
  docs/definition-of-done.md
  docs/glossary.md
  docs/roadmap/RESTRUCTURE_TO_STANDARDS_AND_SKILLS_PLAN.md
)

for f in "${required[@]}"; do
  if [ -e "$f" ]; then
    printf 'OK   required %s\n' "$f"
  else
    printf 'FAIL missing required %s\n' "$f"
    fail=$((fail + 1))
  fi
done

extra_required=(
  standards/README.md
  standards/ai-usage-standard.md
  standards/ai-ready-repository-standard.md
  standards/secure-coding-standard.md
  standards/testing-standard.md
  standards/documentation-standard.md
  standards/commit-standard.md
  standards/pull-request-standard.md
  standards/human-review-standard.md
  guides/README.md
  guides/opencode-adoption-guide.md
  guides/make-new-project-ai-ready.md
  guides/make-legacy-project-ai-ready.md
  checklists/README.md
  checklists/repository-ai-readiness-checklist.md
  skills/README.md
  templates/AGENTS.template.md
  templates/PROJECT_CONTEXT.template.md
  templates/IMPLEMENTATION_PLAN.template.md
  templates/HANDOFF.template.md
  templates/CHANGE_PLAN.template.md
  templates/PR_CHECKLIST.template.md
  templates/SECURITY_REVIEW.template.md
  templates/REPOSITORY_READINESS_CHECKLIST.template.md
  templates/STARTER_PACK/README.md
  templates/AI_AGENT_READY_REPOSITORY/README.md
  prompts/bootstrap-existing-project.md
  prompts/initialize-project.md
  prompts/plan-feature.md
  prompts/implement-feature.md
  prompts/fix-bug.md
  prompts/review-security.md
  prompts/create-commits.md
  prompts/create-pull-request.md
  prompts/continue-unfinished-work.md
)
for f in "${extra_required[@]}"; do
  if [ -e "$f" ]; then
    printf 'OK   restructured %s\n' "$f"
  else
    printf 'FAIL missing restructured path %s\n' "$f"
    fail=$((fail + 1))
  fi
done

if [ -d skills ]; then
  missing_skill=0
  for d in skills/*; do
    [ -d "$d" ] || continue
    if [ -f "$d/SKILL.md" ]; then
      printf 'OK   skill %s\n' "$d/SKILL.md"
    else
      printf 'FAIL missing skill file %s/SKILL.md\n' "$d"
      missing_skill=$((missing_skill + 1))
    fi
  done
  if [ "$missing_skill" -ne 0 ]; then fail=$((fail + 1)); fi
fi

python3 - <<'PY'
from pathlib import Path
import sys
missing=[]
allowed=('Status: Canonical','Status: Active','Status: Detail reference','Status: Compatibility pointer','Status: Historical','Status: Example')
for p in Path('docs').rglob('*.md'):
    if 'ARCHIVE' in p.parts:
        continue
    lines=p.read_text(encoding='utf-8').splitlines()[:8]
    if not any(line.startswith(allowed) for line in lines):
        missing.append(str(p))
for p in missing:
    print(f'FAIL missing docs status header {p}')
print(f'docs_status_missing={len(missing)}')
sys.exit(1 if missing else 0)
PY
if [ "$?" -ne 0 ]; then fail=$((fail + 1)); fi

python3 - <<'PY'
import os, sys
names={}
dups=[]
for dp,_,fs in os.walk('prompts') if os.path.isdir('prompts') else []:
    if 'ARCHIVE' in dp.split(os.sep):
        continue
    for f in fs:
        if f.endswith('.md'):
            key=f.lower()
            path=os.path.join(dp,f)
            if key in names:
                dups.append((key,names[key],path))
            names[key]=path
for key,a,b in dups:
    print(f'FAIL duplicate prompt name {key}: {a} {b}')
print(f'prompt_files={len(names)} duplicate_prompt_names={len(dups)}')
sys.exit(1 if dups else 0)
PY
if [ "$?" -ne 0 ]; then fail=$((fail + 1)); fi

python3 - <<'PY'
import os, re, sys
hits=[]
pat=re.compile(r'(?i)(api[_-]?key|secret|token|password)\s*[:=]\s*[A-Za-z0-9_./+=-]{12,}')
for dp,_,fs in os.walk('.'):
    if '.git' in dp.split(os.sep):
        continue
    for f in fs:
        p=os.path.join(dp,f)
        try:
            txt=open(p,encoding='utf-8').read()
        except Exception:
            continue
        for m in pat.finditer(txt):
            hits.append((p,m.group(0)[:80]))
for p,h in hits:
    print(f'FAIL secret-like value {p}: {h}')
print(f'secret_like_hits={len(hits)}')
sys.exit(1 if hits else 0)
PY
if [ "$?" -ne 0 ]; then fail=$((fail + 1)); fi

printf 'validation_failures=%s\n' "$fail"
exit "$fail"
