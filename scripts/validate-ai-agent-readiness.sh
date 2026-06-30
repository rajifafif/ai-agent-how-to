#!/usr/bin/env bash
set -u

fail=0
warn=0

check_file() {
  if [ -f "$1" ]; then
    printf 'OK   %s\n' "$1"
  else
    printf 'MISS %s\n' "$1"
    fail=$((fail + 1))
  fi
}

check_optional() {
  if [ -e "$1" ]; then
    printf 'OK   %s\n' "$1"
  else
    printf 'WARN %s not found\n' "$1"
    warn=$((warn + 1))
  fi
}

printf 'AI-agent readiness presence check\n'
printf 'This checks file presence/simple text only; it does not prove semantic correctness.\n\n'

check_file "AGENTS.md"
check_file "README.md"
check_optional "docs"
check_optional "prompts"
check_optional "templates"

if [ -f AGENTS.md ]; then
  for term in "test" "commit" "security" "Needs confirmation"; do
    if grep -qi "$term" AGENTS.md; then
      printf 'OK   AGENTS.md mentions %s\n' "$term"
    else
      printf 'WARN AGENTS.md does not mention %s\n' "$term"
      warn=$((warn + 1))
    fi
  done
fi

if [ -d guide-templates ]; then
  printf 'WARN temporary guide-templates/ still exists\n'
  warn=$((warn + 1))
fi

printf '\nSummary: failures=%s warnings=%s\n' "$fail" "$warn"

if [ "$fail" -gt 0 ]; then
  exit 1
fi
exit 0
