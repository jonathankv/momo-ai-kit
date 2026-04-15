# synthesis-writer

> **Status:** stable • **Owner:** @jonathanvu • **v1.0.0**

## What this does

Chuyển raw inputs (meeting transcripts, research articles, YouTube notes, papers) thành structured synthesis documents trả lời 3 câu hỏi: **What happened? So what? Now what?**

## Why this exists

Meeting notes/research articles không có structure → khó extract decisions, action items, insights khi review lại sau. Skill này standardize format synthesis để knowledge có thể tái sử dụng.

## Key features

- **Routing by source type**: meeting / research / podcast / YouTube → format khác nhau
- **Tag taxonomy**: gắn tag để search lại dễ (xem `references/tag-taxonomy.md`)
- **Format variations**: deep-tutor format, brief format, decision log format (xem `references/format-variations.md`)

## Migration notes

Migrated from `full-stack-builders/05-deliverables/skills/synthesis-writer` on 2026-04-15.

**Changes vs source:**
- Frontmatter: `description` rút ngắn 1 dòng, `trigger` tách thành field riêng với cả TRIGGER + SKIP
- Giữ nguyên: `tags`, `allowed_tools`, `allowed_mcps`, `icon_color`, `default_model` (không ảnh hưởng validation)
- Bỏ: `skills:` field (thừa, overlap với `tags`)
- Thêm: `owner`, `status`, `version`, `last_reviewed` (momo-ai-kit convention)
- Content SKILL.md + references/ giữ nguyên

## Changelog

- `1.0.0` (2026-04-15) — Initial migration to momo-ai-kit from `full-stack-builders/` personal hub.
