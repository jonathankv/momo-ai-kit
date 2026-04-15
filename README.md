# momo-ai-kit

**Bộ công cụ AI dùng chung cho team MoMo** — skills, agents, commands giúp công việc hàng ngày nhanh hơn.

Không cần biết code để dùng. Chỉ cần Claude Code đã cài trên máy.

---

## Đây là gì? (30 giây)

Bạn đã dùng Claude chưa? Thử nghĩ: thay vì mỗi lần mở Claude phải giải thích lại "viết synthesis theo format này, với bullet point thế này, kèm action items...", bạn **gõ 1 câu ngắn** và Claude tự biết phải làm gì.

Đó là **skill** — hướng dẫn viết sẵn, Claude đọc và làm theo. Repo này chứa skills dùng chung cho cả team MoMo:

- Viết synthesis cho meeting? → `synthesis-writer` theo đúng format MoMo
- Cần JTBD analysis cho feature? → `jtbd` với framework Bob Moesta + Anh Công
- Design experiment để giảm rủi ro decision? → `decision-making`
- Discovery cho feature mới? → `product-discovery`
- ... (càng nhiều người đóng góp, càng nhiều skill)

Thay vì mỗi người tự giữ một bộ prompt riêng trong Notion/Google Doc → **1 chỗ chung, ai cũng dùng được, ai cũng đóng góp được**.

---

## Bạn là ai? Bắt đầu từ đâu?

### 🎨 Designer / PM / Marketer / Non-tech

**Bạn chỉ cần 2 việc:**

1. **Dùng skill đã có** → đọc [Getting Started](docs/getting-started.md) (5 phút)
2. **Đề xuất skill mới** → điền [form này](https://github.com/jonathankv/momo-ai-kit/issues/new/choose) (không cần biết code)

Xem danh sách skill hiện có: [docs/catalog.md](docs/catalog.md)

### 👨‍💻 Engineer / Power user

**Clone repo + install:**

```bash
git clone https://github.com/jonathankv/momo-ai-kit.git
cd momo-ai-kit
./scripts/install.sh
```

Symlink skills/agents/commands vào `~/.claude/`. `git pull` sau đó = update tự động.

**Đóng góp skill mới:**

```bash
./scripts/new-skill.sh <team> <slug>
# Edit SKILL.md, commit, push PR
```

Đọc [CONTRIBUTING.md](docs/CONTRIBUTING.md) để biết convention.

---

## Đang có gì trong kit?

Xem [**catalog đầy đủ**](docs/catalog.md) — auto-generate từ repo.

### Product (7 skills — research-preview)
- `product-manager` — Core PM: prioritization, metrics, experiment design
- `product-discovery` — Problem framing → opportunity sizing → discovery brief
- `product-research` — User/market research, interview synthesis, PMF
- `product-strategy` — Vision, moats (7 Powers), positioning, pricing
- `product-growth` — Retention, acquisition, PLG, growth loops
- `jtbd` — Jobs to Be Done framework (Bob Moesta + Anh Công)
- `decision-making` — Decision frameworks, bias detection, experiments

### Shared (2 skills — stable)
- `synthesis-writer` — Viết synthesis cho meeting/research/YouTube
- `example-skill` — Reference skill để học cấu trúc

> **Status:** `research-preview` = working nhưng chưa cross-team validated, cần feedback. `stable` = đã được nhiều người dùng.

(Sẽ nhiều hơn khi các team khác đóng góp.)

---

## Câu hỏi thường gặp

### "Tôi không biết code, dùng được không?"

Được. Bạn chỉ cần Claude Code đã cài. Nhờ 1 engineer trong team giúp `./scripts/install.sh` 1 lần duy nhất. Sau đó skill tự hiện trong Claude.

### "Skill này khác prompt thường thế nào?"

Prompt = viết mỗi lần. Skill = viết 1 lần, ai trong team cũng dùng được, Claude tự match khi context phù hợp.

### "Tôi có ý tưởng skill nhưng không biết viết. Làm sao?"

Điền [form này](https://github.com/jonathankv/momo-ai-kit/issues/new/choose) → mô tả vấn đề bạn muốn giải quyết → engineer trong team sẽ giúp viết.

### "Ai quản lý repo này?"

Hiện tại: @jonathankv. Mỗi team sẽ tự maintain folder của mình khi grow. Xem [CODEOWNERS](.github/CODEOWNERS).

### "Tôi muốn thử nhưng sợ làm hỏng?"

Không hỏng được. Skills là file markdown đọc-only khi chạy. Nếu xoá nhầm → `./scripts/install.sh` lại là xong.

---

## Learn more

- [Getting Started cho non-tech](docs/getting-started.md) — 5 phút
- [Contributing guide](docs/CONTRIBUTING.md) — quy trình đóng góp
- [Conventions](docs/conventions.md) — naming, format, checklist
- [Catalog](docs/catalog.md) — tất cả skills/agents hiện có

---

## Philosophy

> "Tools become infrastructure when everyone uses them without thinking about them."

Mục tiêu: trong 6 tháng, mỗi người MoMo có ít nhất 1 skill họ dùng hàng tuần, không cần nhớ tên skill là gì.

Cách làm: **low friction để dùng, low friction để đóng góp**. Governance nhẹ, quality check tự động, documentation luôn up-to-date.
