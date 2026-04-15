# Experimentation — Design & Execution Guide

Use in Mode C (Experiment Design).

---

## Hypothesis Template

```
We believe that [change/feature]
for [target users]
will result in [expected outcome].
We will know this is true when [metric] [changes by X%] within [timeframe].
We will STOP if [kill criteria].
```

**Rules:**
- Write hypothesis BEFORE building (not post-hoc rationalization)
- Define success AND failure conditions upfront
- "Users will like it" is not a measurable outcome

---

## Experiment Types

| Type | Best For | Tradeoff |
|------|----------|----------|
| **A/B Test** | Validating specific changes with statistical rigor | Needs sufficient sample size; takes time |
| **Multivariate** | Understanding interactions between changes | Much larger sample needed; harder to interpret |
| **Iterative** | Incremental optimization over time | Slower; risk of local maxima |
| **Bandit Algorithm** | Maximizing value during the test | Less statistical rigor; not ideal for learning |
| **Observational** | When randomization isn't possible | Weaker causal claims; confounders |

**Default choice:** A/B test. Use others only when A/B isn't feasible.

---

## Prioritization: ICE Scoring

| Factor | Score 1-10 | Guide |
|--------|-----------|-------|
| **Impact** | How much will this move the target metric? | 1 = negligible, 10 = game-changing |
| **Confidence** | How sure are you it'll work? | 1 = wild guess, 5 = some evidence, 8+ = data-backed |
| **Ease** | How quickly/cheaply can you test? | 1 = months of work, 10 = ship today |

**ICE Score** = (I + C + E) / 3

Graduate to **RICE** when you need to factor in audience reach:
- RICE = (Reach × Impact × Confidence) / Effort

---

## Execution Checklist

### Before the Test
- [ ] Hypothesis written with measurable success criteria
- [ ] Kill criteria defined (when do we STOP?)
- [ ] Sample size calculated for statistical significance
- [ ] Test duration set (minimum 1-2 business cycles)
- [ ] Primary metric + guardrail metrics defined
- [ ] Expected outcome documented (for calibration later)

### During the Test
- [ ] DON'T peek at results and make early calls (peeking problem)
- [ ] DON'T change the test mid-run
- [ ] Monitor for technical issues only
- [ ] Document any external factors that might affect results

### After the Test
- [ ] Analyze with predetermined statistical method
- [ ] Record learnings in testing log (wins AND losses)
- [ ] Share results broadly
- [ ] Decide: scale, iterate, or kill
- [ ] Update institutional memory

---

## Organizational Culture Practices

From Ronny Kohavi (world expert on A/B testing at Microsoft/Bing):

1. **Test everything** — Any code change should be in some experiment
2. **Expect failure** — 80-92% of ideas fail to improve target metrics
3. **Portfolio approach** — Many incremental tests + some high-risk/high-reward bets
4. **Institutional memory** — Document all experiments. New teams will reinvent old mistakes.
5. **Quarterly surprise review** — Review most surprising experiment results as a team
6. **Celebrate learning** — Failed experiments that teach something are valuable

> "Of these experiments, 92% failed to improve the metric that we were trying to move. So only 8% of our ideas actually were successful at moving the key metrics." — Ronny Kohavi

> "We are often humbled by how bad we are at predicting the outcome of experiments." — Ronny Kohavi

---

## Case Studies

### Bing $100M Ad Title Change
A trivial UI change (moving ad title line position) worth $100M/year. Sat in backlog for months. Built in 2 days. Revenue alarm triggered because result was "too good to be true."
**Lesson:** Run cheap experiments early. You cannot predict which will win.

### Bing Social (100 Person-Years)
Integrated Twitter/Facebook into search. Hundreds of experiments showed flat/negative. Eventually killed after 100 person-years invested.
**Lesson:** Pre-committed kill criteria could have saved years. Even with data showing failure, orgs struggle to quit.
