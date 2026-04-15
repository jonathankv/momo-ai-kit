#!/usr/bin/env bash
# Scaffold a new skill from template.
# Usage: ./scripts/new-skill.sh <team> <slug>
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <team> <slug>"
  echo "  team: product | engineering | data | risk | marketing | design | shared"
  echo "  slug: kebab-case, 2-4 words"
  echo
  echo "Example: $0 risk fraud-pattern-detector"
  exit 1
fi

TEAM="$1"
SLUG="$2"

# Validate team
if [ ! -d "${REPO_DIR}/skills/${TEAM}" ]; then
  echo "Error: team folder 'skills/${TEAM}' does not exist."
  echo "Create it first with: mkdir -p ${REPO_DIR}/skills/${TEAM}"
  exit 1
fi

# Validate slug (kebab-case)
if ! echo "$SLUG" | grep -qE '^[a-z][a-z0-9]*(-[a-z0-9]+)+$'; then
  echo "Error: slug must be kebab-case (2-4 lowercase words separated by hyphens)."
  echo "Got: '${SLUG}'"
  exit 1
fi

TARGET="${REPO_DIR}/skills/${TEAM}/${SLUG}"

if [ -e "$TARGET" ]; then
  echo "Error: ${TARGET} already exists."
  exit 1
fi

# Copy template
cp -r "${REPO_DIR}/templates/skill-template" "$TARGET"

# Replace placeholders
TODAY=$(date +%Y-%m-%d)
# macOS sed compatibility
if [[ "$OSTYPE" == "darwin"* ]]; then
  SED_INPLACE=(sed -i '')
else
  SED_INPLACE=(sed -i)
fi

find "$TARGET" -type f \( -name "*.md" \) -print0 | while IFS= read -r -d '' f; do
  "${SED_INPLACE[@]}" "s/SKILL_SLUG/${SLUG}/g" "$f"
  "${SED_INPLACE[@]}" "s/TEAM_HANDLE/${TEAM}-team/g" "$f"
  "${SED_INPLACE[@]}" "s/YYYY-MM-DD/${TODAY}/g" "$f"
done

echo "✓ Created skill: ${TARGET}"
echo
echo "Next steps:"
echo "  1. Edit SKILL.md — fill in 'description' and 'trigger'"
echo "  2. Edit README.md — add 'What this does' + 'Why this exists'"
echo "  3. ./scripts/doctor.sh"
echo "  4. git checkout -b skill/${TEAM}-${SLUG}"
echo "  5. git add skills/${TEAM}/${SLUG}/ && git commit -m \"feat(${TEAM}): add ${SLUG} skill\""
