# Case Study: MoMo Quản Lý Chi Tiêu (QLCT) — JTBD in Practice

> Source: CEO x BU Product Workshop, 2026-03-23. Team 2 + Team 5 presentations, CEO feedback.
> Verified against meeting transcript + team submission documents.

## Context

MoMo QLCT có 2.81M MAU nhưng CEO hỏi: "Ba triệu người dùng — nhưng bao nhiêu người thực sự sử dụng?" Chỉ 20% hardcore users. 80% còn lại "ghé qua rồi đi". Sản phẩm đặt sai câu hỏi suốt 1 năm: "Bạn có cần tính năng này không?" thay vì "Bạn vào đây để giải quyết gì?"

## Mistake #1: Segment By Behavior → Unstable

### Team 5 (initial): 3 segments by behavior
- The Minimalist (1.2-1.5M): xem nhanh, không muốn effort
- The Avoider (800K-1M): né tránh, chỉ dùng khi bị shock
- The Light (700-900K): ít giao dịch, cold start

### Problem (Team 2 identified):
> "3 fundamental problems: (1) Đang chia theo hành vi sản phẩm, không phải mong muốn cuộc sống. (2) Khi feature mới đưa ra thì segment biến mất — avoider biến thành minimalist khi có smart receipt. (3) Cùng 1 hành vi (leave) nhưng 2 segment — minimalist an tâm, avoider bực bội."

### Fix: Segment by stable axes
Team 2 reframed → 2 trục:
- **Trục dọc (personality — stable):** Active ↔ Passive
- **Trục ngang (situation — variable):** Thoải mái ↔ Giới hạn

→ 4 segments: An tâm, Tận hưởng, Xoay sở, Tối ưu

**CEO insight:** "Active/Passive là khó thay đổi hơn — liên quan đến personality. Trạng thái tài chính dễ thay đổi, thậm chí theo từng category."

### Lesson: Segment Stability Test
> Khi ship feature mới, segment có biến mất không? Nếu có → đang chia sai. Chia theo personality (stable) × situation (variable).

---

## Mistake #2: Solution-in-Job-Statement

### Team 5 job statement:
*"Khi tôi sắp chi một khoản tiền đáng kể... tôi muốn trong vòng vài giây biết được mình đã chi tiêu bao nhiêu **cho danh mục đó** — để tôi tự tin quyết định tiếp tục chi hay dừng lại."*

### CEO challenge:
> "Cái chuyện danh mục là nó bắt đầu bị hơi đi sang hướng solution. Tại sao không thể biết được là tôi muốn trong vài giây thì tôi sẽ kiểm soát được cái cảm giác này?"

"Danh mục" = solution language. Job nên là emotional outcome: "tự tin quyết định" chứ không phải "xem danh mục".

### Fix:
Before: "...biết bao nhiêu cho **danh mục đó**" (functional + solution)
After: "...biết mọi thứ **đang ổn** không" (emotional outcome)

### Lesson: Solution-Language Detector
> Scan job statement cho: danh mục, widget, báo cáo, tính năng, màn hình, nút, biểu đồ → FLAG. Job = progress customer muốn, không phải mechanism product cung cấp.

---

## Mistake #3: Functional-Only = "Đúng Nhưng Không Hấp Dẫn"

### Team 2 analysis:
> "Sản phẩm hiện tại chỉ giải Functional Job, bỏ qua Emotional và Social — dẫn đến 'đúng nhưng không hấp dẫn'."

3 lớp job (từ case data):

| Lớp | Minimalist | Avoider | Accountant |
|-----|-----------|---------|------------|
| **Functional** | Biết tổng chi, mục nào tăng, so sánh tháng | Nhận cảnh báo bất thường tự động | Phân tích theo danh mục tùy chỉnh |
| **Emotional** | An tâm; tránh stress "không biết tiền đi đâu" | Tránh lo lắng; tránh cảm giác bị phán xét | Cảm giác kiểm soát; tránh tội lỗi khi chi cho sở thích |
| **Social** | Xác nhận "mình chi tiêu hợp lý" | Tránh bị đánh giá "hoang phí" | Tự hào là người quản lý tài chính tốt |

### CEO conclusion:
Core job không phải "quản lý chi tiêu" (functional) mà là **"an tâm tài chính không cần nỗ lực"** (emotional). Giống Huawei watch: "Tôi chỉ cần 1 chữ — bạn ổn."

### Lesson: Emotional Outcome = Level 1
> Emotional outcome ("an tâm", "tự tin", "kiểm soát") thường là Level 1 thật sự. Functional mechanism ("xem danh mục", "nhận thông báo") thường là Level 2. Test: bỏ mechanism đi, outcome có đổi không?

---

## Mistake #4: AI-Generated JTBD — Polished But Shallow

### CEO observation:
> "80% các đội ra segmentation tương đối giống nhau. Đang chỉ ở level 1 của AI mà chưa fit cho nó 1 frame ở mức sâu sắc hơn."

### Team 2 experience:
> "Viết đi viết lại, cái written nó bị feature, bị given quá. Mấy con bot nó viết đi viết lại thì nó cũng không ra được cái gì lắm."

Team 2 solution: challenge AI bằng "tao không thỏa mãn" → AI mới đi deeper → reframe từ behavior → financial goals.

### Lesson: AI Conference-Room Detector
> Check: (1) All segments 80% similar? (2) Missing irrational element? (3) Everything makes "perfect sense"? (4) No personal stories/anecdotes? → Likely AI surface output. Need human depth.

---

## JTBD → North Star Metric

### The Widget Paradox
> "Widget càng tốt, user càng ÍT cần mở QLCT vào sâu. Cải thiện sản phẩm có thể GIẢM chỉ số." — MEU (App Visitors) trở nên vô nghĩa khi widget đã trả lời câu hỏi.

### Team 2's North Star: WFIU
**Weekly Financially Informed Users** — Số người dùng duy nhất mỗi tuần nhận và acknowledge ít nhất 1 personalized financial insight qua bất kỳ bề mặt QLCT nào (widget dwell > 2s, push notification opened, report/insight mở, hoặc insight-triggered action).

Tại sao WFIU:
- Đo **giá trị thực** (insight delivered), không đo lượt ghé
- Bao gồm **passive engagement** (widget dwell > 2s = acknowledge)
- **Actionable** cho product team: nâng chất lượng insight, mở bề mặt
- Phù hợp **toàn bộ user base** — mọi segment đều tìm kiếm "được informed"
- **Weekly** khớp chu kỳ chi tiêu tự nhiên

### Supporting Metrics:
1. **Insight Delivery Rate** (Leading): % transacting users nhận ≥1 insight/tuần → Target >70%
2. **Week-1 Return Rate** (Activation): % new users quay lại trong 7 ngày → Target >40%
3. **Classification Trust Rate** (Foundation): % GD auto-classify không bị user sửa → Target >90%
4. **QLCT-Attributed Retention Uplift** (Lagging): Chênh lệch 30-day retention WFIU vs non-WFIU → Target >+10pp

### Lesson: Job Completion ≠ Feature Usage
> Metric đo "customer đạt progress" chứ không đo "customer dùng feature". Sản phẩm tốt có thể giảm clicks nhưng tăng trust. Metric phải capture cả passive success (nhìn → ổn → đi).
