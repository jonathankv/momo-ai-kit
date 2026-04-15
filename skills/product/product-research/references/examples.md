# Examples — Product Research Skill

2 input/output examples showing the skill in action.

---

## Example 1: Simple — Interview Guide Request (Mode B)

### Input
> "Tôi cần phỏng vấn users để hiểu tại sao họ bỏ dở flow thanh toán trên MoMo."

### Pre-Checks
- **Context:** MoMo payment flow, drop-off problem, user research needed
- **Prerequisite:** ✅ User research → Mode B
- **Corpus:** Payment/fintech behavioral research available

### Output

**Research altitude:** Micro (specific usability/behavioral question)

**Interview approach:** Story-based (Teresa Torres method)

**Suggested guide:**

Opening: "Kể cho tôi về lần gần nhất bạn dùng MoMo để thanh toán."

Core stories:
1. "Kể về một lần bạn bắt đầu thanh toán nhưng không hoàn thành. Chuyện gì xảy ra?"
2. "Kể về lần gần nhất bạn chuyển sang dùng app khác để thanh toán thay vì MoMo."

Forces of Progress probes:
- F1 (Push): "Điều gì đang xảy ra khiến bạn cần thanh toán lúc đó?"
- F3 (Anxiety): "Có điều gì khiến bạn lo ngại khi tiếp tục không?"
- F4 (Habit): "Bình thường bạn thanh toán bằng cách nào?"

**Behavioral diagnosis:** Map every step from "mở app" to "thanh toán thành công." Identify high-friction steps (Kristen Berman's Three Bs). Look for: cognitive overload, unnecessary confirmation screens, unclear CTAs.

**Verdict:** Micro research — should take 5-8 interviews, 1-2 weeks.
**Confidence:** High that this approach will surface drop-off causes.
**Next Actions:**
1. Recruit 8 users who started but didn't complete payment (last 30 days)
2. Use in-product intercept for recruiting
3. Run 5 interviews, synthesize, then decide if more needed

---

## Example 2: Complex — PMF Assessment (Mode E)

### Input
> "Chúng tôi vừa launch tính năng 'MoMo Travel' cho booking vé máy bay. 3 tháng rồi, tôi không chắc có PMF không. Giúp tôi đánh giá."

### Pre-Checks
- **Context:** MoMo Travel (flight booking), 3 months post-launch, PMF unclear
- **Prerequisite:** ✅ PMF assessment → Mode E
- **Corpus:** PMF frameworks available (Ellis, Jackson, Idiodi)

### Output

**Step 1: PMF Survey (Sean Ellis Test)**

Deploy to MoMo Travel users (used ≥2 times in 3 months):

"Bạn sẽ cảm thấy thế nào nếu không thể sử dụng MoMo Travel nữa?"
- Rất thất vọng
- Hơi thất vọng
- Không thất vọng

**Benchmark:** 40%+ "Rất thất vọng" = PMF signal.

**Step 2: Four Levels Assessment (Todd Jackson)**

| Dimension | Questions to Answer |
|-----------|-------------------|
| Demand | Bao nhiêu users tự tìm đến? Organic vs pushed? |
| Satisfaction | Repeat usage? NPS? Support ticket volume? |
| Efficiency | CAC? Revenue per user? LTV? |

**Current level estimate** (cần data để xác nhận):
- If mostly push-driven traffic, low repeat → Nascent (Level 1)
- Focus: satisfaction first, efficiency later

**Step 3: Reference Customer Check (Christian Idiodi)**

Hỏi: "Có bao nhiêu users yêu thích MoMo Travel đủ để giới thiệu cho bạn bè?"
- Target B2C: 15-25 reference customers
- If < 15 passionate users after 3 months → PMF gap

**Step 4: Segment Analysis**

If PMF survey < 40%:
1. Drill into "Rất thất vọng" segment — họ là ai? Use case gì?
2. So sánh với "Không thất vọng" — khác biệt ở đâu?
3. **Lookout playbook:** Reposition product around the "very disappointed" segment's specific use case

**Verdict:** Run PMF survey + reference customer count trước. Nếu <40% và <15 references → chưa có PMF, cần pivot hoặc narrow focus.
**Confidence:** High on methodology, Medium on outcome prediction (cần data).
**Next Actions:**
1. Deploy Sean Ellis survey to 500+ MoMo Travel users (1 week)
2. Count reference customers (users who referred ≥1 friend)
3. If <40%: deep-interview the "very disappointed" segment to find repositioning opportunity
