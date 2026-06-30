#!/usr/bin/env bash
set -u
python3 - <<'PY'
import os, re, sys
missing=[]
for dp,_,fs in os.walk('.'):
    if '.git' in dp.split(os.sep):
        continue
    for f in fs:
        if not f.endswith('.md'):
            continue
        p=os.path.join(dp,f)
        txt=open(p, encoding='utf-8').read()
        for m in re.finditer(r'\[[^\]]+\]\(([^)]+)\)', txt):
            url=m.group(1).split('#')[0]
            if not url or re.match(r'^[a-z]+:', url) or url.startswith('#'):
                continue
            target=os.path.normpath(os.path.join(dp, url))
            if not os.path.exists(target):
                missing.append((p, url))
for p,u in missing:
    print(f'MISSING {p}: {u}')
print(f'missing_links={len(missing)}')
sys.exit(1 if missing else 0)
PY
