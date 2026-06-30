#!/usr/bin/env bash
set -u
fail=0
if [ ! -d templates ]; then
  echo 'MISS templates/'
  exit 1
fi
for f in templates/*.template.md; do
  [ -e "$f" ] || continue
  if grep -q 'Needs confirmation' "$f"; then
    printf 'OK   %s has configurable placeholders\n' "$f"
  else
    printf 'WARN %s has no Needs confirmation placeholder\n' "$f"
  fi
  if grep -Eqi '(password|token|secret)[[:space:]]*[:=][[:space:]]*[A-Za-z0-9_./+=-]{12,}' "$f"; then
    printf 'FAIL %s has secret-like value\n' "$f"
    fail=$((fail + 1))
  fi
done
exit "$fail"
