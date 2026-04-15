---
name: example-skill
description: Reference example showing correct frontmatter + structure for momo-ai-kit skills.
trigger: |
  TRIGGER when user explicitly asks about: "example skill", "skill template reference".
  This is a reference skill, not a working skill.
  SKIP all other cases — this is purely documentation.
owner: "@jonathanvu"
status: stable
version: 1.0.0
last_reviewed: 2026-04-15
---

## When to use

**Never match this in real work.** This skill exists only as a reference for teammates learning the repo structure.

When you want to see what a correctly-structured skill looks like, browse this folder.

## How to use

1. Đọc `SKILL.md` để thấy frontmatter + sections
2. Đọc `README.md` để thấy format changelog
3. Đọc `references/patterns.md` để thấy progressive disclosure pattern
4. Run `./scripts/new-skill.sh <team> <slug>` để scaffold skill của bạn

## Examples

**TRIGGER:**
- "Show me the example skill structure"

**SKIP:**
- Mọi câu hỏi thực tế khác — skill này không làm việc gì cả

## References

- [Example pattern](references/patterns.md)
- [Contributing guide](../../../docs/CONTRIBUTING.md)
- [Conventions](../../../docs/conventions.md)

## Changelog

- `1.0.0` (2026-04-15) — Initial reference skill
