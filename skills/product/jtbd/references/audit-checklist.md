# JTBD Audit Checklist — Mode E Reference

Use this checklist to verify existing JTBD work quality.

## 1. Conference-Room Detector

| Check | Pass | Fail |
|-------|------|------|
| Job statements backed by customer stories? | At least 1 story per statement | No stories, only hypotheses |
| Interviews conducted? | ≥7 interviews with people who already acted | 0 interviews, or only future-intent |
| Irrational elements present? | At least 1 "that's weird" finding | Everything makes perfect sense (suspicious) |
| Trade-offs documented? | Clear give-ups for each job | No trade-offs = no real decisions studied |

**If ≥2 Fail → FLAG: "High conference-room risk. Recommend 10 interviews before proceeding."**

## 1b. Solution-Language Detector

| Check | Pass | Fail |
|-------|------|------|
| Job statement free of product terms? | No "danh mục", "widget", "báo cáo", "tính năng", "màn hình" | Contains solution/feature language |
| Outcome is progress, not mechanism? | "Tự tin quyết định", "an tâm" | "Xem được chi tiêu theo danh mục" |
| Remove mechanism → outcome survives? | "Tôi muốn an tâm" survives without "xem widget" | Outcome disappears without the mechanism |

**If any Fail → REWRITE: Strip solution language. Ask: "What emotional outcome does the customer want?"**

## 1c. AI-Output Detector

| Check | Human-depth | AI-surface |
|-------|------------|------------|
| Segments meaningfully different? | Each has unique irrational elements | 80% similar, only labels differ |
| Contains "that's weird" findings? | At least 1 surprising/counterintuitive insight | Everything makes perfect logical sense |
| Personal stories present? | Named individuals, specific moments | Generic personas without real stories |
| Functional-only or full spectrum? | Emotional + Social layers present | Mostly functional job descriptions |

**If ≥2 AI-surface → FLAG: "Likely AI-generated surface JTBD. Need human depth — interview stories, real anecdotes, irrational moments."**

## 2. Forces Completeness

| Check | Complete | Incomplete |
|-------|----------|------------|
| F1 Push identified? | Specific struggling moment with context | Generic "pain point" |
| F2 Pull identified? | Desired outcome with emotional component | Feature list disguised as outcome |
| F3 Anxiety addressed? | Known hesitations + mitigation strategy | Not mentioned |
| F4 Habit acknowledged? | Current behavior/solution + switching cost | Assumed users have no current solution |

**Minimum: F1 + F2 must be present. F3 + F4 strongly recommended.**

## 3. Energy Dimensions

For each job pathway, check:
- [ ] Functional signals (time, effort, knowledge, workflow)
- [ ] Emotional signals (stress, confidence, frustration, relief)
- [ ] Social signals (status, perception, relationships)

**Minimum: 2/3 dimensions should have signals. Pure functional = shallow analysis.**

## 4. Level 1 / Level 2 Separation

| Check | Correct | Incorrect |
|-------|---------|-----------|
| Level 1 outcomes stable? | Same for 3+ months | Changed every sprint |
| Level 2 criteria iterating? | Updated based on new data | Never updated, or confused with Level 1 |
| Pyramid structure? | Level 2 decomposes Level 1 logically | Level 1 and 2 at same abstraction level |

## 4b. Segment Stability Test

| Check | Stable | Unstable |
|-------|--------|----------|
| Segment survives product changes? | Adding feature X doesn't eliminate segment | "Avoider becomes Minimalist when smart receipt ships" |
| Based on personality/values axis? | Active/passive, risk-tolerant/averse | Based on current behavior with product |
| Situation is context, not segment? | Financial state = context in job statement | Financial state = segment definition |

**If segment unstable → REFRAME: Use personality axis (stable) × situation axis (variable). Segment by WHO, not by WHAT they do.**

## 5. Demand-Side Framing

| Check | Demand-side | Supply-side (wrong) |
|-------|-------------|---------------------|
| Competitors identified by... | What customer would DO instead | What products look similar |
| Job statement starts with... | Context (situation) | Product/feature |
| Success metric is... | Progress made by customer | Features shipped/used |

## 6. Buying Phase Coverage

Check if JTBD analysis covers all 6 phases:
- [ ] First thought (what triggered awareness?)
- [ ] Passive looking (how do they learn about the problem?)
- [ ] Active looking (how do they compare solutions?)
- [ ] Deciding (what trade-offs do they make?)
- [ ] First use (does the product deliver on hire criteria?)
- [ ] Ongoing use (is new habit forming or churn risk?)

**Most analyses only cover Phase 4 (Deciding). Flag if phases 1-3 or 5-6 are missing.**

## Scoring

| Dimension | Score | Weight |
|-----------|-------|--------|
| Conference-room risk | 0-5 (5=pure story-based) | 20% |
| Solution-language clean | 0-5 (5=pure outcome, no product terms) | 10% |
| Forces completeness | 0-5 (5=all 4 forces + mitigation) | 20% |
| Energy dimensions | 0-5 (5=all 3 dimensions: functional+emotional+social) | 10% |
| Level 1/2 separation | 0-5 (5=emotional L1, functional L2, clear pyramid) | 15% |
| Segment stability | 0-5 (5=survives product changes, personality-based) | 10% |
| Demand-side framing | 0-5 (5=pure demand-side) | 10% |
| Buying phase coverage | 0-5 (5=all 6 phases) | 5% |

**≥4.0 → Ready. 3.0-3.9 → Improve. <3.0 → Start over with interviews.**
