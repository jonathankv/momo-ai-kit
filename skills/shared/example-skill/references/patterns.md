# Example Patterns

Đây là file reference bên trong `references/` folder. SKILL.md ngắn gọn, detail đẩy ra đây.

## Pattern: Progressive disclosure

Khi SKILL.md vượt 400 lines, di chuyển content theo thứ tự ưu tiên:

1. **Giữ ở SKILL.md:** TRIGGER/SKIP, workflow cao độ, links
2. **Move ra references/:** rules chi tiết, examples dài, pattern catalog, API details

## Pattern: TRIGGER/SKIP dual format

```yaml
trigger: |
  TRIGGER when user asks about: [specific keywords].
  SKIP when: [negative cases with reasons].
```

Positive-only triggers overmatch. Negative cases giúp Claude chọn đúng skill.
