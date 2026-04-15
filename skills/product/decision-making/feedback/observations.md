# Observations — Decision-Making & Experimentation

Append-only log. Capture non-trivial interactions.

---

### O1: Phase 9 PROVE — Mac Mini bán hay giữ
- **Date:** 2026-03-16
- **Mode:** A (Decision Analysis)
- **What worked:** Reframing (từ "bán hay giữ" → "rút cam kết?"), Bias Detection (3 biases with severity), Annie Duke "Would I start this today?" test tạo aha moment, Second-Order Thinking 3 tầng, Structured verdict với confidence level. Owner score: 4-5/5 — "phân tích sâu, tìm ra blindspot, structurize suy nghĩ"
- **What didn't:** (1) Không detect thinking loop pattern của user (base Claude làm tốt hơn). (2) Thiếu emotional acknowledgment — "cảm giác tiếc là bình thường". (3) **Vi phạm chính Philosophy #3** — over-analyze low-stakes decision (1200 words cho 6.8M personal decision). (4) Self-contradiction detection yếu — user tự phản biện nhưng skill không highlight. (5) Info Gathering chưa tách rõ known/uncertain/changeable.
- **User feedback:** "Tự tin hơn với quyết định bán. Thích phân tích sâu + blindspot detection. Claude.ai có đồng cảm hơn vì có memories."
- **Pattern:** Anti-pattern #7 (Over-Analyzing the Obvious) — irony: skill chính là nạn nhân của anti-pattern mà nó dạy. Cần mechanism match analysis depth to stakes.
- **v2 Priority:** #3 stakes-matching > #1 thinking pattern > #4 self-contradiction > #2 emotional > #5 info gathering

### O2: v2 Retest — Same Case + Owner Critique
- **Date:** 2026-03-16
- **Mode:** A (Decision Analysis, v2)
- **What worked:** All 5 v2 features landed technically — Emotional Read, Stakes Gate (400 vs 1200 words), Thinking Pattern detection, Self-contradiction highlight, Proportional output. Owner confirmed "v2 là bước tiến rõ ràng."
- **What didn't:** (1) **Confidence inflation** — tăng 85% → 90% không có cơ sở. Không có thông tin mới, chỉ output gọn hơn. Gọn ≠ đúng hơn. Đây là bias của skill: over-confidence khi output trông clean. (2) **Same-case test** không chứng minh skill thông minh hơn — chỉ chứng minh code changes work. Cần test trên case mới. (3) **"Không phải mọi do dự đều là bias"** — v2 mặc định treat hesitation = Endowment Effect. Nhưng đôi khi do dự mang theo thông tin mới. Skill cần mechanism: do dự + không info mới → bias; do dự + info/context mới → legitimate reconsideration.
- **User feedback:** "v2 cải thiện đúng chỗ và đáng kể. Nếu v1 là 'phân tích đúng nhưng không biết dừng', thì v2 là 'phân tích đúng và biết vừa đủ.' Nhưng confidence tăng không có cơ sở, same-case test không đủ, và cần phân biệt bias vs legitimate doubt."
- **Pattern:** Skill has its own bias: over-confidence when output looks clean. Cần thêm "Hesitation Diagnostic" — is this bias or new information?
- **v2.1 actions:** (1) Không inflate confidence khi không có info mới. (2) Test trên 2-3 case mới (low/medium/high stakes). (3) Thêm Hesitation Diagnostic vào Mode A.
