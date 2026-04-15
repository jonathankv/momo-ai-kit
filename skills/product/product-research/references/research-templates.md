# Research Templates — Product Research

Templates for Mode A (Research Planning) and Mode B (User Research).

---

## 1. Research Plan Template

```markdown
# Research Plan: [Product/Feature Name]

## Research Question
- Primary: [What do we need to learn?]
- Secondary: [Supporting questions]

## Business Context
- Decision this research informs: [specific decision]
- Cost of being wrong: [High/Medium/Low + explanation]
- Timeline: [when decision must be made]

## Methodology
- Type: [Qualitative / Quantitative / Mixed]
- Method: [Interviews / Survey / Usability test / Competitive analysis / etc.]
- Altitude: [Macro / Middle-range / Micro] (per Judd Antin's framework)

## Participants
- Target: [who, how many]
- Recruiting: [in-product intercept / panel / internal / cold outreach]
- Screening criteria: [must-have characteristics]

## Study Design
- Duration: [per session + total timeline]
- Questions/tasks: [see interview guide or test plan]
- Success criteria: [what would make us change direction?]

## Analysis Plan
- Framework: [OST / Forces of Progress / Three Bs / other]
- Deliverable: [insight report / opportunity map / recommendation]
- Stakeholders: [who gets the output]

## Falsification Check
- What would prove our hypothesis WRONG?
- Are we designed to find disconfirming evidence?
```

---

## 2. Story-Based Interview Guide Template

Based on Teresa Torres's methodology.

```markdown
# Interview Guide: [Topic]

## Setup (2 min)
- Thank participant
- "I'm interested in understanding your experience with [area]. There are no right or wrong answers."
- "I'll mostly ask you to tell me stories about specific experiences."

## Warm-Up Story (5 min)
- "Tell me about the last time you [relevant behavior]."
- Follow-up: "Set the scene for me. Where were you? What were you doing?"
- Follow-up: "What happened next?"

## Core Stories (15-20 min)
Pick 2-3 of these story prompts (adapt to topic):

1. "Tell me about a time when [behavior] was particularly frustrating."
2. "Tell me about the most recent time you [switched/tried/stopped] [behavior]."
3. "Walk me through your typical [process/routine] from start to finish."

For each story:
- Timeline prompts: "And then what happened?" "What did you do next?"
- Context prompts: "Why did you do it that way?" "What were you thinking at that point?"
- Emotion prompts: "How did that feel?" "What was going through your mind?"

## Forces of Progress Probes (5 min)
If switching behavior detected:
- F1 (Push): "What was happening that made you look for something different?"
- F2 (Pull): "What attracted you to [new solution]?"
- F3 (Anxiety): "What worried you about trying [new thing]?"
- F4 (Habit): "What made it hard to stop doing [old thing]?"

## Wrap-Up (3 min)
- "Is there anything about [topic] that I should have asked about but didn't?"
- "Would you be open to a follow-up conversation?"

## Notes for Interviewer
- DO: Follow stories, ask "what happened next," be curious
- DON'T: Ask "why" directly (triggers rationalization), ask leading questions, share your opinions
- WATCH FOR: Moments of struggle, workarounds, emotional peaks
```

---

## 3. PMF Survey Template (Sean Ellis Test)

```markdown
# PMF Survey: [Product Name]

## Core Question
How would you feel if you could no longer use [product]?
- Very disappointed
- Somewhat disappointed
- Not disappointed

## Follow-Up (for "Very Disappointed" segment)
1. What is the primary benefit you get from [product]?
2. What type of person do you think would benefit most from [product]?
3. How can we improve [product] for you?

## Follow-Up (for "Not Disappointed" segment)
1. Why wouldn't you miss [product]?
2. What alternative would you use instead?

## Analysis Framework
- Target: 40%+ "Very disappointed" = PMF indicator
- Segment the "Very disappointed" users:
  - Demographics / role / use case
  - Common primary benefit
  - Common improvement requests
- If < 40%: Narrow to the "Very disappointed" segment. Reposition product around their use case.

## Reference: Lookout Case Study
Started 7% → analyzed the 7% → all focused on antivirus → repositioned → hit 40% in 2 weeks.
```

---

## 4. Competitive Analysis Template

```markdown
# Competitive Analysis: [Category]

## Landscape Map
| Competitor | Positioning | Target User | Key Strength | Key Weakness |
|-----------|-------------|-------------|-------------|--------------|
| [Name] | [1-line] | [who] | [what] | [what] |

## Differentiation Axes
Identify 3-5 axes that matter to users (not just features):
- Axis 1: [e.g., Speed vs Comprehensiveness]
- Axis 2: [e.g., Self-serve vs White-glove]
- Axis 3: [e.g., SMB vs Enterprise]

## Value Curve
Plot competitors against each axis (1-5 scale).
Identify: where is the gap? Where does everyone cluster?

## Strategic Implications
- Where we can win: [underserved axis/segment]
- Where we should NOT compete: [crowded axis]
- Emerging threats: [new entrants, substitutes]
```

---

## 5. Behavioral Diagnosis Template (Kristen Berman)

Use BEFORE building any feature based on user requests.

```markdown
# Behavioral Diagnosis: [Feature/Behavior]

## Target Behavior
Define specifically: [not "save money" but "auto-transfer $50 on payday"]

## Step Map
List EVERY step required for user to complete target behavior:
1. [Step 1] — Barrier type: [logistical / cognitive / emotional]
2. [Step 2] — Barrier type: [...]
3. [Step N] — ...

## Barrier Analysis
For each step with high friction:
- What could go wrong?
- What's the cognitive load?
- Status quo effect: what's the user doing today instead?

## Three Bs Assessment
- Behavior: Is the target behavior specific enough?
- Barriers: Which barriers can we reduce/remove?
- Benefits: What immediate benefit does the user get?

## Verdict
- Total steps: [N]
- High-friction steps: [N]
- Likely completion rate: [estimate]
- Recommendation: [build / redesign / don't build]
```

---

## 6. Assumption Testing Template (Teresa Torres)

```markdown
# Assumption Test: [Solution/Opportunity]

## Assumption Statement
"We believe that [user segment] will [behavior] because [reason]."

## Test Type
- [ ] Prototype test (desirability)
- [ ] Smoke test (demand)
- [ ] Wizard of Oz (feasibility)
- [ ] Data mining (existing behavior)
- [ ] One-question survey (quick signal)

## Success Criteria (define BEFORE testing)
- Signal to proceed: [specific metric/outcome]
- Signal to pivot: [specific metric/outcome]
- Signal to kill: [specific metric/outcome]

## Results
- Outcome: [proceed / pivot / kill]
- Evidence: [what we observed]
- Surprise: [what we didn't expect]
- Next assumption to test: [if proceeding]
```
