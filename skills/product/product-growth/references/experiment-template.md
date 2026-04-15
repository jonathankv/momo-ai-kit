# Growth Experiment Template — Mode E Reference

Specialized for growth experiments: A/B tests, channel tests, pricing tests, referral tests.
Different from PM experiments: focus on conversion/revenue metrics, shorter duration, sample size critical.

---

## Growth Experiment Spec

```markdown
## Experiment: [Name]

### Hypothesis
If we [change X], then [metric Y] will [increase/decrease] by [estimated %],
because [reasoning based on mental model or data].

### Type
[ ] A/B Test (sufficient traffic, need statistical precision)
[ ] Pre/Post (low traffic, or can't split audience)
[ ] Channel Test (testing new acquisition channel)
[ ] Pricing Test (testing price/packaging change)
[ ] Referral Test (testing viral/referral mechanism)

### Riskiest Assumption
What's the one thing that must be true for this to work?
→ [State clearly]

### Sample Size & Duration
- Required sample per variant: [calculate or estimate]
- Expected daily traffic to test surface: [number]
- Estimated duration to reach significance: [days]
- **1-Month Rule:** If duration > 30 days → switch to Pre/Post

### Metrics
| Metric | Type | Current | Target | Kill |
|--------|------|---------|--------|------|
| [Primary] | Leading | [baseline] | [target] | [kill threshold] |
| [Secondary] | Lagging | [baseline] | [target] | — |
| [Guardrail] | Must not worsen | [baseline] | ≥ baseline | < [threshold] |

### Kill Criteria
Stop and roll back if:
1. [Guardrail metric] drops below [threshold]
2. Primary metric shows no signal after [X days]
3. [Other specific condition]

### Readout Schedule
- [ ] 24-hour check (any crashes/errors?)
- [ ] 7-day readout (directional signal)
- [ ] 28-day readout (statistical significance)
- [ ] 90-day follow-up (retention/LTV impact, if applicable)

### Decision Framework
- Primary metric hits target + guardrails safe → **Ship**
- Primary metric directionally positive but not significant → **Extend or larger test**
- Primary metric flat → **Kill, learn, next hypothesis**
- Guardrail violated → **Roll back immediately**
```

---

## Quick Decision: A/B Test or Pre/Post?

```
Can I get required sample in ≤ 30 days?
  YES → A/B Test
  NO  → Is it a high-risk change (pricing, core flow)?
    YES → Find smaller surface to test, or staged rollout
    NO  → Pre/Post (ship, measure 7-day + 28-day readout, compare to baseline)
```

---

## Growth-Specific Experiment Types

### Channel Test
- Run for 2-4 weeks minimum
- Measure: CAC, volume, quality (activation rate of acquired users)
- Compare: new channel CAC vs existing channel CAC
- Guardrail: activation rate of new channel users ≥ 70% of existing

### Pricing Test
- High sensitivity — use staged rollout (5% → 20% → 50% → 100%)
- Measure: conversion rate, ARPU, churn impact
- ALWAYS measure 90-day retention impact (pricing changes have delayed effects)
- Guardrail: monthly churn must not increase > 1 percentage point

### Referral/Viral Test
- Measure both sides: sender experience + recipient conversion
- K-factor = invites sent × acceptance rate
- Guardrail: organic NPS must not decline (referral shouldn't feel spammy)
