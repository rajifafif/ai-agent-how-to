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
  docs/roadmap/Q3_IMPLEMENTATION_GAP_ANALYSIS.md
  docs/roadmap/Q3_ACTION_ITEM_TRACEABILITY.md
)

for f in "${required[@]}"; do
  if [ -e "$f" ]; then
    printf 'OK   required %s\n' "$f"
  else
    printf 'FAIL missing required %s\n' "$f"
    fail=$((fail + 1))
  fi
done

python3 - <<'PY'
import os, re, sys
names={}
dups=[]
for dp,_,fs in os.walk('prompts') if os.path.isdir('prompts') else []:
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
