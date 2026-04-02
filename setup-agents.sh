#!/usr/bin/env bash
# setup-agents.sh — Sync canonical AgentInstructions files to a local project
#
# This script downloads AGENTS.md and all .github/agents/ files from the
# LoneEngineer99/AgentInstructions repository and places them in the correct
# locations inside the calling project so that GitHub Copilot and other AI
# agents can read them without needing network access at runtime.
#
# Usage:
#   bash setup-agents.sh               # sync all files (create or update)
#   bash setup-agents.sh --validate    # validate existing local files against checksums
#   bash setup-agents.sh --help        # show this help
#
# Requirements: curl, sha256sum (Linux/macOS via coreutils)

set -euo pipefail

REPO_RAW="https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main"
CHECKSUM_FILE=".github/agents/CHECKSUMS.sha256"

AGENT_FILES=(
  "AGENTS.md"
  ".github/agents/README.md"
  ".github/agents/CHECKSUMS.sha256"
  ".github/agents/agent-reporter.md"
  ".github/agents/api-designer.md"
  ".github/agents/binary-analyst.md"
  ".github/agents/code-formatter.md"
  ".github/agents/continuous-developer.md"
  ".github/agents/database-architect.md"
  ".github/agents/documentation-writer.md"
  ".github/agents/project-initializer.md"
  ".github/agents/security-auditor.md"
  ".github/agents/test-engineer.md"
  ".github/agents/ui-designer.md"
)

# ── helpers ──────────────────────────────────────────────────────────────────

info()    { echo "  [info]  $*"; }
success() { echo "  [ok]    $*"; }
warn()    { echo "  [warn]  $*" >&2; }
err()     { echo "  [error] $*" >&2; }

require_command() {
  if ! command -v "$1" &>/dev/null; then
    err "Required command not found: $1"
    exit 1
  fi
}

#Detect the sha256 utility (Linux uses sha256sum; macOS uses shasum -a 256)
sha256_of_file() {
  if command -v sha256sum &>/dev/null; then
    sha256sum "$1" | awk '{print $1}'
  else
    shasum -a 256 "$1" | awk '{print $1}'
  fi
}

# ── validate mode ─────────────────────────────────────────────────────────────

do_validate() {
  echo ""
  echo "Validating local agent files against $CHECKSUM_FILE ..."
  echo ""

  if [[ ! -f "$CHECKSUM_FILE" ]]; then
    err "$CHECKSUM_FILE not found. Run 'bash setup-agents.sh' first to sync files."
    exit 1
  fi

  local failed=0
  while IFS= read -r line; do
    # Skip comment lines and blanks
    [[ "$line" =~ ^#.*$ || -z "$line" ]] && continue

    expected_hash=$(echo "$line" | awk '{print $1}')
    file_path=$(echo "$line" | awk '{print $2}')

    if [[ ! -f "$file_path" ]]; then
      err "MISSING: $file_path"
      failed=$((failed + 1))
      continue
    fi

    actual_hash=$(sha256_of_file "$file_path")
    if [[ "$actual_hash" == "$expected_hash" ]]; then
      success "OK: $file_path"
    else
      err "MODIFIED: $file_path (expected $expected_hash, got $actual_hash)"
      failed=$((failed + 1))
    fi
  done < "$CHECKSUM_FILE"

  echo ""
  if [[ $failed -eq 0 ]]; then
    echo "All agent files are intact. No modifications detected."
  else
    echo "$failed file(s) failed validation. Run 'bash setup-agents.sh' to re-sync."
    exit 1
  fi
}

# ── sync mode ─────────────────────────────────────────────────────────────────

do_sync() {
  echo ""
  echo "Syncing AgentInstructions files from GitHub ..."
  echo ""

  mkdir -p .github/agents

  for file in "${AGENT_FILES[@]}"; do
    local url="$REPO_RAW/$file"
    local dir
    dir=$(dirname "$file")

    mkdir -p "$dir"
    info "Fetching $file ..."

    if curl -fsSL "$url" -o "$file"; then
      success "Saved $file"
    else
      err "Failed to download $url"
      exit 1
    fi
  done

  echo ""
  echo "Sync complete. All files written to:"
  echo "  AGENTS.md"
  echo "  .github/agents/*.md"
  echo "  .github/agents/CHECKSUMS.sha256"
  echo ""
  echo "Commit these files to your repository:"
  echo "  git add AGENTS.md .github/agents/"
  echo "  git commit -m 'chore: sync AgentInstructions canonical agent files'"
  echo ""
  echo "To validate files in future agent sessions, run:"
  echo "  bash setup-agents.sh --validate"
}

# ── entry point ───────────────────────────────────────────────────────────────

require_command curl

if ! command -v sha256sum &>/dev/null && ! command -v shasum &>/dev/null; then
  err "Neither sha256sum nor shasum found. Install GNU coreutils (Linux) or use macOS built-in shasum."
  exit 1
fi

case "${1:-}" in
  --validate)
    do_validate
    ;;
  --help|-h)
    grep '^#' "$0" | grep -v '^#!/' | sed 's/^# \?//'
    ;;
  "")
    do_sync
    ;;
  *)
    err "Unknown argument: $1  (use --validate or --help)"
    exit 1
    ;;
esac
