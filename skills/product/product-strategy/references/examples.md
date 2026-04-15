# Examples — Product Strategy Skill

2 input/output examples to calibrate expected output quality.

---

## Example 1: Mode B — Moat Analyzer

### Input
> "MoMo là super app fintech ở Việt Nam. 30M+ users. Moat của MoMo là gì? Có sustainable competitive advantage không?"

### Output

**7 Powers Analysis — MoMo:**

| Power | Assessment | Score |
|-------|-----------|-------|
| **Scale Economies** | Có. Payment processing cost/transaction giảm với volume. 30M+ users tạo cost advantage vs. smaller players. Nhưng competitors (VNPay, ZaloPay) cũng có significant scale. | 3/5 |
| **Network Economies** | Có nhưng cần kiểm tra materiality. More users → more merchants → more users loop tồn tại. Nhưng users dễ dàng multi-home (dùng nhiều app cùng lúc). Uber/Lyft problem: network effects có nhưng không material enough vì low switching cost. | 2/5 |
| **Counter Positioning** | Yếu ở giai đoạn mature. Counter positioning mạnh nhất ở origination stage. MoMo đã qua giai đoạn này. Banks không thể easily replicate mobile-first UX, nhưng đang catch up. | 2/5 |
| **Switching Costs** | Moderate. Transaction history, saved cards, bill payment setup tạo friction. Nhưng financial data portable (banks có cùng data). Loyalty/rewards tạo soft lock-in nhưng competitor có thể match. | 3/5 |
| **Branding** | Moderate-strong. Brand recognition cao ở VN (pink app). Nhưng brand recognition ≠ branding power. Test: users chọn MoMo vì brand trust hay vì habit/convenience? | 3/5 |
| **Process Power** | Unclear. Nếu có internal processes (risk scoring, fraud detection, merchant onboarding) mà competitors mất years để replicate → đây là power. Cần more info. | ?/5 |
| **Cornered Resource** | Yếu. Không có exclusive access to data, talent, hay partnerships mà competitors không thể có. Regulatory licenses không exclusive. | 1/5 |

**Power Progression Stage:** Late Takeoff / Early Stability. Counter positioning window đã qua. Scale và switching costs đang build nhưng chưa decisive. Branding emerging.

**Critical Gaps:**
1. **Multi-homing risk:** Users dùng MoMo + VNPay + ZaloPay simultaneously. Không có exclusive lock-in.
2. **Network effects chưa material:** Merchant accept nhiều payment methods. User switching cost thấp.
3. **No cornered resource:** Data, talent, licenses đều accessible by competitors.

**Strategic Verdict:** Vulnerable — multiple moderate powers nhưng no single decisive power. Competitor clone risk: cao.

**Key Bets:**
1. **Build switching costs** — Deepen financial services (credit scoring, insurance, investment) tạo data-driven lock-in mà payment-only competitors không có
2. **Pursue process power** — Invest in proprietary risk models, fraud detection that takes years to replicate
3. **Super app network effects** — Cross-service usage (payment → investment → insurance → lending) creates multi-dimensional lock-in vs. single-service competitors

**Anti-Bets:**
- Không compete on payment processing fees alone (race to bottom, no power)
- Không add features for feature-parity with competitors (competitor copying anti-pattern)

---

## Example 2: Mode D — Pricing Strategist

### Input
> "Chúng tôi build AI customer support agent. Giảm 60% ticket volume cho clients. Đang charge $500/month flat. Nên price như nào?"

### Output

**Autonomy-Attribution Matrix Placement:**

```
                    Low Attribution | High Attribution
High Autonomy    |  Usage-based     | ✅ OUTCOME-BASED
Low Autonomy     |  Seat/subscription | Hybrid
```

Product của bạn ở **Golden Quadrant** (High Autonomy + High Attribution):
- High Autonomy: AI agent tự resolve tickets, không cần human-in-loop
- High Attribution: 60% ticket reduction = directly measurable

**Problem với $500/month flat:**
- **Price Anchoring Trap:** Bạn đang train customers expect $500/month cho value có thể worth $50K+/month
- **Single-engine strategy:** Winning market share nhưng destroying wallet share
- **20-80 Axiom violation:** Core value (ticket resolution) là phần dễ build nhất, nhưng bạn đang cho không

**Pricing Recommendation:**

| Tier | Model | Target |
|------|-------|--------|
| **Starter** | $X/resolved ticket (outcome-based) | SMB, low volume |
| **Growth** | $Y/resolved ticket, volume discount | Mid-market |
| **Enterprise** | % of cost savings (25-30% of value captured) | Enterprise, high volume |

**Value Framing:**
- Customer support agent costs ~$40K/year
- 60% ticket reduction = saving 3-6 agents = $120K-$240K/year
- AI Value Capture: 25-50% → pricing range: $30K-$120K/year
- Current $6K/year ($500/month) = capturing ~3-5% of value. Massively under-monetized.

**"How to charge" > "How much to charge":**
1. Frame POC as business case creation (not tech validation)
2. Co-create ROI model with customer from day one
3. Show up with options (good/better/best), never single price
4. Never give concession without getting something back

**Articulation Test:** Can your customer explain your pricing? "$0.50 per resolved ticket" or "We pay 25% of what the AI saves us" — both pass. "$500/month for an AI agent" — unclear value story.

**Strategic Verdict:** Strong Position — outcome-based pricing aligns incentives. But need a second moat beyond pricing (data flywheel from resolved tickets → better AI → higher resolution rate → more value).

**Key Bets:**
1. Move to outcome-based pricing for new customers immediately
2. Existing customers: grandfather current price but add value audit every 6 months (Ramanujam's "gives and gets")
3. Build data moat: each resolved ticket improves the model, creating defensibility beyond pricing

**Anti-Bets:**
- Don't lower price further to win market share (anchor trap)
- Don't rush to outcome-based without proven attribution metrics first
