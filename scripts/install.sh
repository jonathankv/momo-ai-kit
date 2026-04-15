#!/usr/bin/env bash
# Symlink skills/agents/commands from this repo into ~/.claude/
# Idempotent: safe to run multiple times.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CLAUDE_DIR="${HOME}/.claude"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo "Repo:    ${REPO_DIR}"
echo "Target:  ${CLAUDE_DIR}"
echo

mkdir -p "${CLAUDE_DIR}/skills" "${CLAUDE_DIR}/agents" "${CLAUDE_DIR}/commands"

# ---------- Skills ----------
# Each skill is a folder: skills/<team>/<slug>/SKILL.md
echo "== Linking skills =="
linked=0; skipped=0
while IFS= read -r -d '' skill_dir; do
  slug="$(basename "$skill_dir")"
  skill_md="${skill_dir}/SKILL.md"

  if [ ! -f "$skill_md" ]; then
    continue
  fi

  # skip deprecated
  if grep -qE "^status:[[:space:]]*deprecated" "$skill_md" 2>/dev/null; then
    echo -e "  ${YELLOW}skip${NC} (deprecated): ${slug}"
    skipped=$((skipped+1))
    continue
  fi

  target="${CLAUDE_DIR}/skills/${slug}"

  # safety: don't overwrite non-symlink
  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo -e "  ${RED}SKIP${NC} (not a symlink, manual intervention needed): ${target}"
    skipped=$((skipped+1))
    continue
  fi

  ln -sfn "$skill_dir" "$target"
  echo -e "  ${GREEN}link${NC} skills/${slug}"
  linked=$((linked+1))
done < <(find "${REPO_DIR}/skills" -mindepth 2 -maxdepth 2 -type d -print0 2>/dev/null)

echo "  → ${linked} linked, ${skipped} skipped"
echo

# ---------- Agents ----------
echo "== Linking agents =="
linked=0; skipped=0
while IFS= read -r -d '' agent_file; do
  fname="$(basename "$agent_file")"
  target="${CLAUDE_DIR}/agents/${fname}"

  if grep -qE "^status:[[:space:]]*deprecated" "$agent_file" 2>/dev/null; then
    echo -e "  ${YELLOW}skip${NC} (deprecated): ${fname}"
    skipped=$((skipped+1))
    continue
  fi

  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo -e "  ${RED}SKIP${NC} (not a symlink): ${target}"
    skipped=$((skipped+1))
    continue
  fi

  ln -sfn "$agent_file" "$target"
  echo -e "  ${GREEN}link${NC} agents/${fname}"
  linked=$((linked+1))
done < <(find "${REPO_DIR}/agents" -mindepth 2 -maxdepth 2 -type f -name "*.md" -print0 2>/dev/null)

echo "  → ${linked} linked, ${skipped} skipped"
echo

# ---------- Commands ----------
echo "== Linking commands =="
linked=0
while IFS= read -r -d '' cmd_file; do
  fname="$(basename "$cmd_file")"
  target="${CLAUDE_DIR}/commands/${fname}"

  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo -e "  ${RED}SKIP${NC} (not a symlink): ${target}"
    continue
  fi

  ln -sfn "$cmd_file" "$target"
  echo -e "  ${GREEN}link${NC} commands/${fname}"
  linked=$((linked+1))
done < <(find "${REPO_DIR}/commands" -mindepth 1 -maxdepth 1 -type f -name "*.md" -print0 2>/dev/null)

echo "  → ${linked} linked"
echo

# ---------- Settings hint ----------
if [ -f "${REPO_DIR}/settings/momo-base.json" ]; then
  echo -e "${YELLOW}NOTE:${NC} review ${REPO_DIR}/settings/momo-base.json"
  echo "      merge into ~/.claude/settings.json manually (không tự merge để tránh đè config cá nhân)"
  echo
fi

echo -e "${GREEN}✓ Install done.${NC}"
echo "  Run: ./scripts/doctor.sh  để verify"
