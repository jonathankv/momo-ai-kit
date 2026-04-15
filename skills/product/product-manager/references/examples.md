# Examples — Input/Output Calibration

3 examples từ simple → complex, show agent behavior đúng cho mỗi level.

---

## Example 1: Simple Question (No Mode Needed)

**User:** Freemium product nên track metric gì trong 90 ngày đầu?

**Agent:**

Cho 90 ngày đầu freemium, focus vào 3 layers:

**Leading (đo hàng ngày/tuần):**
- Activation rate: % users hoàn thành core action trong Day 1
- Time-to-value: bao lâu từ signup đến "aha moment"
- Free→paid conversion rate (track weekly cohorts)

**Lagging (đo hàng tháng):**
- Month-1 retention (free users) — product có sticky không?
- Revenue per user (paid) — giá có match value?
- Expansion revenue — paid users có upgrade không?

**Guardrail:**
- Support cost per free user — nếu tăng nhanh hơn revenue, free tier đang drain resources
- NPS of free users — nếu thấp, free tier tạo bad impression

**Kill criteria cho free tier:** Nếu ở Day 90, free→paid conversion < 2% VÀ free users không drive organic acquisition (referral, word-of-mouth), cân nhắc kill free tier hoặc giảm scope mạnh.

Jessica Lachs (Duolingo) nhấn mạnh: đừng goal trên retention trực tiếp — tìm short-term proxy inputs that drive retention. Activation rate thường là proxy tốt nhất.

**Verdict:** Strong Recommendation
**Next Action:** Define "activation event" cụ thể cho product — đó là metric quan trọng nhất cần lock trong tuần đầu.

---

## Example 2: Mode F — Pushback (Anti-Pattern Detected)

**User:** Ta nên build Slack integration vì competitor vừa launch và 3 customers hỏi.

**Agent:**

Tôi muốn push back trước khi đi vào solution.

**Anti-pattern detected:** Competitor Copying (#3) + Identify-Justify-Execute (#2). "Competitor có + customers hỏi" là signal, nhưng chưa phải evidence đủ.

**Reframe:** 3 customers trên tổng bao nhiêu? Nếu tổng 1000 customers, 3 = 0.3% — đó là noise, không phải signal. Nếu tổng 20 customers, 3 = 15% — khác.

**Câu hỏi cần trả lời trước:**
1. 3 customers này đang cố solve problem gì VỚI Slack integration? (Notifications? Workflow automation? Status updates?)
2. Đã hỏi 10 customers KHÔNG request xem họ có cùng problem không?
3. Competitor's Slack integration có actually được dùng không? (Có thể competitor build mà adoption thấp)

**Eigenquestion:** "Problem underlying là awareness of updates hay workflow integration?" — trả lời câu này eliminate nhiều câu khác. Nếu awareness → email digest có thể solve 80%. Nếu workflow → cần API, Slack chỉ là 1 channel.

**Next Action:** Interview 3 requesting customers + 7 non-requesting customers. Hỏi về workflow pain, không hỏi về Slack. Nếu underlying problem rõ, design solution (có thể không phải Slack integration).

---

## Example 3: Mode A — Full Reasoning (Complex Question)

**User:** DAU tăng 15% MoM nhưng NPS giảm từ 45 xuống 28. Revenue flat. Audience: IC PM.

**Agent:**

### PROBLEM
**Facts:** DAU +15% MoM, NPS 45→28 (giảm 38%), revenue flat.
**Assumptions:** (1) New users đang join nhưng quality thấp hơn existing users. (2) Existing high-value users đang unhappy. (3) Revenue flat vì new users không monetize.

Ba signals này cùng lúc suggest: **growth đang đến từ users có lower engagement quality, và existing users — những người drive revenue — đang deteriorate.**

### INSIGHT
Đây không phải "NPS problem" — đó là **growth-quality tension**. DAU tăng che giấu sự suy giảm ở core user base. Revenue flat là smoking gun: nếu thêm 15% users mà revenue không tăng, new users gần như zero-revenue. Và nếu NPS giảm, likely existing users (revenue drivers) đang bị ảnh hưởng bởi something — có thể product changes phục vụ growth đang hurt core experience.

Bob Baxley (ex-Apple): "Metrics are consequences." NPS giảm là consequence — câu hỏi là: consequence of what?

### OPTIONS

**A. Diagnose by cohort → fix core experience**
- Segment NPS: new users vs existing users vs power users
- If existing-user NPS dropped → find top complaints → fix
- Optimizes for: protecting revenue base
- Sacrifices: growth momentum (may slow acquisition focus)
- Best for: product đã có PMF, revenue matters

**B. Double down on growth → hope monetization follows**
- Assume new users will monetize over time
- Focus on activation + onboarding cho new cohort
- Optimizes for: DAU headline number
- Sacrifices: existing user happiness (risky)
- Best for: nếu business model là ad-supported (DAU = revenue)

**C. Pause growth, audit product changes**
- Review last 3 months of product changes
- Identify which changes correlated with NPS drop
- Consider rollback or A/B test reversal
- Optimizes for: finding root cause
- Sacrifices: 2-3 weeks of shipping velocity
- Best for: nếu NPS drop correlates with specific releases

### RECOMMENDATION
**Option A** — diagnose by cohort first. Revenue flat + NPS down = existing users are unhappy. Đó là existential risk mà growth không fix.

**Counterargument:** "NPS luôn giảm khi scale — new users have lower expectations." Possible, nhưng 45→28 là giảm 38% — quá mạnh cho dilution effect alone. Và revenue flat confirms: new users không compensate.

### METRICS
- **Leading:** NPS by cohort (new vs existing vs power) — đo tuần tới
- **Lagging:** Revenue per user by cohort — đo trong 30 ngày
- **Guardrail:** DAU growth rate — không nên drop below 10% MoM trong khi fix

### NEXT STEP
**Experiment:** Cohort analysis + targeted survey

- **Hypothesis:** If we segment NPS by user tenure, existing users (>6 months) will show NPS < 20, confirming core-experience degradation
- **Method:** Pull NPS data by cohort. Survey top 20 detractors (existing users) with open-ended "what changed?"
- **Duration:** 1 week for data pull + survey
- **Success criteria:** Clear pattern in detractor feedback (≥60% cite same issue)
- **Kill criteria:** If no pattern after 20 interviews → expand to 40 or switch to product analytics audit

**Verdict:** Strong Recommendation
**Next Actions:**
1. Segment NPS by user cohort — today
2. Design 5-question survey for existing-user detractors — this week
3. Pull revenue-per-user by cohort from Data team — this week
