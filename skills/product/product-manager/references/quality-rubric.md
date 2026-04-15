# Quality Assessment Rubric — Mode C (Decision Evaluator)

Dùng rubric này khi evaluate PM recommendation (output của mình hoặc của agent/người khác).

---

## 6 Dimensions — Score 1-5

### Product Judgment — "Does this solve a real problem well?"
| Score | Criteria |
|-------|----------|
| 1 | Không identify user problem, hoặc assumed without evidence |
| 2 | Problem stated nhưng vague; không struggling moment, không JTBD |
| 3 | Clear problem + evidence, insight thông thường |
| 4 | Non-obvious insight reframes problem; strong evidence |
| 5 | Insight mà expert cũng surprised + well-supported |

### Taste — "Is this simple, focused, coherent?"
| Score | Criteria |
|-------|----------|
| 1 | Kitchen-sink: cố solve everything, focus on nothing |
| 2 | Multiple loosely connected ideas |
| 3 | Focused nhưng could be simpler |
| 4 | Elegant, matches reality, clear narrative thread |
| 5 | Surprisingly simple cho complex problem; nothing to remove |

### Logic — "Is the reasoning sound?"
| Score | Criteria |
|-------|----------|
| 1 | Conclusion doesn't follow premises; contradictions |
| 2 | Logical nhưng unstated assumptions |
| 3 | Sound reasoning + explicit assumptions |
| 4 | Addresses counterarguments; second-order effects |
| 5 | Non-obvious dependencies; pre-mortem failure modes |

### Data Rigor — "Are metrics well-chosen, experiments well-designed?"
| Score | Criteria |
|-------|----------|
| 1 | Không metrics hoặc vanity only |
| 2 | Metrics present nhưng disconnected from business |
| 3 | Leading + lagging connected to outcomes |
| 4 | Guardrail metrics; experiment has kill criteria |
| 5 | Proxy-validated; tests riskiest assumption first |

### Business Impact — "Does this connect to revenue, retention, or strategic position?"
| Score | Criteria |
|-------|----------|
| 1 | Feature recommendation without business connection |
| 2 | Vague ("will increase engagement") |
| 3 | Specific outcome + rough sizing |
| 4 | Unit economics hoặc competitive positioning |
| 5 | Compounding effects (flywheels, network effects, moats) |

### Execution Realism — "Can this actually be done?"
| Score | Criteria |
|-------|----------|
| 1 | Không timeline, owner, dependencies |
| 2 | Timeline exists but unrealistic; key dependencies missing |
| 3 | Realistic plan + owners + milestones |
| 4 | De-risking strategy + fallback plan |
| 5 | Phased rollout + clear gates between phases |

---

## Anti-Pattern Check (Binary — All Must Pass)

- [ ] Links features to user problems + business outcomes
- [ ] Starts with problem, not solution
- [ ] Uses actionable metrics, not vanity
- [ ] No growth tactics without PMF evidence
- [ ] Tests hypotheses, doesn't advocate
- [ ] Specifies conditions, doesn't just "it depends"

---

## Pass / Fail Criteria

**PASS** khi:
- Average score ≥ 4.0
- No dimension < 3
- All anti-pattern checks pass
- At least 1 falsifiable experiment with kill criteria

**CONCERNS** khi:
- Average 3.0–3.9 hoặc 1 dimension = 2
- Fixable with specific improvements

**FAIL** khi:
- Average < 3.0 hoặc any dimension = 1
- Anti-pattern check fails
- No experiment / no kill criteria

---

## Output Format cho Mode C

```markdown
## Evaluation: [title of recommendation being evaluated]

**Verdict:** PASS / CONCERNS / FAIL

### Scores
| Dimension | Score | Key Reasoning |
|-----------|-------|---------------|
| Product Judgment | X/5 | [1 sentence] |
| Taste | X/5 | [1 sentence] |
| Logic | X/5 | [1 sentence] |
| Data Rigor | X/5 | [1 sentence] |
| Business Impact | X/5 | [1 sentence] |
| Execution Realism | X/5 | [1 sentence] |
| **Average** | **X.X** | |

### Anti-Patterns Detected
[List only detected patterns, or "None detected"]

### Top 3 Improvements
1. [Most impactful fix]
2. [Second]
3. [Third]
```
