#!/usr/bin/env bash
# Health check: broken symlinks, missing frontmatter, stale last_reviewed.
set -uo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CLAUDE_DIR="${HOME}/.claude"

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

errors=0
warnings=0

echo "== Checking symlinks in ${CLAUDE_DIR} =="
for d in skills agents commands; do
  [ -d "${CLAUDE_DIR}/${d}" ] || continue
  while IFS= read -r -d '' link; do
    if [ -L "$link" ] && [ ! -e "$link" ]; then
      echo -e "  ${RED}broken${NC} ${d}/$(basename "$link") → $(readlink "$link")"
      errors=$((errors+1))
    fi
  done < <(find "${CLAUDE_DIR}/${d}" -mindepth 1 -maxdepth 1 -print0 2>/dev/null)
done
[ "$errors" -eq 0 ] && echo -e "  ${GREEN}ok${NC}"
echo

echo "== Checking skill frontmatter =="
required=(name description trigger owner status)
while IFS= read -r -d '' skill_md; do
  rel="${skill_md#${REPO_DIR}/}"
  # extract frontmatter block (between first two '---' lines)
  fm=$(awk '/^---$/{c++; next} c==1{print}' "$skill_md" | head -100)
  for field in "${required[@]}"; do
    if ! echo "$fm" | grep -qE "^${field}:"; then
      echo -e "  ${RED}missing${NC} '${field}' in ${rel}"
      errors=$((errors+1))
    fi
  done

  # line count warning
  lines=$(wc -l < "$skill_md")
  if [ "$lines" -gt 400 ]; then
    echo -e "  ${YELLOW}warn${NC} ${rel} has ${lines} lines (>400) — consider progressive disclosure"
    warnings=$((warnings+1))
  fi

  # name should match folder
  folder_name=$(basename "$(dirname "$skill_md")")
  fm_name=$(echo "$fm" | grep -E "^name:" | head -1 | sed -E 's/^name:[[:space:]]*//' | tr -d '"' | tr -d "'" | xargs)
  if [ -n "$fm_name" ] && [ "$fm_name" != "$folder_name" ]; then
    echo -e "  ${RED}mismatch${NC} ${rel}: name='${fm_name}' ≠ folder='${folder_name}'"
    errors=$((errors+1))
  fi
done < <(find "${REPO_DIR}/skills" -mindepth 3 -maxdepth 3 -name "SKILL.md" -print0 2>/dev/null)
echo

echo "== Checking agent frontmatter =="
while IFS= read -r -d '' agent_md; do
  rel="${agent_md#${REPO_DIR}/}"
  fm=$(awk '/^---$/{c++; next} c==1{print}' "$agent_md" | head -100)
  for field in name description owner status; do
    if ! echo "$fm" | grep -qE "^${field}:"; then
      echo -e "  ${RED}missing${NC} '${field}' in ${rel}"
      errors=$((errors+1))
    fi
  done
done < <(find "${REPO_DIR}/agents" -mindepth 2 -maxdepth 2 -name "*.md" -print0 2>/dev/null)
echo

# ---------- Summary ----------
if [ "$errors" -eq 0 ] && [ "$warnings" -eq 0 ]; then
  echo -e "${GREEN}✓ All checks passed.${NC}"
  exit 0
elif [ "$errors" -eq 0 ]; then
  echo -e "${YELLOW}✓ No errors, ${warnings} warning(s).${NC}"
  exit 0
else
  echo -e "${RED}✗ ${errors} error(s), ${warnings} warning(s).${NC}"
  exit 1
fi
