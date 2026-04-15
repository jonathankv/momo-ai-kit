# Experiment Design Template

Dùng template này cho Mode B (Experiment Designer). Fill mọi section — nếu thiếu thông tin, hỏi user thay vì assume.

---

## Template

```markdown
# Experiment: [Tên ngắn, mô tả]

## Riskiest Assumption
[Cái gì, nếu sai, invalidate toàn bộ hypothesis? Bắt đầu từ đây — experiment phải test CÁI NÀY.]

## Hypothesis
If [action cụ thể], then [outcome đo được], because [reasoning / evidence].

## Method
- **Type:** [A/B test | Fake door | Prototype test | Wizard of Oz | Survey | User interview | Concierge MVP]
- **Control:** [Current experience — mô tả cụ thể]
- **Treatment:** [Changed experience — mô tả cụ thể]
- **Audience:** [Who, how many, how selected]
- **Randomization:** [How users are assigned to control/treatment]

## Duration
- **Minimum:** [Based on sample size math — nếu A/B test, tính MDE + power]
- **Maximum:** [Cap to prevent indefinite running — thường 2-4 weeks]

## Metrics
- **Primary:** [ONE metric, đo trực tiếp hypothesis outcome]
  - Baseline: [current value]
  - Target: [expected value if hypothesis true]
- **Secondary:** [1-2 supporting metrics]
- **Guardrail:** [Metric that MUST NOT get worse — e.g., NPS, error rate, revenue per user]

## Success Criteria
- Primary metric moves from [baseline] to [target] with statistical significance (p < 0.05 hoặc 95% Bayesian credible interval)
- Guardrail metrics stable (no degradation > [threshold])

## Kill Criteria — QUAN TRỌNG
- Stop if: primary metric drops below [threshold] for [duration]
- Stop if: guardrail degrades by > [%]
- Stop if: [max duration] passes with no signal (inconclusive → kill, don't extend)
- Stop if: qualitative signal strongly negative (e.g., support tickets spike)

## Decision Matrix
| Result | Action |
|--------|--------|
| Success + guardrails stable | Ship to 100% |
| Success + guardrail violation | Investigate tradeoff, decide case-by-case |
| No signal after max duration | Kill. Document learning. |
| Negative result | Kill immediately. Document learning. |
| Inconclusive + promising signal | Design follow-up with narrower scope, NOT extend current |

## Sample Size Notes (cho A/B tests)
- Baseline conversion: [X%]
- MDE (minimum detectable effect): [Y%]
- Power: 80%
- Significance: 0.05
- Required sample per variant: [N]
- At [daily traffic], need [D] days minimum

## Pre-Mortem
Trước khi chạy, answer: "Nếu experiment này fail, lý do likely nhất là gì?"
- [Lý do 1]
- [Lý do 2]
```

---

## Method Selection Guide

| Tình huống | Method phù hợp | Tại sao |
|------------|----------------|---------|
| Đủ traffic, change nhỏ, metric rõ | A/B test | Statistical rigor, causal inference |
| Chưa build gì, test demand | Fake door test | Low cost, fast signal |
| Concept mới, cần qualitative signal | Prototype test / User interview | Understand "why", not just "what" |
| Service-heavy feature, chưa scalable | Wizard of Oz / Concierge MVP | Validate value before building |
| Pricing / WTP question | Van Westendorp survey / Conjoint | Quantify willingness to pay |
| Very early stage, no users yet | Smoke test (landing page + signup) | Validate interest before building |
