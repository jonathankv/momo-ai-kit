---
name: SKILL_SLUG
description: One-line, verb-first. Dùng cho catalog. Max 120 chars.
trigger: |
  TRIGGER when user asks about: [list keywords/phrases].
  Examples: "example trigger phrase 1", "example trigger phrase 2".
  SKIP when: [negative cases — khi nào KHÔNG nên match].
owner: "@TEAM_HANDLE"
status: experimental
version: 0.1.0
last_reviewed: YYYY-MM-DD
---

## When to use

Mô tả ngắn gọn **job-to-be-done** của skill này. Khác gì với skills khác? Tại sao không dùng skill A/B?

## How to use

Workflow cao độ (bullet points). Chi tiết đẩy vào `references/`.

1. Step 1 — ...
2. Step 2 — ...
3. Step 3 — ...

## Examples

**TRIGGER:**
- "Example user question 1"
- "Example user question 2"

**SKIP:**
- "Example non-match 1" — reason why skip
- "Example non-match 2" — reason why skip

## References

- [Detailed pattern guide](references/patterns.md)
- [Worked examples](references/examples.md)

## Changelog

- `0.1.0` (YYYY-MM-DD) — Initial version
