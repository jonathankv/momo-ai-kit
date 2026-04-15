# Mental Models — Product Research

Full descriptions of frameworks referenced in SKILL.md. All sourced from Lenny's Podcast corpus with verified citations.

---

## 1. Research Altitude Framework — Judd Antin (Airbnb, Meta)

Three altitude levels:

- **Macro:** Strategic, forward-looking, business-focused. Competitive landscape, TAM studies, innovation opportunities. High impact but slow and expensive.
- **Middle-range:** User understanding questions about specific groups. "How do hosts feel about payment options?" Interesting but often unactionable — yields "we knew that already."
- **Micro:** Usability testing, AB test interpretation, funnel analysis. Fast, cheap, high business value. Can generate millions (see Airbnb button case study).

**Key insight:** Most teams over-invest in middle-range and under-invest in macro and micro. The best researchers balance all three.

**Five Tools of the Researcher:** (1) Formative/generative research, (2) Evaluative research, (3) Rigorous survey design, (4) Applied statistics, (5) SQL/dashboards/data tools.

Source: `episodes/judd-antin/transcript.md` (lines 92-97, 141-148)

---

## 2. Opportunity Solution Tree (OST) — Teresa Torres

A visual tree:
```
Outcome (metric to move)
├── Opportunity 1 (unmet need / pain point / desire)
│   ├── Solution A → Assumption Test
│   └── Solution B → Assumption Test
├── Opportunity 2
│   └── Solution C → Assumption Test
└── Opportunity 3
```

**Critical discipline:** Stay in the problem space. 98% of people write opportunities as solutions. An opportunity is "I need to get to work on time" not "add a bus route."

**Experience maps** structure the opportunity space — map the user's end-to-end journey to surface opportunities at each step.

Source: `episodes/teresa-torres/transcript.md` (lines 105-123)

---

## 3. Continuous Discovery Habits — Teresa Torres

Discovery is not a phase — it runs in parallel with delivery.

**Core cadence:**
- 1 customer interview per week (minimum)
- Automated recruiting via in-product intercepts or internal teams
- Two core activities: qualitative interviewing (map opportunity space) + assumption testing (evaluate solutions)

**Key quote:** "Everything in our backlog is a bet. Whether we do discovery or not, everything is a bet. Discovery is helping us make a better bet."

Source: `episodes/teresa-torres/transcript.md` (lines 246-286)

---

## 4. Four Levels of Product-Market Fit — Todd Jackson (First Round Capital)

PMF is not binary — it progresses through levels:

| Level | Signal | Focus |
|-------|--------|-------|
| Nascent | 3-5 satisfied customers | Satisfaction first, accept inefficiency |
| Developing | Growing demand + retention | Streamline acquisition |
| Strong | Efficient growth + high satisfaction | Scale |
| Extreme | Category-defining | Defend + expand |

**Three dimensions:** Demand, Satisfaction, Efficiency. At early stages, optimize satisfaction and accept inefficiency.

**Four Ps for pivots:** Persona → Problem → Promise → Product. Change one at a time. Lattice changed Problem+Promise+Product but kept Persona (HR leaders) → found PMF.

Source: `episodes/todd-jackson/transcript.md` (lines 192-207, 219-252, 285-300)

---

## 5. Sean Ellis PMF Survey

"How would you feel if you could no longer use this product?"
- Very disappointed
- Somewhat disappointed
- Not disappointed

**40%+ "very disappointed" = leading indicator of PMF** (confirmed at line 97).

**Key follow-up:** Drill into the "very disappointed" segment:
- Who are they? (demographics, use case)
- What's the primary benefit?
- Why does that benefit matter?

**Ignore "somewhat disappointed"** — they indicate nice-to-have, not must-have.

**Case study — Lookout:** Started at 7%. Analyzed the 7%: all focused on antivirus. Repositioned on antivirus, streamlined onboarding. Hit 40% in 2 weeks, 60% at 6 months. Eventually became a unicorn.

Source: `episodes/sean-ellis/transcript.md` (lines 84-86, 97, 117-124)

---

## 6. Forces of Progress (JTBD) — Bob Moesta

Four forces governing behavior change:

```
CHANGE FORCES          vs    RESISTANCE FORCES
F1: Push of situation  ←→    F3: Anxiety of the new
F2: Pull of new        ←→    F4: Habit of the present
```

**If F1+F2 ≤ F3+F4 → no behavior change.** Reducing friction (F3/F4) often works better than adding features (F2).

**Key insight:** "Context makes the irrational rational." The struggling moment creates demand — supply and demand are not as connected as people think.

**Attribution note:** "A kick-ass half is better than a half-ass whole" — Jason Fried, quoted by Bob Moesta.

Source: `episodes/bob-moesta/transcript.md` (lines 127-133, 463)

---

## 7. Three Bs of Behavior Change — Kristen Berman (Irrational Labs)

1. **Behavior:** Define the specific action you want changed. Get "uncomfortably specific." Not "save more money" but "auto-transfer $50 on payday."
2. **Barriers:** Reduce both logistical friction AND cognitive barriers (uncertainty aversion, status quo effect).
3. **Benefits:** Increase immediate benefits. Present bias means people need a reason to act today, not in the future.

**Behavioral diagnosis:** Map every step required to do the target behavior BEFORE building. The FinTech budgeting feature failed because it required: know budget → know where in month → make plan → execute repeatedly. Too many cognitive steps.

**Case study — TikTok:** Added friction to sharing misinformation (label + "Are you sure?" popup). Reduced shares by 24%.

Source: `episodes/kristen-berman/transcript.md` (lines 103-107, 202-259, 319-343)

---

## 8. Story-Based Interviewing — Teresa Torres

**Instead of:** "What do you like about Netflix?"
**Ask:** "Tell me about the last time you watched something on Netflix."

**Follow the timeline:** "Set the scene. What happened next? And then?"

**Signs of a good interview:**
- Feels like having a beer with a buddy
- User says "When can we do this again?"
- You hear needs the user isn't aware of

**Signs of a bad interview:**
- Feels like an interrogation
- 50-question protocol
- Staying surface-level, never following up

Source: `episodes/teresa-torres/transcript.md` (lines 174-198, 381-450)

---

## 9. Reference Customer Technique — Christian Idiodi (SVPG)

Find real people with the problem. Immerse yourself in their environment. Don't leave until you solve it.

**Targets:**
- B2B: 6-8 reference customers
- B2C: 15-25 reference customers

These people love the product enough to put their reputation on the line. Launch day should already have references ready.

**Key quote:** "I have never had a product failure using this technique."

**Important distinction:** "Just because somebody can use your product doesn't mean they will buy it. Just because they can use it doesn't mean they will choose it."

Source: `episodes/christian-idiodi/transcript.md` (lines 135-171)

---

## 10. GIST Model — Itamar Gilad (ex-Google)

Goals → Ideas → Steps → Tasks.

- **Goals:** Defined via metrics trees (North Star Metric for user value + Top KPI for business value)
- **Ideas:** Hypothetical ways to achieve goals — scored by confidence level
- **Steps:** Build-measure-learn loops that validate ideas
- **Tasks:** Delivery execution

**Counter to opinion-based development.** Gmail Tabbed Inbox (evidence-guided) succeeded spectacularly. Google+ (opinion-based, 1000-person team) failed completely.

Source: `episodes/itamar-gilad/transcript.md` (lines 60-99, 117, 174, 204-219)

---

## 11. User-Centered Performance — Judd Antin

Customer obsession that is symbolic rather than focused on learning:
- Check-the-box research at end of process
- Executive listening sessions that don't change decisions
- "Can you just run a quick user study to validate?"

**Detection:** Research is commissioned after decisions are made. PM not genuinely open to being wrong.

**Reframe:** "We don't validate, we falsify."

Source: `episodes/judd-antin/transcript.md` (lines 39, 201-210)

---

## 12. Behavioral Diagnosis — Kristen Berman

Before building any feature, map out every single step required to do the target behavior.

**Example:** FinTech app's most-requested feature was budgeting. After 10,000-person experiment: zero impact on spending. Behavioral diagnosis revealed too many steps: know budget → know where in month → make plan → execute repeatedly.

**Lesson:** "What people say is often different from what they do."

Source: `episodes/kristen-berman/transcript.md` (lines 103-107)

---

## Case Studies Index

| Case Study | Guest | Key Lesson | Source |
|-----------|-------|------------|--------|
| Airbnb Multimillion-Dollar Button | Judd Antin | Micro research → 7 characters → millions in revenue | `episodes/judd-antin/transcript.md:285-288` |
| Facebook Super Hiders | Judd Antin | N=1 observation changed engineering signal model | `episodes/judd-antin/transcript.md:432-445` |
| Vanta's Origin | Todd Jackson | Manual solution → PMF before product exists | `episodes/todd-jackson/transcript.md:228-252` |
| Lattice Pivot | Todd Jackson | Four Ps pivot: change Problem, keep Persona | `episodes/todd-jackson/transcript.md:285-300` |
| Lookout PMF | Sean Ellis | 7% → 40% via segment analysis + repositioning | `episodes/sean-ellis/transcript.md:117-124` |
| FinTech Budgeting | Kristen Berman | Most-requested ≠ most-impactful | `episodes/kristen-berman/transcript.md:103-107` |
| TikTok Misinformation | Kristen Berman | Friction reduces unwanted behavior by 24% | `episodes/kristen-berman/transcript.md:319-343` |
| Gmail Tabs vs Google+ | Itamar Gilad | Evidence-guided vs opinion-based development | `episodes/itamar-gilad/transcript.md:60-99` |
| Southern NH University | Bob Moesta | JTBD anomalies → 200K+ student program | `episodes/bob-moesta/transcript.md:100-103` |
