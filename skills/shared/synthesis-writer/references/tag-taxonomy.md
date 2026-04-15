# Tag Taxonomy — Synthesis YAML Frontmatter

> Derived from 41 existing synthesis files (2026-04-10 scan). Status: ✅ OWNER APPROVED (2026-04-11) — all 6 design decisions confirmed.
>
> Purpose: Define tag vocabulary cho YAML frontmatter (decision #3 — frontmatter bắt buộc + auto-generate tags).

---

## 1. Thiết kế tổng thể

### 1.1. Flat taxonomy với prefix namespace

Dùng flat list tags với **prefix namespace** để phân biệt category:

```yaml
tags:
  - type:meeting-synthesis
  - meeting-type:1-on-1
  - person:a-cong
  - domain:agent-building
  - project:qlct
  - status:pending-review
```

**Lý do flat + prefix:**
- Đơn giản hơn nested YAML — dễ grep, dễ filter
- Prefix giữ semantic (biết tag thuộc category nào)
- Tương thích với mọi tag search tool (không cần custom parser)
- Dễ extend: thêm category mới chỉ cần thêm prefix

### 1.2. Closed vs Open vocabulary

| Category | Closed/Open | Lý do |
|---|---|---|
| `type:` | **CLOSED** | 4 giá trị cố định (meeting/research/youtube/papers) |
| `meeting-type:` | **CLOSED** | 9 giá trị đã cover được 100% meetings trong 41 files |
| `domain:` | **SEMI-OPEN** | Core set cố định, có thể thêm mới khi gặp domain mới |
| `project:` | **OPEN** | Projects sinh ra/kết thúc liên tục, không thể enumerate |
| `person:` | **OPEN** | Người mới join team, thought leaders mới |
| `status:` | **CLOSED** | 4 giá trị: draft / pending-review / approved / archived |

**Rule cho SEMI-OPEN / OPEN:** Tag mới phải follow naming convention (kebab-case, không dấu, không space) — xem section 7.

### 1.3. Required vs Optional

| Tag | Required | Ghi chú |
|---|---|---|
| `type:*` | ✅ Required | Mỗi synthesis phải có đúng 1 |
| `meeting-type:*` | 🟡 Conditional | Required khi `type:meeting-synthesis`, bỏ qua cho loại khác |
| `domain:*` | ✅ Required | Ít nhất 1, tối đa 3 |
| `project:*` | 🟡 Conditional | Required nếu synthesis liên quan đến project cụ thể |
| `person:*` | 🟡 Conditional | Required cho meeting-synthesis (người tham gia). Optional cho research-synthesis (thought leader nguồn) |
| `status:*` | ✅ Required | Mỗi synthesis phải có đúng 1 |

---

## 2. `type:` — CLOSED vocabulary

| Tag | Khi nào dùng | Count hiện tại |
|---|---|---|
| `type:meeting-synthesis` | Synthesis từ meeting transcript, 1:1, standup, debrief, workshop prep | 27 |
| `type:research-synthesis` | Synthesis từ research article, podcast, decision-support analysis | 7 |
| `type:youtube-synthesis` | Synthesis từ YouTube video/talk, có cluster/chapter structure | 6 |
| `type:papers-synthesis` | Synthesis từ academic paper, whitepaper, technical doc | 1 |
| `type:review` | Meta-document review/critique một synthesis khác | 5 |

**Rule:** Một file chỉ có 1 tag `type:`. Nếu hybrid (vd: meeting + research findings) → chọn type chính, note phần còn lại trong metadata khác.

---

## 3. `meeting-type:` — CLOSED vocabulary

Chỉ dùng khi `type:meeting-synthesis`.

| Tag | Definition | Count |
|---|---|---|
| `meeting-type:1-on-1` | Meeting 2 người, thường là coaching/catchup với leadership hoặc peer | 3 |
| `meeting-type:standup` | Daily sync, progress tracking, không phải discussion chính | 2 |
| `meeting-type:cross-team` | Meeting có ≥2 team khác nhau tham gia | 5 |
| `meeting-type:technical-review` | Technical discussion (layout rules, rendering, architecture) | 4 |
| `meeting-type:debrief` | Post-event debrief, retrospective, lesson-learned | 4 |
| `meeting-type:strategy` | Strategic discussion, vision alignment, roadmap | 3 |
| `meeting-type:feedback-session` | Thu thập feedback từ users/educators/stakeholders | 2 |
| `meeting-type:workshop-prep` | Prep content/agenda cho workshop/teaching session | 3 |
| `meeting-type:townhall` | Large-group meeting, all-hands, panel discussion | 2 |

**Rule:** Một meeting có thể có nhiều meeting-type nếu thực sự overlap (ví dụ: `cross-team` + `strategy`). Giới hạn tối đa 2.

---

## 4. `domain:` — SEMI-OPEN vocabulary

Core set (đã covered ≥2 files). Có thể thêm tag mới nếu gặp domain chưa có.

| Tag | Scope | Count |
|---|---|---|
| `domain:pm-practice` | Product management methodology, PM frameworks, spec writing | 8 |
| `domain:product-discovery` | User research, JTBD, hypothesis validation, discovery workflow | 7 |
| `domain:agent-building` | Multi-agent systems, orchestration, team architecture, skill building | 7 |
| `domain:skill-building` | Building Claude skills, workshop teaching, Claude literacy | 6 |
| `domain:ai-native-pm` | AI-first product development, full-stack builder concept | 5 |
| `domain:technical-implementation` | Code quality, rendering, SSR, deployment, infrastructure | 5 |
| `domain:prototype-kit` | MoMo Prototype Kit, component hierarchy, layout rules | 4 |
| `domain:workshop-teaching` | Course design, teaching methodology, educator feedback | 4 |
| `domain:automation-efficiency` | Auto research, task automation, dependency elimination | 4 |
| `domain:design-system` | UI/UX patterns, design-to-code, design tokens | 3 |
| `domain:growth` | Growth strategy, experimentation, metric-driven development | 3 |

**Rule thêm tag mới:** Nếu gặp file không fit core set, đề xuất tag mới trong synthesis, flag "new domain tag proposed" để owner review và add vào taxonomy.

---

## 5. `project:` — OPEN vocabulary

Projects hiện active hoặc có synthesis reference:

| Tag | Scope | Count |
|---|---|---|
| `project:copenhagen` | External design sprint collaboration (mar20 → mar30) | 7 |
| `project:claude-for-everyone` | Workshop series Claude literacy cho MoMo, 4 files | 4 |
| `project:qlct` | Quan Ly Chi Tieu — agentic discovery pilot product | 3 |
| `project:prototype-agent` | momo-prototype-kit multi-agent system | 2 |
| `project:agentic-discovery` | Product discovery workflow automation | 2 |
| `project:ai-product-panel` | Governance forum standardizing AI in product | 2 |
| `project:synthesis-skill` | (Meta) Workspace đang build — sẽ tag các review liên quan | 1 |
| `project:mmds-corpus` | MoMo Design System corpus restructure | 0 (từ memory) |
| `project:kit-launch` | Prototype Kit rollout starting 2026-04-07 | 0 (từ memory) |
| `project:growth-audit` | Product Growth audit cho MoMo | 0 (từ memory) |

**Rule:** Project tag PHẢI match với workspace folder name hoặc project memory entry (project_*.md). KHÔNG tạo tag project adhoc.

---

## 6. `person:` — OPEN vocabulary

### 6.1. MoMo internal team

| Tag | Role context | Count |
|---|---|---|
| `person:a-cong` | CPO, strategy/vision input | 6 |
| `person:ha` | PM team, class participant | 4 |
| `person:hung` | Layout rules, discovery work | 3 |
| `person:linh` | QLCT, agentic discovery, LNOD | 3 |
| `person:loc` | Agent team lead | 2 |
| `person:khanh` | Workshop debrief, C4E | 2 |
| `person:thao` | QLCT team | 2 |
| `person:ninh` | AI Product Panel | 2 |
| `person:dung` | Engineer, Kit design system | 1 |
| `person:vinh` | Layout rules | 1 |
| `person:tuong` | Cross-team sync | 1 |
| `person:tin` | AI Product Panel | 1 |

### 6.2. External thought leaders

| Tag | Source context | Count |
|---|---|---|
| `person:karpathy` | YouTube talks, AI research | 6 |
| `person:tomer-cohen` | LinkedIn CPO, full-stack builder concept | 1 |
| `person:lenny` | Podcast host, PM thought leader | 1 |
| `person:tommy` | AI-native PM approach | 2 |
| `person:ramp-jeff` | Ramp CPO, AI-native company organizational model | 1 |

**Rule naming:**
- MoMo internal: `person:{ten-khong-dau}` (VD: `a-cong`, `ha`, `hung`)
- Nếu trùng tên → thêm last name hoặc team: `person:linh-qlct`, `person:linh-lnod`
- External: `person:{first-last}` kebab-case (VD: `tomer-cohen`, `karpathy`)
- KHÔNG include `person:kien` — Kiên là owner, có trong mọi file, redundant

---

## 7. `status:` — CLOSED vocabulary

| Tag | Khi nào dùng |
|---|---|
| `status:draft` | Synthesis đang viết, chưa đủ insights |
| `status:pending-review` | Đã viết xong, chờ owner hoặc AI review |
| `status:approved` | Owner đã review, không còn pending action |
| `status:archived` | Synthesis outdated (project đã ship, context đã move on) |

**Rule:** Mọi synthesis mới tạo default `status:draft`. Chuyển sang `pending-review` khi hoàn chỉnh. Không bỏ qua state.

---

## 8. Naming convention cho tag mới (OPEN/SEMI-OPEN)

Khi thêm tag mới vào `domain:`, `project:`, `person:`:

1. **Kebab-case** — `agent-building`, không `agentBuilding` hay `agent_building`
2. **No accents** — `a-cong` không `a-công` (follow memory rule: không viết tiếng Việt không dấu TRONG nội dung, nhưng tag dùng kebab không dấu vì tooling)
3. **Singular** — `domain:agent-building` không `agents-building`
4. **Specific nhưng không quá granular** — `domain:pm-practice` OK, `domain:pm-practice-for-b2b-saas-companies` quá hẹp
5. **No redundant prefix** — tag sau prefix không được lặp prefix: `domain:pm-practice` ✅, `domain:pm-domain` ❌
6. **Match existing khi overlap** — check taxonomy trước, KHÔNG tạo synonym (`domain:agents` nếu đã có `domain:agent-building`)

---

## 9. YAML frontmatter template chuẩn

```yaml
---
title: "Copenhagen SSR Format Discussion — 2026-03-24"
date: 2026-03-24
source: 01-raw-inputs/meetings/mar24-copenhagen-meetup/transcript.md
tags:
  - type:meeting-synthesis
  - meeting-type:technical-review
  - person:a-cong
  - person:dung
  - person:vinh
  - domain:prototype-kit
  - domain:design-system
  - domain:technical-implementation
  - project:copenhagen
  - project:prototype-agent
  - status:pending-review
---
```

**Required fields:** `title`, `date`, `source`, `tags`.
**Optional fields:** `participants` (nếu cần explicit list ngoài tag), `meeting-duration`, `linked-synthesis` (cho review files).

---

## 10. Auto-generation rules (cho skill implement sau)

Skill khi viết synthesis nên:

1. **`type:`** — auto-detect từ source path:
   - `01-raw-inputs/meetings/*` → `type:meeting-synthesis`
   - `01-raw-inputs/research/*` → `type:research-synthesis`
   - `01-raw-inputs/youtube/*` → `type:youtube-synthesis`
   - `01-raw-inputs/papers/*` → `type:papers-synthesis`

2. **`person:`** — extract tên từ transcript, match với existing `person:` tags. Nếu tên mới → propose tag + ask owner confirm.

3. **`domain:`** — analyze content, match với core set. Tối đa 3 domains, rank theo frequency mention trong content.

4. **`project:`** — match keywords với existing projects (từ memory + workspace folders). KHÔNG tạo tag mới tự động — flag để owner confirm.

5. **`status:`** — mặc định `draft` khi tạo, skill KHÔNG auto-promote status.

6. **`meeting-type:`** — analyze cấu trúc transcript + participant count + duration → classify. Fallback: hỏi owner nếu ambiguous.

---

## 11. Migration cho 41 files hiện tại

**Decision: KHÔNG backfill tags cho files cũ.**

**Lý do:**
- Tag taxonomy là forward-looking, áp dụng cho synthesis mới từ Phase 5 ship skill trở đi
- Backfill 41 files không mang lại value tương xứng (files cũ đã serve purpose, không ai query qua tags)
- Nếu cần backfill sau, có thể batch với script riêng

**Chỉ backfill khi:** Owner explicit yêu cầu, hoặc có use case query cần tags (ví dụ: build dashboard filter by tag).
