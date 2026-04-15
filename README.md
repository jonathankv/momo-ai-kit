# momo-ai-kit

Shared repository of Claude Code **skills**, **agents**, **slash commands**, **hooks**, và **settings** cho MoMo.

## Quick Start

```bash
git clone <repo-url> momo-ai-kit
cd momo-ai-kit
./scripts/install.sh
```

Install script symlink tất cả skills/agents/commands vào `~/.claude/`. Chạy lại sau mỗi `git pull` là KHÔNG cần — symlink trỏ về repo, `git pull` tự hiện update.

## Structure

```
momo-ai-kit/
├── skills/<team>/<skill-slug>/       # SKILL.md + references/
├── agents/<team>/<agent-slug>.md
├── commands/<cmd-slug>.md            # /slash-commands
├── hooks/                            # shared hooks (settings.json snippets)
├── settings/momo-base.json           # MCP, permissions, env mặc định
├── templates/                        # scaffold cho skill/agent mới
├── scripts/
│   ├── install.sh                    # symlink → ~/.claude/
│   ├── uninstall.sh
│   ├── doctor.sh                     # check symlinks + frontmatter
│   ├── new-skill.sh <team> <slug>    # scaffold skill mới
│   └── build-catalog.sh              # render docs/catalog.md
├── docs/
│   ├── CONTRIBUTING.md
│   ├── conventions.md
│   └── catalog.md                    # auto-generated
└── .github/
    ├── CODEOWNERS
    └── workflows/validate.yml
```

## Tạo skill mới (30 giây)

```bash
./scripts/new-skill.sh risk fraud-pattern-detector
# → skills/risk/fraud-pattern-detector/SKILL.md đã có sẵn
# Edit file đó, commit, push. Xong.
```

## Contributing

Rule cứng (CI block nếu vi phạm):
1. Frontmatter hợp lệ: `name`, `description`, `trigger`, `owner`, `status`
2. Có owner (team hoặc email)
3. KHÔNG xoá skill người khác — chỉ mark `status: deprecated`

Rule mềm (khuyến khích):
- SKILL.md < 400 lines (progressive disclosure — đẩy detail vào `references/`)
- Có ít nhất 1 ví dụ TRIGGER và 1 ví dụ SKIP
- Bump version khi breaking change, v1/v2 coexist (không sửa v1)

Chi tiết: [docs/CONTRIBUTING.md](docs/CONTRIBUTING.md) • [docs/conventions.md](docs/conventions.md)

## Catalog

Xem [docs/catalog.md](docs/catalog.md) — auto-generated từ frontmatter.

## Governance (hiện tại: light touch)

- Mọi người được merge vào skill của team mình
- `settings/` và `scripts/install.sh` cần owner approve (impact rộng)
- CODEOWNERS: `.github/CODEOWNERS`
- Stale skills (last_reviewed > 6 tháng) → weekly bot flag, không auto-delete
