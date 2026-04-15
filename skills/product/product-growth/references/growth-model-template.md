# Growth Model Template — Mode B Reference

Use this template when mapping growth loops and building a growth model.

---

## Step 1: Qualitative Loop Map

For each growth loop, document:

```
LOOP NAME: [e.g., Sharing Loop]
TYPE: Earned / Rented / Hybrid
TRIGGER: What user action starts the loop?
MECHANISM: How does that action lead to new users or more engagement?
FEEDBACK: How does the output feed back into the input?
STRENGTH: Strong / Medium / Weak (estimate)
STATUS: Active / Dormant / Planned
```

### Common Loop Types
- **Viral/Sharing**: User uses product → shares output → recipient sees product → signs up
- **UGC/Content**: User creates content → content indexed/shared → new users find it → sign up
- **Referral**: User invites friend → friend signs up → inviter rewarded → invites more
- **Paid reinvestment**: Revenue → reinvest in paid acquisition → more revenue
- **SEO/Content marketing**: Create content → Google indexes → organic traffic → conversion
- **Sales-assist**: Free user → shows value to team → sales closes org deal → more free users
- **Network effect**: More users → better experience → higher retention → more users (platform only)

---

## Step 2: Race Car Categorization

Categorize every growth initiative:

| Category | Description | Examples | Time Horizon |
|----------|-------------|----------|-------------|
| **Engines** (loops) | Self-sustaining, spin continuously | Viral sharing, UGC library, referral program | Ongoing |
| **Fuel** (variable spend) | Requires continuous investment | Paid ads, sales team, events | Ongoing (stops when spend stops) |
| **Turbo** (one-time boosts) | Temporary acceleration | Product launch, PR hit, partnership | One-time |
| **Oil** (optimizations) | Reduce friction, improve efficiency | Onboarding A/B tests, conversion optimization | One-time effect |

### Assessment Questions
1. What % of growth comes from Engines vs Fuel? (Engines > 50% = healthy)
2. If we stop all Fuel spending, what happens in 30/90 days?
3. When was the last new Engine introduced? (>18 months ago = flag)
4. How much team time goes to Oil vs building new Engines? (>75% Oil = flag)

---

## Step 3: Growth Model Components (Spreadsheet)

### For SaaS:
```
Acquisition: Channel → Traffic → Conversion Rate → New Users
Activation: New Users → Setup Rate → Aha Rate → Habit Rate → Activated Users
Retention: Activated Users × Monthly Retention Rate → Active User Base (stacking)
Monetization: Active Users × Conversion to Paid × ARPU → Revenue
Loops: Active Users × Referral Rate → New Users (feeds back to Acquisition)
```

### For Marketplace (additional):
```
Supply Acquisition: Supply channels → New Suppliers → Activated Suppliers
Supply-Demand Interaction: More supply → better match → higher demand conversion
  (WARNING: This interaction is hard to model. Use qualitative assessment first.)
Unit Economics: GMV × Take Rate - COGS → Contribution Margin
```

### For AI Products (adjustments):
```
Activation: May be instant (no setup phase). Focus on "wow moment" instead.
Retention: Usage-based, not subscription-based. Track active usage, not just login.
Monetization: Usage-based pricing. Track cost-to-serve per user.
Loops: Build-in-public + social sharing may dominate. 95% innovation budget.
```

---

## Step 4: Output Format

```markdown
## Growth Model: [Product Name]

### Active Loops
1. [Loop 1]: [type] — [strength] — [status]
2. [Loop 2]: ...

### Race Car Assessment
- Engines: [list + % of growth]
- Fuel: [list + monthly spend]
- Turbo: [upcoming one-time boosts]
- Oil: [current optimization efforts]

### Health Indicators
- Engine/Fuel ratio: [X%/Y%] → [healthy/at risk]
- Last new engine introduced: [date] → [OK/>18 months flag]
- Channel concentration: [top channel %] → [OK/>50% flag]
- Earned/Rented ratio: [X%/Y%] → [OK/<30% earned flag]

### Recommendations
1. [Priority 1]
2. [Priority 2]
3. [Priority 3]
```
