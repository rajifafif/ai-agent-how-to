#!/bin/sh
set -u

fail=0
warn=0
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

hash_file() {
  if command -v sha256sum >/dev/null 2>&1; then
    sha256sum "$1" | sed 's/[[:space:]].*$//'
  elif command -v shasum >/dev/null 2>&1; then
    shasum -a 256 "$1" | sed 's/[[:space:]].*$//'
  else
    echo "NO_HASH_COMMAND"
    return 1
  fi
}

check_skill() {
  name=$1
  canonical="$ROOT/skills/$name/SKILL.md"
  local_skill="$ROOT/.agents/skills/$name/SKILL.md"

  if [ ! -f "$canonical" ]; then
    printf 'FAIL canonical missing %s\n' "skills/$name/SKILL.md"
    fail=$((fail + 1))
    return
  fi

  if [ ! -f "$local_skill" ]; then
    printf 'FAIL local missing .agents/skills/%s/SKILL.md\n' "$name"
    fail=$((fail + 1))
    return
  fi

  ch=$(hash_file "$canonical") || ch="NO_HASH_COMMAND"
  lh=$(hash_file "$local_skill") || lh="NO_HASH_COMMAND"

  if [ "$ch" = "NO_HASH_COMMAND" ] || [ "$lh" = "NO_HASH_COMMAND" ]; then
    printf 'WARN cannot hash %s; missing sha256sum/shasum\n' "$name"
    warn=$((warn + 1))
    return
  fi

  if [ "$ch" = "$lh" ]; then
    printf 'OK   %s in sync\n' "$name"
  else
    printf 'FAIL %s drift canonical=%s local=%s\n' "$name" "$ch" "$lh"
    fail=$((fail + 1))
  fi
}

printf 'Project skill sync validation\n'
printf 'Policy: .agents/skills/* must be exact copies of skills/* for project skills.\n\n'

for skill in prepare-repository plan-feature implement-feature review-security cleanup-docs verify-changes create-commits make-release create-pull-request continue-unfinished-work qa-handover; do
  check_skill "$skill"
done

printf '\nSummary: failures=%s warnings=%s\n' "$fail" "$warn"

if [ "$fail" -gt 0 ]; then
  exit 1
fi
exit 0
