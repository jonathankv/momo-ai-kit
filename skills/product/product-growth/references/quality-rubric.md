# Growth Audit Rubric — Mode F Reference

6-dimension scorecard for evaluating growth strategy health.

---

## Scoring Guide

Each dimension: 1 (Critical) → 5 (Excellent). Overall = average of 6 dimensions.

| Overall Score | Verdict |
|:------------:|---------|
| ≥ 4.0 | **Healthy Growth** — maintain and optimize |
| 3.0 – 3.9 | **Growth at Risk** — specific areas need attention |
| 2.0 – 2.9 | **Critical** — fundamental issues, prioritize fixes |
| < 2.0 | **Broken** — growth strategy needs rebuild |

---

## Dimension 1: PMF Depth

| Score | Criteria |
|:-----:|----------|
| 1 | No PMF measurement. No retention data. Building features without user validation. |
| 2 | Some user feedback but no systematic measurement. Retention curves declining. |
| 3 | Sean Ellis score measured (20-39%). Retention stabilizing but not growing. |
| 4 | Sean Ellis score ≥40%. Healthy retention curves. Clear understanding of must-have users. |
| 5 | Sean Ellis score ≥50%. Deep understanding of why users love product. Expanding must-have use cases. |

**Key question:** "How would your users feel if they could no longer use this product?"

---

## Dimension 2: Growth Loop Health

| Score | Criteria |
|:-----:|----------|
| 1 | No growth loops identified. Growth is purely manual/paid. |
| 2 | 1 loop identified but not actively managed. No loop metrics. |
| 3 | 1-2 active loops with basic metrics. No new loops in >18 months. |
| 4 | 2-3 active loops. New loop introduced in last 18 months. Qualitative loop map exists. |
| 5 | Multiple active loops. Quantitative growth model. Regular loop innovation (18-month cycle). Loop health dashboard. |

**Key question:** "If you stop all paid/manual growth efforts, what continues growing on its own?"

---

## Dimension 3: Channel Diversification

| Score | Criteria |
|:-----:|----------|
| 1 | Single channel dependency (>80% from one source). |
| 2 | 2 channels but one dominates (>60%). All rented. |
| 3 | 2-3 channels, moderate concentration. Mix of earned/rented but earned <20%. |
| 4 | 3+ channels, no single >50%. Earned channels ≥30%. Active earned channel development. |
| 5 | Diversified portfolio. Earned >40%. 20-25% team time on new channel R&D. Resilient to algorithm changes. |

**Key question:** "If Google changes its algorithm tomorrow, or your top paid channel doubles in cost, what happens?"

---

## Dimension 4: Activation Pipeline

| Score | Criteria |
|:-----:|----------|
| 1 | No core action defined. No activation measurement. Users "just sign up." |
| 2 | Some onboarding flow but no defined aha moment. Drop-off not measured. |
| 3 | Core action defined. Basic activation rate tracked. No Setup→Aha→Habit distinction. |
| 4 | Full pipeline: Setup→Aha→Habit mapped with conversion metrics. Speed-to-value optimized. Activation <15% (strict definition). |
| 5 | Pipeline mapped + continuously optimized. Personalized onboarding by segment. Activation strongly predicts long-term retention. |

**Key question:** "What is the ONE action that, when a new user completes it, they're very likely to come back?"

---

## Dimension 5: Retention Mechanics

| Score | Criteria |
|:-----:|----------|
| 1 | No retention strategy beyond "hope they come back." Flat or declining curves. |
| 2 | Re-engagement emails/push. No product-level retention mechanics. |
| 3 | Product gets somewhat better with use (some personalization). Basic engagement loops. |
| 4 | Strong accruing benefits (data, content, customization) + mounting losses (switching cost). Sarah Tavel L2 achieved. |
| 5 | Self-perpetuating: network effects active. Each user's actions improve experience for others. Sarah Tavel L3 achieved. Growth loops create re-engagement. |

**Key question:** "Does the product get better the more you use it? What do you lose by leaving?"

---

## Dimension 6: Experimentation Maturity

| Score | Criteria |
|:-----:|----------|
| 1 | No experimentation. Decisions based on gut/HiPPO. |
| 2 | Occasional A/B tests. No experiment framework. Results rarely influence decisions. |
| 3 | Regular experimentation. A/B for high-traffic areas. But either over-testing (paralysis) or under-testing. |
| 4 | Balanced approach: A/B for high-traffic, pre/post for low-traffic. 1-month rule applied. Learning velocity > test velocity. |
| 5 | Experiment-driven culture. ICE or similar prioritization. Experiment results systematically documented and shared. Pre/post readouts at 7d, 28d, 90d. Team trusts intuition + data. |

**Key question:** "How quickly can you run an experiment and learn from it? What did you learn from the last 3 experiments?"

---

## Output Format for Mode F

```markdown
## Growth Strategy Audit: [Product/Company Name]

### Scorecard
| Dimension | Score | Key Finding |
|-----------|:-----:|-------------|
| PMF Depth | [1-5] | [one-line finding] |
| Growth Loop Health | [1-5] | [one-line finding] |
| Channel Diversification | [1-5] | [one-line finding] |
| Activation Pipeline | [1-5] | [one-line finding] |
| Retention Mechanics | [1-5] | [one-line finding] |
| Experimentation Maturity | [1-5] | [one-line finding] |
| **Overall** | **[avg]** | **[verdict]** |

### Strengths (what's working)
1. [strength 1]
2. [strength 2]

### Critical Gaps (prioritized)
1. [gap 1 — severity — specific fix]
2. [gap 2 — severity — specific fix]
3. [gap 3 — severity — specific fix]

### Recommended Next Actions
1. [action 1 — timeline — expected impact]
2. [action 2 — timeline — expected impact]
3. [action 3 — timeline — expected impact]

### Verdict: [Healthy Growth / Growth at Risk / Critical / Broken]
### Confidence: [High / Medium / Low] — [reason]
```
