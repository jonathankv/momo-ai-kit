---
name: synthesis-writer
description: Write structured synthesis from raw inputs (meeting transcripts, research articles, YouTube, papers).
trigger: |
  TRIGGER when user asks to: synthesize a transcript, write meeting notes, create a synthesis document,
  tổng hợp research/podcast/YouTube. Examples: "viết synthesis cho meeting hôm nay",
  "synthesize transcript này", "tổng hợp research article".
  SKIP when: user wants raw verbatim transcript, quick summary (<200 words), or slide outline
  — those are different jobs.
owner: "@jonathanvu"
status: stable
version: 1.0.0
last_reviewed: 2026-04-15
tags: [synthesis, meeting-notes, research, sensemaking, knowledge-management]
allowed_tools: [Read, Write, Edit, Glob, Grep]
allowed_mcps: [qmd]
icon_color: "#8B5CF6"
default_model: opus
---

# Skill: Synthesis Writer — From Raw Input to Structured Insight

**Author:** Kiên Vũ (Jonathan)

## Purpose

Chuyển raw inputs (meeting transcripts, research articles, YouTube notes, papers) thành structured synthesis documents. Mỗi synthesis phải trả lời: **What happened? So what? Now what?**

> "People actually view effective summarization as strategy." — Anneka Gupta (Lenny's Podcast)

---

## Routing — Xác Định Format Trước Khi Viết

Detect source type từ path hoặc user input → chọn format phù hợp.

```
01-raw-inputs/meetings/*           → Format A (Meeting Synthesis)
01-raw-inputs/research/*           → Format B (Research Synthesis)
01-raw-inputs/youtube/*            → Format C (YouTube/Deep Tutor)
01-raw-inputs/papers/*             → Format B (Research Synthesis)
User explicit request              → Follow user's choice
Ambiguous                          → Hỏi user
```

---

## Pre-Flight Checks (MANDATORY)

Trước khi viết bất kỳ synthesis nào:

1. **Source tồn tại?** Read source file(s). KHÔNG synthesize từ memory/knowledge.
2. **Folder đích?** Xác định đúng folder theo File Routing Table (CLAUDE.md):
   - Meeting → `02-insights/synthesis/meeting-synthesis/synth-{mmmDD-topic}/`
   - Research/Podcast/YouTube → `02-insights/synthesis/research-synthesis/`
3. **Đã có synthesis?** Glob target folder — nếu đã có file → hỏi owner: update hay tạo mới?
4. **Naming convention?** File = `{mmmDD}-{topic}-synthesis.md`. KHÔNG dùng space, KHÔNG dùng underscore.

---

## Format A: Meeting Synthesis

### Template

```markdown
---
title: "{Topic} — {YYYY-MM-DD}"
date: {YYYY-MM-DD}
source: {path-to-transcript}
tags:
  - type:meeting-synthesis
  - meeting-type:{type}
  - person:{name}
  - domain:{domain}
  - project:{project}
  - status:draft
---

## 1. Bối Cảnh
[Meeting goal, tại sao meeting này tồn tại, ai tham gia, bao lâu]

## 2-N. {Topic Sections}
[Tổ chức theo TOPIC, KHÔNG theo timeline — trừ khi meeting có phases rõ ràng]
[Mọi claim phải có quote hoặc line reference]

## N+1. Quyết Định
[MANDATORY khi meeting có decisions được chốt]

| Quyết định | Lý do (Why) | Stakeholders | Review Date |
|------------|-------------|--------------|-------------|
| ... | ... | ... | ... |

## N+2. Insights

### Observations
- [Raw learnings — chuyện gì đã xảy ra]

### Insights
- [Điều này NGHĨA LÀ GÌ? Phải pass "so what" test]
- [Insight không pass "so what" → demote xuống Observation]

### Meta-Insights
- [Điều này có ý nghĩa SYSTEMIC gì?]
- [Chỉ giữ khi có >=2 items thực sự systemic. Nếu mỏng → collapse vào Insights]

## N+3. Tóm Tắt Narrative
[100-200 từ prose. Connect the dots. Force sense-making, KHÔNG chỉ liệt kê.]

## N+4. Action Items

| Ai | Việc | Deadline |
|----|------|----------|
| {Tên cụ thể} | ... | {ngày tuyệt đối / "sớm (cần clarify)" / "—"} |

Rules:
- PHẢI có tên cá nhân cụ thể. "Team" / "ai đó" = KHÔNG hợp lệ → flag "cần clarify owner"
- Deadline: convert relative → absolute. KHÔNG fabricate.
- Phân biệt "không có deadline" (—) vs "quên hỏi" (cần clarify)

## N+5. Key Quotes
> "Quote nguyên văn" — {Người nói}, line {N}

## N+6. Implications cho Kiên
[LUÔN có section này. Trả lời: "so what for me?"]
[Nếu thực sự không có → ghi: "Không có implication trực tiếp — meeting thuần progress tracking"]

## N+7. Câu Hỏi Mở
- [Câu hỏi chưa được trả lời trong meeting]

## N+8. Related Synthesis
- [Auto-generate: grep existing synthesis files có overlap tags/people/project]
```

### "So What" Test — Ví Dụ Pass/Fail

| Insight | Pass/Fail | Lý do |
|---------|-----------|-------|
| "Anh Công muốn skip dependency" | **FAIL** — chỉ là observation | Thiếu "so what": nghĩa là gì cho product workflow? |
| "Anh Công muốn skip dependency → phản ánh chiến lược bottom-up adoption: build tool cho từng người trước, không đợi org sẵn sàng" | **PASS** | Có interpretive layer: observation + meaning + implication |
| "Team thảo luận về prototype" | **FAIL** — quá vague | Thảo luận gì? Kết luận gì? Ảnh hưởng gì? |
| "Team quyết định prototype phải chạy được trên máy mới trong <30 phút → ưu tiên giảm dependencies hơn thêm features" | **PASS** | Có decision + rationale + trade-off rõ ràng |

### Meeting-Type Variations

| Loại meeting | Thêm gì đặc biệt |
|---|---|
| 1:1 coaching | Scorecard, tiered action items (tuần/2 tuần/tháng) |
| Technical review | Decisions table riêng, ASCII diagrams, trade-off analysis |
| Daily standup | Person-by-person breakdown, Risks & Blockers table |
| Debrief/postmortem | Issue grouping (A1-A5, B1-B7), severity rating |
| Strategy | Vision alignment, options analysis (rejected trước, viable sau) |
| Cross-team | Session-by-session summary, layered insights |

Chi tiết variations: `references/format-variations.md`

---

## Format B: Research Synthesis

### Template

```markdown
---
title: "{Topic} — {YYYY-MM-DD}"
date: {YYYY-MM-DD}
source: {path-to-source}
tags:
  - type:research-synthesis
  - domain:{domain}
  - status:draft
---

## TL;DR
[3-5 bullet executive summary]

## 1-N. {Concept/Framework Sections}
[Pattern: Concept → Evidence/Quote → Application cho owner]

## So Sánh
[Khi có nhiều options/frameworks cần so sánh]

## Insights
[2-tier: Observations → Insights → Meta-Insights]

## Tóm Tắt Narrative
[100-200 từ connecting the dots]

## Implications cho Kiên
[LUÔN có]

## Nguồn
[Full attribution với line references]

## Related Synthesis
```

---

## Format C: YouTube/Deep Tutor

Template chi tiết: `references/format-deep-tutor.md`

Core rules:
- Content/Commentary TÁCH BIỆT (Phần A / Phần B)
- Owner voice preserved nguyên văn với `|` prefix — KHÔNG cook lại
- Glossary mỗi cluster (thuật ngữ + giải thích ngắn)
- Critical lens khi source là marketing/PR

---

## Execution Flow

```
[1] User cung cấp source path hoặc content
         │
         ▼
[2] Pre-Flight Checks (4 mục ở trên)
         │
         ▼
[3] Read source file(s) — ĐỌC HẾT, không skip
         │
         ▼
[4] Detect format (A/B/C) từ source path
         │
         ▼
[5] Generate YAML frontmatter (auto-detect tags — xem references/tag-taxonomy.md)
         │
         ▼
[6] Viết synthesis theo template
         │
         ▼
[7] Quality Gates (BẮT BUỘC trước khi present cho owner)
    ├── "So what" test: mọi insight phải pass
    ├── Bias check: không >60% insights từ 1 stakeholder
    ├── Recency check: không >80% insights từ cuối meeting
    ├── Action item check: mọi item có named owner
    ├── Decision check: mọi decision có rationale
    ├── Narrative section: có prose paragraph, không chỉ bullets
    └── Cross-link: Related Synthesis section populated
         │
         ▼
[8] Ghi file vào đúng folder
         │
         ▼
[9] Present cho owner — DỪNG, chờ review
```

---

## Standardization Rules (8 Quyết Định)

| # | Rule | Chi tiết |
|---|------|----------|
| 1 | Heading levels | H2 main sections, H3 sub-sections |
| 2 | Numbering | Arabic (`1.`, `2.`), KHÔNG Roman |
| 3 | Frontmatter | YAML bắt buộc + auto-generate tags |
| 4 | Length | KHÔNG set min/max — do nội dung quyết định |
| 5 | Insight depth | LUÔN extract 2-tier. Collapse meta nếu mỏng |
| 6 | Implications cho Kiên | LUÔN có, không có exception |
| 7 | Review file | MERGE mặc định. Tách khi owner request |
| 8a | Structure | Topic mặc định. Timeline chỉ khi có phases rõ |
| 8b | Deadline handling | Smart extract, KHÔNG fabricate, convert relative → absolute |

Chi tiết từng decision: `03-execution/active/ws-build-synthesis-skill/standardization-decisions.md`

---

## Quality Gates — "So What" Test

Trước khi present synthesis, chạy qua 7 checks:

| # | Check | Nếu fail → |
|---|-------|------------|
| 1 | Mọi insight pass "so what?" | Viết lại hoặc demote xuống Observation |
| 2 | Insight distribution cân bằng | Flag nếu >60% từ 1 người |
| 3 | Recency bias check | Flag nếu >80% từ cuối meeting |
| 4 | Mọi action item có named owner | Flag "cần clarify owner" |
| 5 | Mọi decision có rationale (Why) | Thêm rationale hoặc flag |
| 6 | Có narrative prose section | Viết 100-200 từ paragraph |
| 7 | Related Synthesis populated | Grep existing files, link |

---

## Tag Taxonomy (Tóm Tắt)

6 categories. Full vocabulary: `references/tag-taxonomy.md`

| Category | Type | Ví dụ |
|----------|------|-------|
| `type:` | CLOSED (5) | meeting-synthesis, research-synthesis, youtube-synthesis, papers-synthesis, review |
| `meeting-type:` | CLOSED (9) | 1-on-1, standup, cross-team, technical-review, debrief, strategy, feedback-session, workshop-prep, townhall |
| `domain:` | SEMI-OPEN (11 core) | pm-practice, product-discovery, agent-building, skill-building, ai-native-pm, ... |
| `project:` | OPEN | copenhagen, claude-for-everyone, qlct, prototype-agent, ... |
| `person:` | OPEN | a-cong, ha, hung, karpathy, ... |
| `status:` | CLOSED (4) | draft, pending-review, approved, archived |

Auto-generation rules:
- `type:` — detect từ source path
- `person:` — extract từ transcript, match existing tags
- `domain:` — phân tích content, tối đa 3, rank theo frequency
- `project:` — match keywords với existing projects. KHÔNG tạo tag mới tự động
- `status:` — mặc định `draft`

---

## Guardrails

| KHÔNG làm | Tại sao |
|-----------|---------|
| Synthesize từ memory/knowledge thay vì source file | Source file là ground truth. Knowledge = fabrication risk |
| Merge 2 meetings vào 1 file "tiện thể" | Atomic: 1 synthesis = 1 meeting/topic. Trừ khi owner explicit |
| Bỏ section "Implications cho Kiên" | LUÔN có — miss = lost insight. Cost asymmetry |
| Dùng "team sẽ xử lý" trong action items | PHẢI có tên cá nhân cụ thể |
| Fabricate deadline | Ghi "—" hoặc "cần clarify", KHÔNG tự suy ra |
| Cherry-pick evidence | Balance: check insight distribution across stakeholders |
| Skip narrative prose section | Bullets hide fuzzy reasoning. Prose force sense-making |
| Auto-promote status từ draft | Owner quyết định status transition |
| Tạo file ở sai folder | Follow File Routing Table (CLAUDE.md) |
| Overwrite file cũ không hỏi | Hỏi owner: update hay tạo version mới? |
| Skip "so what" test | Mandatory pre-ship quality gate |

---

## Opportunities Section (Tùy chọn)

Cho strategy/discovery meetings khi insights surface opportunity space:

```markdown
## Opportunities (How Might We)
- HMW {reframe insight thành opportunity}?
- HMW {reframe insight thành opportunity}?
```

Chỉ dùng khi meeting type là `strategy`, `cross-team`, hoặc owner explicit request.

---

## References (Progressive Disclosure)

| File | Nội dung |
|------|----------|
| `references/tag-taxonomy.md` | Full tag vocabulary, naming conventions, auto-generation rules |
| `references/format-variations.md` | Meeting-type specific templates và examples |
| `references/format-deep-tutor.md` | Deep Tutor session template |

Working documents (research artifacts, evidence, decisions log): `03-execution/active/ws-build-synthesis-skill/`
