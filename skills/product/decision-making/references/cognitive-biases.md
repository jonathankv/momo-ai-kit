# Cognitive Biases — Detection & Mitigation Guide

15 biases organized by decision phase. Use in Mode B (Reasoning Audit).

---

## Phase 1: Gathering Information

| # | Bias | What It Is | Business Example | Mitigation |
|---|------|-----------|-----------------|------------|
| 1 | **Confirmation Bias** | Seeking info that supports existing beliefs, ignoring contradictions | PM only surveys users who love the feature | Assign devil's advocate; seek disconfirming evidence first |
| 2 | **Availability Heuristic** | Overweighting easily recalled info (recent, vivid, emotional) | Prioritizing bug because one angry customer called, ignoring data showing 0.1% impact | Systematic data collection; don't let anecdotes drive strategy |
| 3 | **Survivorship Bias** | Focusing on successes, ignoring invisible failures | "Dropbox grew with a waitlist, so we should too" (ignoring 1000 that tried and failed) | Always ask: "What am I NOT seeing? Where are the failures?" |
| 4 | **Anchoring Bias** | Over-relying on first piece of information | First pricing estimate becomes baseline even when wrong | Consider multiple reference points; delay initial anchors; use ranges |

## Phase 2: Evaluating Options

| # | Bias | What It Is | Business Example | Mitigation |
|---|------|-----------|-----------------|------------|
| 5 | **Sunk Cost Fallacy** | Continuing because of past spending, not future value | "We've spent $2M, we can't stop now" | Evaluate on future potential only. "Would I start this today?" — Annie Duke |
| 6 | **Status Quo Bias** | Preferring current state, resisting change even when beneficial | Keeping legacy system because "it works" despite mounting debt | Frame inaction as a choice with costs. Regular strategy reviews. |
| 7 | **Framing Effect** | Decision changes based on presentation, not content | "90% success rate" feels different from "10% failure rate" | Present data multiple ways; test if conclusion changes with framing |
| 8 | **Overconfidence Bias** | Overestimating knowledge or prediction accuracy | "I'm 95% sure this hits target" when historical accuracy is 40% | Track prediction accuracy over time. Use reference class forecasting. |

## Phase 3: Making the Decision

| # | Bias | What It Is | Business Example | Mitigation |
|---|------|-----------|-----------------|------------|
| 9 | **Groupthink** | Consensus desire suppresses dissent and critical thinking | Team agrees with CEO's direction without voicing concerns | Anonymous input; assign devil's advocate; pre-meeting opinion collection |
| 10 | **Recency Bias** | Overweighting recent events vs. historical patterns | Changing strategy after one bad quarter, ignoring 3-year trend | Balance recent data with historical analysis and long-term trends |
| 11 | **Halo Effect** | Positive impression in one area influences unrelated judgments | "Their UX is great, so their backend must be solid" | Evaluate each dimension independently with specific criteria |
| 12 | **Dunning-Kruger** | Low competence → overconfidence; high competence → underconfidence | Junior PM certain about strategy; senior PM second-guessing sound plan | Seek external calibration; pair junior confidence with senior expertise |

## Phase 4: Evaluating Outcomes

| # | Bias | What It Is | Business Example | Mitigation |
|---|------|-----------|-----------------|------------|
| 13 | **Hindsight Bias** | Believing past events were predictable after they occurred | "I knew that feature would fail" (but didn't say anything before) | Document predictions BEFORE outcomes; review prediction logs |
| 14 | **Resulting** | Judging decision quality by outcome quality | Praising risky bet that paid off; punishing sound decision that got unlucky | Separate process evaluation from outcome evaluation — Annie Duke |
| 15 | **Optimism Bias** | Overestimating likelihood of positive outcomes | "Our launch will definitely hit 100K users month one" | Use base rates; reference class forecasting; plan for downside |

---

## Quick Bias Detection Checklist

When auditing any decision or reasoning:

1. **Information gathering:** Did we seek disconfirming evidence? Or just confirming?
2. **Weighting:** Are we overweighting recent/vivid/emotional data?
3. **Options:** Did we evaluate future potential or are we anchored to past investment?
4. **Group dynamics:** Were opinions collected independently before discussion?
5. **Confidence:** Is our confidence calibrated to our actual track record?
6. **Outcome evaluation:** Are we judging the decision process or the outcome?

> "People who are really excited about being data-driven, to me that is oftentimes a red flag for their product thinking, especially if it's an executive who's saying things like, oh, so we make all our decisions with our dashboards." — Maggie Crowley
