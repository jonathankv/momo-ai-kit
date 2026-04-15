# Contributing

## TL;DR

1. `./scripts/new-skill.sh <team> <slug>` để scaffold
2. Edit `SKILL.md`, giữ < 400 lines
3. `./scripts/doctor.sh` để check
4. Commit, push, open PR
5. Team của bạn self-merge (trừ khi đụng `settings/` hoặc `scripts/install.sh`)

## Quy trình chi tiết

### 1. Scaffold

```bash
./scripts/new-skill.sh risk fraud-pattern-detector
```

Script tạo `skills/risk/fraud-pattern-detector/` với:
- `SKILL.md` (frontmatter đã điền sẵn, chỉ cần fill `description` + `trigger`)
- `README.md` (changelog, status)
- `references/` (nơi đẩy content dài)

### 2. Viết SKILL.md

**Cấu trúc khuyến nghị:**

```markdown
---
name: fraud-pattern-detector
description: Detect fraud patterns in MoMo transaction logs using AML rules + ML heuristics.
trigger: |
  TRIGGER when user asks about: fraud detection, suspicious transactions,
  AML alerts, money laundering patterns, velocity checks.
  SKIP when: general data analysis, non-financial anomaly detection.
owner: "@risk-team"
status: beta
version: 0.1.0
last_reviewed: 2026-04-15
---

## When to use
...

## How to use
...

## Examples
**TRIGGER:** "Phân tích giao dịch khả nghi từ user X tuần qua"
**SKIP:** "Vẽ biểu đồ doanh thu theo ngày"

## References
- [AML rule catalog](references/aml-rules.md)
- [Velocity check patterns](references/velocity-checks.md)
```

**Nguyên tắc:**
- `description` = 1 dòng, verb-first, cho catalog
- `trigger` = TRIGGER / SKIP rõ ràng, Claude dùng để match
- Content > 400 lines → đẩy vào `references/`, SKILL.md chỉ link ra

### 3. Verify locally

```bash
./scripts/doctor.sh
```

Check:
- Frontmatter đủ field
- Symlink không gãy
- File không vượt 400 lines (warn, không block)

### 4. Commit

```bash
git checkout -b skill/risk-fraud-pattern-detector
git add skills/risk/fraud-pattern-detector/
git commit -m "feat(risk): add fraud-pattern-detector skill"
git push origin skill/risk-fraud-pattern-detector
```

**Commit prefix:**
- `feat(<team>): add <slug>` — skill/agent mới
- `fix(<team>): ...` — sửa bug
- `docs(<team>): ...` — chỉ sửa docs
- `deprecate(<team>): <slug>` — mark deprecated

### 5. PR

Template tự populate. Tick checklist:
- [ ] Frontmatter đủ field
- [ ] Có TRIGGER + SKIP example
- [ ] `./scripts/doctor.sh` pass
- [ ] Đã test thử skill với Claude Code

### 6. Merge

- Skill/agent của team bạn → tự merge sau khi CI pass
- Đụng `settings/`, `scripts/install.sh`, hoặc `skills/shared/` → cần owner approve

## Versioning & deprecation

**Breaking change → v2 song song, KHÔNG sửa v1.**

```
skills/risk/fraud-pattern-detector/        # v1 (status: stable)
skills/risk/fraud-pattern-detector-v2/     # v2 (status: beta, breaking API)
```

v1 `README.md` thêm:
```markdown
> **Deprecation notice (2026-04-15):** v2 có [link] với API mới. v1 sẽ EOL 2026-10-15.
```

Không bao giờ `git rm` skill người khác. Chỉ đổi `status: deprecated` trong frontmatter + note trong README.

## Khi nào KHÔNG nên tạo skill mới

- Có skill tương tự rồi → improve cái đang có, đừng fork
- Skill chỉ dùng 1 lần cho 1 task → đó là prompt, không phải skill
- Không biết TRIGGER clause → chưa đủ rõ, discuss trước

## Questions?

- General: Slack `#ai-kit`
- Skill structure: `@jonathanvu`
- Governance change proposal: open issue với label `governance`
