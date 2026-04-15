#!/usr/bin/env bash
# Remove symlinks pointing back into this repo. Preserves other skills/agents.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CLAUDE_DIR="${HOME}/.claude"

YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

removed=0
for d in skills agents commands; do
  [ -d "${CLAUDE_DIR}/${d}" ] || continue
  while IFS= read -r -d '' link; do
    if [ -L "$link" ]; then
      target="$(readlink "$link")"
      case "$target" in
        "${REPO_DIR}"/*)
          rm "$link"
          echo -e "  ${GREEN}removed${NC} ${d}/$(basename "$link")"
          removed=$((removed+1))
          ;;
      esac
    fi
  done < <(find "${CLAUDE_DIR}/${d}" -mindepth 1 -maxdepth 1 -print0 2>/dev/null)
done

echo
echo -e "${YELLOW}✓ Uninstall done.${NC} Removed ${removed} symlinks."
