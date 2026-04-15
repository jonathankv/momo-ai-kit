# Examples — Decision-Making & Experimentation Skill

3 worked examples: simple → standard → complex.

---

## Example 1: Simple Question (Direct Answer)

**User:** "Should I use DACI or RAPID for our product decisions?"

**Output:**

DACI for most product decisions. It's simpler: one Driver (PM), one Approver, Contributors provide input, Informed get updates. RAPID adds complexity with separate Recommend/Agree/Perform roles — reserve it for high-stakes decisions involving compliance, legal, or cross-functional veto authority.

**Verdict:** Start with DACI. Graduate to RAPID only if you need formal veto gates.
**Next Action:** Define DACI roles for your next 3 decisions and see if it resolves your ownership ambiguity.

---

## Example 2: Standard Decision Analysis (Mode A)

**User:** "We're debating whether to build a native mobile app or improve our mobile web experience. We have 100K monthly active users, 60% mobile traffic, strong web engineering team but no mobile devs. Budget for 2 engineers for 6 months."

**Output:**

### Frame
The actual decision: invest 12 person-months in mobile native vs. mobile web, with no existing mobile expertise.

### Classify
- **Reversibility:** Medium. Either path creates 6 months of codebase commitment. Not truly irreversible but costly to switch.
- **Stakes:** High. 60% of traffic affected. Wrong choice = 6 months of suboptimal investment.
- **Information:** ~60%. Missing: mobile web conversion vs. app store benchmark data, user research on mobile pain points.

### Analysis

**Option A: Native App**
- Pro: Better UX potential, push notifications, app store presence
- Con: No mobile expertise (hiring risk), 6-month timeline ambitious for v1, ongoing maintenance burden of 2 codebases
- Second-order: Will need dedicated mobile team long-term. Maintenance cost > build cost.

**Option B: Mobile Web**
- Pro: Leverage existing team strength, single codebase, faster iteration
- Con: Limited push notifications (improving with PWA), no app store discovery
- Second-order: PWA capabilities are expanding rapidly. Gap with native is shrinking.

### Bias Check
- **Anchoring:** Is "native app" the default because competitors have one? Evaluate independently.
- **Sunk cost risk:** Once you start native, 3 months in you'll feel committed regardless of progress.

**Verdict (75% confidence):** Start with mobile web optimization. You have the team, the expertise, and the speed advantage. Design a 4-week experiment: optimize top 3 mobile web pain points, measure conversion impact.

**Key Uncertainty:** If user research reveals that mobile-specific features (offline, camera, notifications) are critical needs — this changes the calculus significantly.

**Next Actions:**
1. Run 10 user interviews focused on mobile usage patterns (1 week)
2. Define top 3 mobile web pain points from analytics (2 days)
3. Set kill criteria: "If mobile web conversion doesn't improve by X% in 8 weeks, revisit native"

---

## Example 3: Complex Reasoning Audit (Mode B)

**User:** "Our CEO wants to pivot our B2B SaaS to also serve SMBs. His reasoning: (1) Our enterprise pipeline is slow — 6-month sales cycles. (2) Competitors like Slack and Zoom started SMB and moved up. (3) Our NPS is 72, so the product is already loved. (4) We have 50 enterprise customers but could get 5,000 SMBs in a year. Therefore we should allocate 40% of engineering to build a self-serve SMB tier."

**Output:**

### Bias Scan

| # | Issue | Severity | Detail |
|---|-------|----------|--------|
| 1 | **Survivorship Bias** | Critical | Citing Slack/Zoom ignores thousands of B2B companies that tried SMB-first and failed. These "success stories" are the survivors. |
| 2 | **False Cause** | Moderate | High NPS with enterprise ≠ product-market fit for SMBs. Enterprise and SMB have fundamentally different needs, pricing sensitivity, and support expectations. |
| 3 | **Hasty Generalization** | Moderate | "5,000 SMBs in a year" — based on what evidence? This needs a bottoms-up analysis, not a top-down aspiration. |
| 4 | **False Dichotomy (implicit)** | Minor | The framing suggests "slow enterprise pipeline" vs "fast SMB growth." But are those the only two options? Could you accelerate enterprise sales instead? |

### Fallacy Check

1. **Evidence sufficient?** NO — NPS applies to current (enterprise) users. No SMB validation.
2. **Logic valid?** PARTIALLY — "competitors did it" is survivorship bias, not a logical argument for your company.
3. **Source relevant?** QUESTIONABLE — Slack/Zoom were built for consumer-like simplicity from day one. Your product was built for enterprise complexity.
4. **Addressing actual point?** YES — but the real question isn't answered: "Do SMBs actually want what we've built?"

### Blind Spots
- **What's the cost of serving two segments?** Engineering split, support complexity, brand dilution, different sales motions
- **What do 10 potential SMB customers say?** No user research cited
- **What happens to enterprise if 40% of engineering shifts?** Second-order effect not considered

**Verdict:** The reasoning has 1 critical flaw (survivorship bias) and 2 moderate issues. The conclusion may still be correct, but the argument as presented doesn't support it. Before committing 40% of engineering:

**Next Actions:**
1. Run 20 SMB discovery interviews (2 weeks). Do they want THIS product?
2. Calculate true cost: what enterprise commitments are delayed by the 40% reallocation?
3. Design a minimum experiment: can you get 50 SMB sign-ups with a landing page + manual onboarding before building self-serve?
4. Set kill criteria: "If <X sign-ups in Y weeks with Z spend, we stop."

**Strongest Counterargument:** If enterprise pipeline is genuinely slowing due to market saturation (not just sales execution), diversifying to SMB may be strategically necessary for survival — but that's a different argument than the one presented.
