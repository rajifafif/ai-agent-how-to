#!/bin/sh
set -u

DRY_RUN=1
TARGET_DIR="."
TOOLKIT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

usage() {
  cat <<'USAGE'
Usage: scripts/bootstrap-agent-ready.sh [--target DIR] [--apply] [--dry-run]

Bootstraps project-local AI-agent workflow files from this toolkit.
Default mode is --dry-run. Use --apply to copy files.

Installs when available:
- AGENTS.md from templates/AGENTS.template.md
- docs/ai-workflows.md
- docs/project-context.md from templates/PROJECT_CONTEXT.template.md
- docs/repository-readiness-checklist.md from templates/REPOSITORY_READINESS_CHECKLIST.template.md
- docs/testing.md placeholder when missing
- selected .agents/skills/* from canonical skills/*
- selected templates/checklists

Does not overwrite existing files. Reports SKIP for existing files.
USAGE
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --target)
      shift
      [ "$#" -gt 0 ] || { echo "ERROR --target requires DIR" >&2; exit 2; }
      TARGET_DIR=$1
      ;;
    --apply)
      DRY_RUN=0
      ;;
    --dry-run)
      DRY_RUN=1
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "ERROR unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
  shift
done

if [ ! -d "$TARGET_DIR" ]; then
  echo "ERROR target directory not found: $TARGET_DIR" >&2
  exit 1
fi

TARGET_DIR=$(CDPATH= cd -- "$TARGET_DIR" && pwd)

say_mode() {
  if [ "$DRY_RUN" -eq 1 ]; then
    printf 'DRY-RUN %s\n' "$1"
  else
    printf 'APPLY   %s\n' "$1"
  fi
}

ensure_dir() {
  dir=$1
  if [ -d "$dir" ]; then
    printf 'OK      dir exists %s\n' "$dir"
  else
    say_mode "mkdir $dir"
    [ "$DRY_RUN" -eq 1 ] || mkdir -p "$dir"
  fi
}

install_file() {
  src=$1
  dst=$2
  if [ ! -f "$src" ]; then
    printf 'MISS    source %s\n' "$src"
    return 1
  fi
  if [ -e "$dst" ]; then
    printf 'SKIP    exists %s\n' "$dst"
    return 0
  fi
  ensure_dir "$(dirname -- "$dst")"
  say_mode "copy $src -> $dst"
  [ "$DRY_RUN" -eq 1 ] || cp "$src" "$dst"
}

install_text_if_missing() {
  dst=$1
  title=$2
  if [ -e "$dst" ]; then
    printf 'SKIP    exists %s\n' "$dst"
    return 0
  fi
  ensure_dir "$(dirname -- "$dst")"
  say_mode "create $dst"
  if [ "$DRY_RUN" -ne 1 ]; then
    {
      printf '# %s\n\n' "$title"
      printf 'Needs confirmation. Replace this file with repository-specific guidance discovered from project evidence.\n'
    } > "$dst"
  fi
}

install_skill() {
  name=$1
  install_file "$TOOLKIT_DIR/skills/$name/SKILL.md" "$TARGET_DIR/.agents/skills/$name/SKILL.md"
}

printf 'AI-agent bootstrap\n'
printf 'Toolkit: %s\n' "$TOOLKIT_DIR"
printf 'Target:  %s\n' "$TARGET_DIR"
if [ "$DRY_RUN" -eq 1 ]; then
  printf 'Mode:    dry-run\n\n'
else
  printf 'Mode:    apply\n\n'
fi

install_file "$TOOLKIT_DIR/templates/AGENTS.template.md" "$TARGET_DIR/AGENTS.md"
install_file "$TOOLKIT_DIR/docs/ai-workflows.md" "$TARGET_DIR/docs/ai-workflows.md"
install_file "$TOOLKIT_DIR/templates/PROJECT_CONTEXT.template.md" "$TARGET_DIR/docs/project-context.md"
install_file "$TOOLKIT_DIR/templates/REPOSITORY_READINESS_CHECKLIST.template.md" "$TARGET_DIR/docs/repository-readiness-checklist.md"
install_text_if_missing "$TARGET_DIR/docs/testing.md" "Testing"
ensure_dir "$TARGET_DIR/docs/plans"
ensure_dir "$TARGET_DIR/docs/handoffs"

for skill in prepare-repository plan-feature implement-feature review-security verify-changes create-commits make-release create-pull-request continue-unfinished-work qa-handover; do
  install_skill "$skill"
done

for template in IMPLEMENTATION_PLAN HANDOFF SECURITY_REVIEW PR_CHECKLIST RELEASE_PROCESS QA_HANDOVER; do
  install_file "$TOOLKIT_DIR/templates/$template.template.md" "$TARGET_DIR/templates/$template.template.md"
done

printf '\nOutput notes:\n'
printf '%s\n' '- Existing files are skipped, not overwritten.'
printf '%s\n' '- Project .agents/skills/* should stay exact copies of toolkit skills/*.'
printf '%s\n' '- Developer-specific extra skills belong at agent/user level, not project level.'
printf '%s\n' '- Unknown project-specific values must remain Needs confirmation.'
printf '%s\n' '- Run local validation after apply.'
