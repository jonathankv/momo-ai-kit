# Changelog — Decision-Making & Experimentation

Approved changes to SKILL.md. Log after user approval.

---

### v2 — 2026-03-16
**Trigger:** Phase 9 PROVE — owner eval + comparison with base Claude.ai revealed 5 gaps.
**Approved by:** Owner (Jonathan/Kiên)

**Changes applied (5):**

1. **NEW Philosophy #1: "Emotions Are Data, Not Noise"** — Decision-making luôn đi kèm cảm xúc. Acknowledge emotion TRƯỚC khi phân tích. Base Claude.ai làm tốt hơn v1 ở điểm này.

2. **Mode A: Added Emotional Read (Step 1)** — Name and acknowledge user's emotion before analysis. Not optional.

3. **Mode A: Added Stakes Gate (Step 4)** — After Classify, if low-stakes + reversible → shortened output (3-4 paragraphs). v1 violated its own Philosophy #4 by over-analyzing a 6.8M personal decision with full 7-step analysis.

4. **Mode A + B: Added Self-Contradiction Detection** — Explicitly scan for where user argues against their own position. Base Claude caught this in Phase 9 test; v1 didn't.

5. **Mode A: Added Thinking Pattern Observation (Step 2)** — Observe reasoning PROCESS (loops, stuck, seeking validation), not just the decision content. Base Claude's "vòng lặp suy nghĩ" observation was the most insightful part of its response.

**Supporting changes:**
- Philosophy #4 reworded: "Match Framework to Stakes **(and ENFORCE it)**"
- Tone & Style: Added "Empathetic first, analytical second" + "Proportional"
- Mode B: Added Emotional Read + Self-contradiction scan steps
- "When I Will Fail" → Emotional decisions: revised to genuinely acknowledge, not just redirect
- All philosophy numbers re-sequenced (now 7 principles, was 6)

**Line count:** 247 → 258 (still well under 400 limit)

---

### v2.1 — 2026-03-16
**Trigger:** Owner eval on v2 retest — 3 challenges identified.
**Approved by:** Owner (Jonathan/Kiên)

**Changes applied (2):**

1. **Mode A+B: Added Hesitation Diagnostic (Step 2)** — Khi user do dự sau quyết định, phân biệt: do dự + không info mới → likely bias; do dự + info/context mới → legitimate reconsideration. Không phải mọi sự tiếc nuối đều là bias. Owner: "Có những lúc do dự sau quyết định là trực giác đúng."

2. **Mode A Step 9: Confidence Discipline** — Chỉ tăng confidence so với phân tích trước nếu có thông tin MỚI. Output gọn hơn ≠ kết luận chắc chắn hơn. Owner: "v2 tăng 85% → 90% không có cơ sở."

**Supporting changes:**
- Stakes Gate updated to include Hesitation Diagnostic in shortened output
- Mode B: Added Hesitation Diagnostic (Step 2), re-numbered steps

**Line count:** 258 → 260
