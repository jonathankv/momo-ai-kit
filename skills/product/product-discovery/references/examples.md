# Worked Examples — Product Discovery Skill

These examples show expected output quality for each mode. Use as calibration, not templates.

---

## Example 1: Problem Framing (Mode 1) — Simple

**User Input:** "Users are churning after the first week. Help me frame this problem."

**Expected Output:**

### Problem Statement

**The Problem:** New users of [product] are dropping off within 7 days of signup, suggesting a gap between initial expectation and delivered value during early product experience.

**Evidence:**
- 🟡 Medium: D7 retention is [X]% (need to compare to cohort/industry benchmark)
- 🔴 Weak: "Users are churning" — need to verify: are they actively deleting accounts, or simply not returning? Different problems.
- ❓ Missing: No user interview data on WHY they leave

**Benchmark Context:**
Industry average D7 retention varies widely: 25% for consumer apps, 40-60% for B2B SaaS. Without benchmark, severity is unclear.

**Current Workaround:**
Unknown — this is a critical gap. If users found alternatives (competitor, manual process), that tells us something different than if they simply gave up on the category.

**Jobs to Be Done:**
When [new user first signs up], I want to [achieve the core value promise quickly], so I can [decide if this tool is worth integrating into my workflow].

**Hypothesis:**
We believe that the gap between signup expectation and first-week experience is causing early churn, because new users aren't reaching the product's core value fast enough. Evidence needed to confirm.

**Key Assumptions to Validate:**
1. Users have a clear expectation at signup that isn't met — How to test: 5 post-signup interviews this week — Timeline: 1 week
2. There's a specific moment where users disengage — How to test: funnel analysis of first-session behavior — Timeline: 2-3 days
3. Users who DO reach core action retain significantly better — How to test: cohort analysis (core action vs. no core action) — Timeline: 1 week

**What We Don't Know (and it matters):**
- Which user segments churn most? (All users equally, or specific personas?)
- Is this a new trend or always been this way? (Seasonality? Recent product change?)
- What do retained users do differently in week 1?

**Success Metric:**
D7 retention improves from [current]% to [target]% within 2 months of intervention.

**Resource Estimate:**
Discovery phase: ~1 week, 1 PM + data analyst. 5 user interviews + funnel analysis.

---

## Example 2: Quick Validation (Mode 6) — With Pushback

**User Input:** "We should add AI-powered search to our product. Our competitors all have it now."

**Expected Output:**

I'm going to stress-test this hypothesis. Let's work through 7 questions:

**1. What evidence would convince you this is wrong?**
If you talked to 10 users and none mentioned search frustration — or if your analytics show <5% of users even use the current search — would that change your mind? Define the falsification criteria before investing.

**2. Who has tried this before, and what happened?**
Several products have added AI search recently. Key question: did it move their core metrics, or just check a feature box? Worth investigating 2-3 competitors' impact data if available. Feature parity ≠ strategic advantage.

**3. What's the cheapest way to test this in 1 week?**
- Option A: Add a "search feedback" prompt to current search. Measure: how often do users report frustration?
- Option B: 5 user interviews focused on "tell me about the last time you looked for something in [product]"
- Option C: Analyze search logs — what are users searching for? What returns zero results?

**4. If this succeeds, what's the second-order effect?**
AI search might surface content users didn't know existed → increased engagement. BUT it might also surface content quality problems that are currently hidden. Are you ready for that?

**5. What are you most afraid to find out?**
Possibly: that search isn't the real problem. The real problem might be content organization, onboarding, or feature discoverability — and "AI search" is a band-aid on a structural issue.

**6. What simpler alternative could achieve similar results?**
- Better categorization/navigation (no AI needed)
- Improved onboarding that shows users where things are
- FAQ/help section for the most common "search" queries
Each of these is cheaper, faster to ship, and easier to measure.

**7. Kill criteria:**
Abandon if: (a) <10% of users engage with search at all, (b) user interviews reveal the problem is navigation not search, (c) competitor data shows AI search didn't move retention/engagement.

**Evidence Assessment:**
- 🔴 Weak: "Competitors have it" — feature parity instinct, not user evidence
- ❓ Missing: User behavior data on current search usage
- ❓ Missing: User interviews on information-finding experience

**Recommendation:** Don't build yet. Spend 1 week on Options A+B above. If search IS a real pain point, you'll have evidence to justify the investment. If not, you just saved 2-3 months of engineering time.

**Resource Estimate:** Validation: ~1 week, 1 PM. Build (if validated): ~6-8 weeks, 2 engineers + 1 PM.

---

## Example 3: Research Synthesis (Mode 2) — Complex

**User Input:** [Provides 12 user interview transcripts about onboarding experience]

**Expected Output:**

### Research Synthesis: Onboarding Experience

**Method & Sample:**
- 12 semi-structured interviews, 30-45 min each
- Date range: Feb 10-28, 2026
- Segments: 5 new users (<1 month), 4 power users (>6 months), 3 churned users
- ⚠️ Sample size note: N=12 is directional, not statistically significant. Patterns below should be validated with quantitative data.

**Segment Overview:**
| Segment | N | Top Pain Point | Severity |
|---------|---|---------------|----------|
| New users | 5 | Overwhelmed by features, can't find core action | High |
| Power users | 4 | Forgot how hard onboarding was, now rely on workarounds | Medium |
| Churned users | 3 | Never found value, gave up within 3 sessions | Critical |

**Top Insights (ranked by evidence strength):**

#### Insight 1: Users can't identify the core action
- **Observation:** 9 of 12 participants could not describe what the product's "main thing" is in one sentence
- **Evidence strength:** 🟢 Strong (9/12, consistent across all segments)
- **Interpretation:** The product tries to do too many things at once. Users don't know where to start.
- **Implication:** Onboarding should aggressively guide users to ONE core action before showing anything else
- **Key quotes:** "I logged in and there were like 15 buttons. I didn't know which one to click." — P03 (new user)

#### Insight 2: Churned users gave up after 2-3 sessions, not 1
- **Observation:** All 3 churned users came back 2-3 times before giving up
- **Evidence strength:** 🟡 Medium (3/3 churned, but N=3)
- **Interpretation:** Users are motivated enough to try multiple times. The product has a narrow window (sessions 2-3) to deliver value.
- **Implication:** Session 2 is the critical intervention point, not session 1
- **Key quotes:** "I came back twice because the concept sounded great. But I just couldn't figure it out." — P10 (churned)

#### Insight 3: Power users built their own workarounds
- **Observation:** 3 of 4 power users use the product in ways not intended by the design
- **Evidence strength:** 🟡 Medium (3/4, but small segment)
- **Interpretation:** The product's "intended flow" doesn't match how experienced users actually work
- **Implication:** Study power user workarounds — they're signals for what the product should become
- **Key quotes:** "I just ignore the dashboard and go straight to [feature]. That's where the real work happens." — P07 (power user)

**What Surprised Us:**
- Churned users were MORE positive about the concept than active users. They loved the idea but couldn't execute on it. This is a UX problem, not a value prop problem.

**Tensions & Contradictions:**
- New users want simplicity vs. Power users want depth → Classic progressive disclosure challenge. Onboarding should be simple, but the product must grow with the user.

**Knowledge Gaps:**
- How do users who successfully onboard differ from those who don't? (Behavioral data needed)
- Is this pattern consistent across different acquisition channels? (Some channels may set better expectations)

**Recommended Next Steps:**
1. Redesign session 2 experience to guide users to core action — Priority: High — Confidence: High — Estimate: 2 weeks design, 3 weeks build
2. Instrument core action completion funnel — Priority: High — Confidence: High — Estimate: 3 days
3. Interview 5 more churned users to validate session 2-3 pattern — Priority: Medium — Confidence: Medium — Estimate: 2 weeks
