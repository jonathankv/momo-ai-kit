# Conventions

## Naming

### Slugs

- **`kebab-case`**, 2–4 từ, mô tả job-to-be-done
- Prefix team bằng **folder path**, KHÔNG bằng tên
  - ✅ `skills/risk/fraud-pattern-detector/`
  - ❌ `skills/risk-fraud-pattern-detector/` (rename nếu đổi team = đau)

**Ví dụ tốt:**
- `fraud-pattern-detector`
- `kpi-sql-writer`
- `momo-brand-tone-reviewer`
- `okr-draft-helper`

**Ví dụ xấu:**
- `helper`, `my-skill`, `skill1` — quá chung
- `AwesomeSkill`, `fraud_detector` — sai case
- `skill-do-everything` — scope quá rộng

### Agents

- Suffix `-agent` khi dễ nhầm với skill: `product-reviewer-agent.md`
- Giữ file flat (1 agent = 1 file) trừ khi cần resources → thành folder

### Commands

- **Verb-first**: `/review-pr`, `/draft-okr`, `/audit-fraud`
- Không namespace trong tên: `/review-pr` (không phải `/momo-review-pr`) — MoMo là default context rồi

### Versioning

- `skill-slug/` = current
- `skill-slug-v2/` = next breaking version (coexist, KHÔNG xoá v1)
- Non-breaking change → bump `version` trong frontmatter, cùng folder

## Frontmatter (bắt buộc)

```yaml
---
name: fraud-pattern-detector          # MUST match folder name
description: One-line, verb-first.    # catalog display
trigger: |                            # Claude uses to match
  TRIGGER when user asks about: ...
  SKIP when: ...
owner: "@risk-team"                   # team handle hoặc email
status: experimental|beta|stable|deprecated
version: 1.2.0                        # semver
last_reviewed: 2026-04-15             # YYYY-MM-DD
---
```

### `description` vs `trigger` — khác gì nhau?

| Field | Purpose | Audience |
|---|---|---|
| `description` | 1 dòng cho catalog, `./scripts/build-catalog.sh` dùng | Human browsing |
| `trigger` | TRIGGER/SKIP rules, Claude match skill | Claude runtime |

Tách ra vì: catalog cần ngắn, trigger cần dài + rõ negative cases.

### `status` lifecycle

```
experimental → research-preview → beta → stable → deprecated
```

- **experimental**: chưa tested, dùng tự chịu rủi ro
- **research-preview**: skill working nhưng chưa cross-team validated — cần feedback
- **beta**: tested bởi team owner, chờ broader feedback
- **stable**: production-ready, đã được nhiều người dùng
- **deprecated**: có replacement, sẽ EOL

Install script **skip `deprecated`** — không symlink vào `~/.claude/`.

## File structure

### Skill folder

```
skills/<team>/<slug>/
├── SKILL.md              # < 400 lines, progressive disclosure
├── README.md             # changelog, deprecation notice
├── references/           # dài → đẩy ra đây
│   ├── patterns.md
│   └── examples.md
├── scripts/              # optional helpers
│   └── analyze.py
└── assets/               # optional (images, data samples)
```

### SKILL.md < 400 lines

**Vì sao:** context window teammate có hạn. Skill 1000 dòng = ít được load = ít được dùng.

**Làm sao giữ ngắn:**
- Rules, examples, patterns → `references/*.md`
- SKILL.md giữ: TRIGGER/SKIP + high-level workflow + link ra references
- Claude sẽ read references on-demand

## Anti-patterns

| Sai | Đúng | Lý do |
|---|---|---|
| Sửa `~/.claude/skills/...` trực tiếp | Sửa trong repo, `git pull` | Runtime folder = symlink, sửa ở đó = commit ngược không được |
| Copy `settings.json` người khác vào repo | Chỉ thêm delta vào `settings/momo-base.json` | Không leak local paths, API keys |
| `skill-v2/` khi chỉ fix typo | Bump `version` field, cùng folder | v2 dành cho breaking change |
| SKILL.md 800 dòng | < 400 lines, đẩy vào `references/` | Context bloat |
| `git rm` skill không dùng nữa | `status: deprecated` + README note | Người khác có thể đang dùng |
| Skill không có TRIGGER/SKIP | Phải có cả hai | Không match được hoặc match sai |
| `description: "A helper skill"` | Verb-first, cụ thể | Catalog không search được |
| Hardcode API key trong SKILL.md | Ref env var: `$MOMO_API_KEY` | Security |

## Commit conventions

```
feat(<team>): add <slug>                    # new skill/agent
fix(<team>): correct TRIGGER in <slug>
docs(<team>): update <slug> examples
deprecate(<team>): <slug> → use <replacement>
refactor(<team>): move <slug> references to subfolder
chore: update install script
```

## Review checklist (cho self-review trước PR)

- [ ] Frontmatter đủ 6 field
- [ ] `name` match folder name
- [ ] TRIGGER rõ, có keyword cụ thể
- [ ] SKIP rõ, có negative case
- [ ] SKILL.md < 400 lines (hoặc đã split vào references/)
- [ ] 1+ TRIGGER example, 1+ SKIP example
- [ ] Không hardcode secret/PII
- [ ] `./scripts/doctor.sh` pass
- [ ] Đã test thực tế với Claude Code
