# Getting Started — 5 phút đầu tiên

Dành cho ai chưa từng dùng repo này. Không cần biết code.

---

## Trước khi bắt đầu — bạn cần gì?

1. **Claude Code** đã cài trên máy. Chưa cài? → [claude.com/claude-code](https://claude.com/claude-code)
2. **5 phút rảnh**.

That's it. Không cần GitHub account, không cần terminal (ở bước này).

---

## Bước 1: Cài repo này (1 phút)

Nhờ 1 engineer trong team chạy giúp bạn:

```bash
git clone https://github.com/jonathankv/momo-ai-kit.git ~/momo-ai-kit
cd ~/momo-ai-kit && ./scripts/install.sh
```

Xong. Từ giờ mỗi skill trong repo này tự động hiện trong Claude Code của bạn.

> 💡 **Làm 1 lần duy nhất.** Sau đó engineer chỉ cần chạy `git pull` trong folder `~/momo-ai-kit` là bạn có skill mới.

---

## Bước 2: Thử dùng skill đầu tiên (2 phút)

Mở Claude Code lên. Gõ:

```
/synthesis-writer
```

Claude sẽ hiện skill `synthesis-writer` và hỏi bạn muốn synthesize gì.

Thử với 1 transcript meeting gần đây — paste text hoặc kéo file vào.

Claude sẽ trả về synthesis đầy đủ theo format:
- **What happened?** (Bối cảnh meeting)
- **So what?** (Ý nghĩa, insights)
- **Now what?** (Action items có tên, có deadline)

---

## Bước 3: Xem còn skill gì nữa (1 phút)

Mở [docs/catalog.md](catalog.md) — danh sách tất cả skill, agent, command hiện có.

Mỗi dòng có:
- **Slug** — tên để gọi skill (vd: `synthesis-writer`)
- **Description** — skill này làm gì
- **Owner** — ai viết/maintain

---

## Bước 4: Bạn muốn skill chưa có? (1 phút)

Có 2 cách:

### Cách 1: Đề xuất (không cần code)

1. Mở [https://github.com/jonathankv/momo-ai-kit/issues/new/choose](https://github.com/jonathankv/momo-ai-kit/issues/new/choose)
2. Chọn **"Request a new skill"**
3. Điền form:
   - Vấn đề gì bạn đang gặp thường xuyên?
   - Bạn muốn Claude làm gì để đỡ việc?
   - Ví dụ cụ thể: input → output

Engineer/maintainer sẽ liên hệ bạn để pair viết skill.

### Cách 2: Tự viết (nếu bạn thoải mái với markdown)

Xem [CONTRIBUTING.md](CONTRIBUTING.md) — quy trình đầy đủ.

---

## Troubleshooting

### "Tôi gõ `/synthesis-writer` nhưng Claude không hiện gì?"

→ Skill chưa được install. Nhờ engineer chạy lại `./scripts/install.sh`.

### "Gõ lệnh gì không biết?"

→ Claude Code hỗ trợ autocomplete. Gõ `/` rồi đợi 1 giây, các skill sẽ hiện ra.

### "Tôi muốn update skill mới thì sao?"

→ Engineer chạy `cd ~/momo-ai-kit && git pull`. Xong, skill mới tự có trong Claude Code của bạn (không cần install lại).

### "Tôi có câu hỏi không nằm trong list này?"

→ Tìm @jonathankv trên Slack, hoặc open [issue mới](https://github.com/jonathankv/momo-ai-kit/issues/new/choose) với label `question`.

---

## Bạn sẽ dùng thế nào trong công việc hàng ngày?

### Nếu bạn là Designer

- Dùng skill review design theo MoMo Design System (coming soon)
- Generate design specs từ Figma link (coming soon)
- Contribute: skill tóm tắt design critique

### Nếu bạn là PM

- Dùng `synthesis-writer` để viết meeting note/retro
- Skill draft OKR, PRD (coming soon)
- Contribute: skill convert user feedback → feature spec

### Nếu bạn là Marketer

- Skill brand tone check (coming soon)
- Skill generate social post từ blog post (coming soon)
- Contribute: skill A/B test copy variants

### Nếu bạn là Engineer

- Skill code review theo convention MoMo (coming soon)
- Skill generate commit message theo format team
- Contribute: skill cho bất kỳ workflow lặp lại nào

---

## Next steps

- [ ] Cài repo (Bước 1)
- [ ] Thử `/synthesis-writer` với 1 meeting thật
- [ ] Đọc [catalog](catalog.md) xem có skill nào dùng được cho công việc bạn
- [ ] Nếu không có → điền form đề xuất skill mới
- [ ] Share với 1 đồng nghiệp bạn nghĩ sẽ hữu ích

Welcome to momo-ai-kit 👋
