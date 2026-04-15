# Format C: Deep Tutor Session Template

> Reference file cho synthesis-writer skill. Deep Tutor = doc article/video/book cung Claude, co dialogue owner.

---

## Template Per Cluster

```markdown
---
title: "{Source Title} — Cluster {N} (Chapters X-Y)"
date: {YYYY-MM-DD}
source: {path-to-source}
tags:
  - type:youtube-synthesis
  - domain:{domain}
  - person:{author}
  - status:draft
---

## Cluster {N}: {Title} (Chapters X-Y)

### "{Author} noi gi"

#### {Concept 1}
[Content summary — what the author actually said]
[Inline quotes voi line references]

#### {Concept 2}
...

### "Goc Nhin Cua Toi"
1. {Observation 1 — owner's perspective}
2. {Observation 2}
3. {Observation 3}

### Bang Thuat Ngu Cum {N}

| Thuat ngu | Giai thich | Context |
|-----------|-----------|---------|
| ... | ... | ... |

### Owner Dialogue
[Preserved nguyen van voi | prefix]

| Owner: "cau hoi hoac comment cua owner"
| Claude: "tra loi cua Claude"
```

---

## Overall Synthesis (Cuoi Series)

Khi da doc het toan bo source, viet 1 file tong hop:

```markdown
## Soi Chi Xuyen Suot
[Central thread cua toan bo source — 1 paragraph]

## Buc Tranh Theo {N} Tang

### Tang 1: {Label}
...

### Tang 2: {Label}
...

## Cang Thang Chua Giai Quyet
- {Tension 1 — dieu author chua lam ro hoac tu mau thuan}
- {Tension 2}

## Noi Voi Ban (Connection to Owner's Work)
- {How this connects to owner's current projects/decisions}

## Implications cho Kien
[LUON co — same rule as other formats]
```

---

## Rules Dac Biet Cho Deep Tutor

1. **Content/Commentary TACH BIET** — Phan A (author noi gi) va Phan B (owner nghi gi) khong duoc tron lan
2. **Owner voice preserved nguyen van** — dung `|` prefix, KHONG cook lai, KHONG paraphrase
3. **Glossary moi cluster** — thuat ngu + giai thich ngan. Giup owner review lai ma khong can doc lai source
4. **Critical lens** — khi source la marketing/PR (khong phai peer-reviewed), flag ro: "Source nay la {marketing/opinion/anecdotal}, khong phai research"
5. **Multiple drafts OK** — neu owner yeu cau rewrite, giu ca 2 versions (v1, v2), khong overwrite
