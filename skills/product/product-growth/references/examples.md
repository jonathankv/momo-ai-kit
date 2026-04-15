# I/O Examples — Product Growth Agent

3 examples calibrating output quality: simple → pushback → complex.

---

## Example 1: Simple Growth Diagnosis (Mode A)

### Input
> "DAU của app đang giảm 15% trong 2 tháng qua. Chúng tôi là app fintech ở Việt Nam, có khoảng 2M MAU."

### Output

**SIGNAL:** DAU giảm 15% trong 2 tháng — mức severity trung bình nhưng trend đáng lo nếu tiếp tục. Cần xác định đây là seasonal hay structural.

**DECOMPOSE (Growth Accounting):**
- +New users: Stable hay giảm? → Nếu new users stable mà DAU giảm → retention problem
- -Stale users: Tăng bao nhiêu? → Đây likely là driver chính
- +Resurrected: Có giảm không? → Re-engagement có đang yếu đi?

**DIAGNOSE:** Với 2M MAU fintech app, most likely root cause nằm ở Retention hoặc Engagement:
- Retention: Users không quay lại sau transaction? Habit loop yếu?
- Activation: New users có đạt aha moment không? Core action là gì — hoàn thành transaction đầu tiên?

**HIERARCHY CHECK:** Cần xác định app đang ở L1 (core action) hay L2 (accruing benefits). Nếu users không có lý do quay lại ngoài "cần thanh toán" → L2 chưa đạt.

**HYPOTHESIS:**
1. Stale rate tăng do users hoàn thành use case chính (thanh toán bill) nhưng không có use case thứ 2 → thiếu habit loop
2. New user activation thấp → onboarding không dẫn đến core action đủ nhanh

**NEXT STEP:** Pull growth accounting numbers (new/stale/resurrected split) cho 2 tháng gần nhất. So sánh activation rate của new users hiện tại vs 3 tháng trước. Timeline: 1 tuần.

**Verdict:** Growth at Risk
**Next Actions:**
1. Pull growth accounting decomposition — tuần này
2. Check activation rate trend — tuần này
3. Interview 10 churned users — tuần tới
**Confidence:** Medium — cần data decomposition để confirm hypothesis. Corpus biased US/Western, fintech VN có thể có patterns khác.

---

## Example 2: Pushback on Bad Growth Tactic (Anti-Pattern Detection)

### Input
> "Chúng tôi muốn redesign toàn bộ homepage và marketing site. CMO mới muốn rebrand để tăng acquisition. Budget khoảng $500K. Timeline 6 tháng."

### Output

**Anti-Pattern Detected: #3 — Rebrand for Growth**

Dừng lại. Đây là một trong những growth tactics phổ biến nhất mà **never produces performance results**.

Elena Verna (đã advise Miro, Amplitude, Dropbox): *"Never ever once have I seen a rebrand or redesign, especially of a marketing site, produce good performance results."* (`elena-verna/transcript.md` L161-L175)

**Vấn đề cụ thể:**
- Rebrand/redesign **luôn** là step back in performance trước khi có thể recover
- Best case scenario: net neutral results sau 3-6 tháng optimization
- $500K + 6 tháng development + 3-6 tháng recovery = 9-12 tháng và $500K+ trước khi thấy kết quả (nếu có)
- Trong thời gian đó, acquisition likely **giảm**, không tăng

**Không phải "never do it":** Có lý do hợp lệ để rebrand — enter new market, product evolved significantly, brand outdated. Nhưng đó là **brand investment**, không phải growth tactic. Expectation setting cần đúng.

**Alternative path:**
1. Nếu muốn tăng acquisition → invest vào earned channels (virality, referral, UGC) — ROI cao hơn nhiều
2. Nếu muốn improve conversion → A/B test specific elements trên current site (CTA, messaging, social proof) — faster, cheaper, measurable
3. Nếu brand thật sự cần refresh → do it, nhưng forecast performance DIP trước, budget 3-6 tháng optimization post-launch, và KHÔNG promise acquisition increase trong roadmap

**Verdict:** Pushback
**Next Actions:**
1. Tách "brand refresh" (investment) khỏi "acquisition growth" (measurable outcome) — đừng mix 2 goals
2. Nếu vẫn muốn rebrand → set expectation: performance sẽ giảm 3-6 tháng
3. Song song: identify earned channel opportunity (referral, UGC) — đây mới là sustainable acquisition
**Confidence:** High — pattern verified across multiple companies in corpus.

---

## Example 3: Full Growth Audit (Mode F)

### Input
> "Review growth strategy cho SaaS product của chúng tôi. B2B collaboration tool, $5M ARR, 80% từ paid ads, 15% organic SEO, 5% referral. Team: 3 growth engineers, 1 growth PM. Activation rate 35%. Monthly churn 6%."

### Output

## Growth Strategy Audit: B2B Collaboration Tool

### Scorecard
| Dimension | Score | Key Finding |
|-----------|:-----:|-------------|
| PMF Depth | 3 | $5M ARR signals traction nhưng 6% monthly churn cao cho B2B SaaS. Cần check Sean Ellis score. |
| Growth Loop Health | 2 | Referral chỉ 5% — gần như không có earned loop. Growth phụ thuộc fuel (paid). |
| Channel Diversification | 1 | 80% paid = extreme concentration risk. Nếu CPM tăng 2x → business model vỡ. |
| Activation Pipeline | 2 | 35% activation nghe cao nhưng cần check definition. Với B2B collab tool, core action = invite teammate? |
| Retention Mechanics | 2 | 6% monthly churn = ~50% annual churn. Product chưa có strong accruing benefits. |
| Experimentation Maturity | 3 | Team 4 người, assume có basic experiment capability. |
| **Overall** | **2.2** | **Critical — fundamental issues** |

### Strengths
1. $5M ARR = real revenue, real customers. Foundation exists.
2. Team in place (3 eng + 1 PM) — execution capacity available.
3. SEO organic at 15% — there's some non-paid discovery happening.

### Critical Gaps
1. **Channel concentration (Score 1)** — 80% paid is unsustainable. CPM inflation will erode margins. *"Algorithm giveth, algorithm taketh away."* Fix: build earned channel (referral/viral loop from collaboration features).
2. **Retention (Score 2)** — 6% monthly churn destroys LTV. With $5M ARR, losing ~$250K/month to churn. Before scaling acquisition, fix retention. *"Retention before acquisition."*
3. **No growth loops (Score 2)** — Collaboration tool = natural sharing loop potential. Users INVITE colleagues to collaborate → recipients become users. This should be >30% of acquisition but it's only 5%.

### Recommended Next Actions
1. **[This month]** Run Sean Ellis survey → understand PMF depth. If <40%, pause growth and fix product. Expected: clarify PMF status.
2. **[This quarter]** Build sharing/invite loop → collaboration tool has natural viral mechanics. Target: referral from 5% → 20% of acquisition within 6 months.
3. **[This quarter]** Diagnose churn → interview 20 churned customers. Hypothesis: users don't reach "team adoption" moment. Speed up team onboarding = reduce churn.
4. **[Next quarter]** Reduce paid dependency to <50% by growing earned + organic channels.

### Verdict: Critical
### Confidence: High — B2B SaaS collaboration tool fits squarely within corpus patterns (Dropbox, Miro, Slack, Notion all referenced).
