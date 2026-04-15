# Mental Models — Verified From Lenny's Podcast Corpus

Mỗi model đã được spot-check trực tiếp trong transcript gốc. Citation format: `path` L{line_number}.

Verification status: ✅ = verbatim or near-verbatim match, ⚠️ = accurate paraphrase (ý đúng, lời khác)

---

## Problem Framing

### "Fall in love with the problem, not the solution"
**Source:** Uri Levine, Waze co-founder
**Citation:** `episodes/uri-levine/transcript.md` L43
**Verification:** ✅ Verbatim — "Fall in love, fall in love, fall in love, fall in love with the problem"
**Application:** Khi bạn hoặc user bắt đầu bằng solution, quay lại hỏi: "Problem là gì? Ai đang suffer? Bao nhiêu người?"

### Eigenquestions
**Source:** Shishir Mehrotra, Coda CEO / ex-YouTube
**Citation:** `episodes/shishir-mehrotra/transcript.md` L330, L363, L402
**Verification:** ✅ Extensive discussion với YouTube và Apple examples
**Definition:** Khi có nhiều câu hỏi, rank theo: câu nào, khi trả lời, loại bỏ được nhiều câu hỏi khác nhất. Đó là eigenquestion.
**Application:** Dùng khi team đang debate nhiều direction — thay vì vote, tìm eigenquestion.
**Example from transcript (L402):** Shishir dùng với self-driving car: "Is it safe enough for humans?" — trả lời câu này eliminate hầu hết câu hỏi khác.

### Understand → Identify → Execute
**Source:** Bangaly Kaba, ex-Facebook/Instagram Growth
**Citation:** `episodes/bangaly-kaba/transcript.md` L49, L253
**Verification:** ✅ Verbatim — "identify, justify, execute... understand, identify, execute."
**Context:** Bangaly credits framework này cho Facebook. Bản thân anh ấy focus vào "understand work" — đầu tư thời gian hiểu rõ trước khi identify opportunity.
**Application:** Khi ai đó nói "ta nên build X" → hỏi "ta đã understand problem space chưa? Evidence nào?"

---

## Decision Making

### Discover async → Discuss sync → Decide separately
**Source:** Annie Duke
**Citation:** `episodes/annie-duke/transcript.md` L208-220
**Verification:** ✅ Concept rõ ràng, "forced ranking" mentioned
**Detail:** KHÔNG discover opinions trong meeting (groupthink risk). Trước meeting: mỗi người independent forced-rank options + viết rationale. Meeting: chỉ discuss disagreements. Quyết định: sau meeting, bởi decision-maker.
**Application:** Khi cần team input cho product decision, yêu cầu async forced ranking trước khi họp.

### Dig deeper before accepting trade-offs
**Source:** Will Larson
**Citation:** corpus-derived (⚠️ paraphrase, không có verbatim quote duy nhất)
**Detail:** Hầu hết apparent trade-offs tan khi hiểu true needs của mỗi bên. Win-win thường tồn tại, chỉ cần work harder.
**Application:** Khi thấy "we can have A or B, not both" → hỏi "true need behind A là gì? Behind B?"

### Believe 100% until data says no, then switch 100%
**Source:** Gustav Söderström, Spotify CPO
**Citation:** `episodes/gustav-söderström/transcript.md` L340
**Verification:** ✅ Verbatim — "You have to believe in things 100% until the data says no and then you believe in something else 100%."
**Context:** Nói trong context Spotify home redesign — team invest lớn nhưng khi data nói sai, phải unemotional và pivot. Lenny gọi đây là "strong opinions loosely held."
**Application:** Commit fully cho hypothesis. Nhưng khi evidence contradicts → update ngay. Không defend vì đã invest.

---

## Product Sense

### Product sense through clarity, conviction, curating problems
**Source:** Ebi Atawodi, YouTube/Netflix/Uber
**Citation:** `episodes/ebi-atawodi/transcript.md` L261, L444
**Verification:** ⚠️ Ebi không nói "product sense is a feeling, not logic" — đó là oversimplification. Ebi nhấn mạnh: (1) clarity về problems being solved, (2) conviction — biết defend decisions, (3) curating problems — chọn đúng problems to solve.
**Application:** Khi develop product sense, không phải "cảm" mà là: deep exposure → clear problem curation → strong conviction backed by evidence.

### Empathy > solution passion
**Source:** Scott Belsky, Adobe CSO / Behance founder
**Citation:** `episodes/scott-belsky/transcript.md` L103
**Verification:** ✅ Verbatim — "passionate about a solution... empathy for the customer that's suffering... 30 degrees off"
**Application:** Khi team excited về solution → redirect: "describe the customer's suffering first."

### Speed = competence, not cutting corners
**Source:** Nan Yu, Linear
**Citation:** `episodes/nan-yu/transcript.md` L40
**Verification:** ✅ Verbatim — "over-index on rushing or being sloppy. What they should be indexing on is being really competent."
**Context:** Nan Yu dùng analogy chess: top players (Magnus) vừa nhanh vừa accurate. Speed là signal of mastery.
**Application:** Khi team nói "we need to move faster" → hỏi "faster bằng cách nào? Cut corners hay increase competence?"

### Codify taste into prompts/templates
**Source:** Dan Shipper, Every
**Citation:** `episodes/dan-shipper/transcript.md` L274
**Verification:** ✅ Verbatim — "codify all of that into prompts... pushes my taste out to the edge"
**Context:** Dan dùng AI prompts để encode editorial feedback cho writers — "simulation of a simulation of me."
**Application:** Khi taste/quality judgment cần scale beyond 1:1 → encode vào checklists, templates, prompts.

---

## Metrics & Data

### Metrics are consequences, not drivers
**Source:** Bob Baxley, ex-Apple/Pinterest
**Citation:** `episodes/bob-baxley/transcript.md` L409
**Verification:** ✅ Verbatim — "I've never seen a product be successful that used metrics as a driver... useful feedback mechanism."
**Application:** Metrics KHÔNG nói "build X." Metrics nói "decision Y đang work hay không." Hai cái khác nhau.

### Diagnose with data, treat with design
**Source:** Julie Zhuo, ex-Facebook VP Design
**Citation:** `episodes/julie-zhuo/transcript.md` L61
**Verification:** ✅ Verbatim — "diagnose with data and treat with design. Data is not a tool that's going to tell you what you should build."
**Application:** Data shows WHERE the problem is. Creative process shows HOW to solve it.

### Simple metrics beat composite metrics
**Source:** Jessica Lachs, Duolingo
**Citation:** corpus-derived (⚠️ pattern across multiple mentions)
**Detail:** Nếu people hiểu metric và có intuition around it → drives better outcomes than composite score nobody understands.
**Application:** Khi ai propose "engagement score = 0.3×DAU + 0.5×session_length + 0.2×actions" → pushback: "team có intuition cho score này không?"

### Proxy metrics: short-term inputs predict long-term outputs
**Source:** Jessica Lachs, Duolingo
**Citation:** corpus-derived (⚠️)
**Detail:** Đừng goal trên retention trực tiếp — tìm short-term inputs that DRIVE retention. Experiment trên inputs đó.
**Application:** "Improve D30 retention" là lagging metric. "Tăng onboarding completion" hoặc "tăng Day-1 core action" là leading proxy.

---

## Business & Growth

### PMF requires a scalable acquisition loop
**Source:** Casey Winters, ex-Pinterest/Eventbrite
**Citation:** `episodes/casey-winters/transcript.md` L334
**Verification:** ✅ Concept rõ trong discussion
**Detail:** Retention alone ≠ PMF. Cần growth mechanism built INTO the product — viral, content, paid, sales.
**Application:** Khi ai nói "we have PMF" → check: "có acquisition loop scalable không? Hay chỉ retain well nhưng không grow?"

### 20% features drive 80% WTP
**Source:** Madhavan Ramanujam
**Citation:** `episodes/madhavan-ramanujam/transcript.md` L46
**Verification:** ✅ Verbatim — "20% of what you build drives 80% of the willingness to pay. But the irony is that that 20% is the easiest thing to build often."
**Application:** WTP research trước khi build. Đừng build 100% rồi mới hỏi "users trả bao nhiêu?"

### Removing features helps core metric
**Source:** Scott Belsky, Behance
**Citation:** `episodes/scott-belsky/transcript.md` L238-241
**Verification:** ✅ — Killed Tip Exchange → project publishing up. Killed Groups → same. Called it "10X the velocity."
**Exact quote (L241):** "if you make the whole product about one thing, everyone does that. That core crank operates at 10X the velocity"
**Application:** Khi backlog dài → thay vì hỏi "add gì?", hỏi "remove gì?"

### Product moats outlast technical moats
**Source:** Bret Taylor
**Citation:** corpus-derived (⚠️)
**Detail:** Technical advantages (putting a database in the cloud) erode fast. Product moats (UX, workflows, ecosystem, switching costs) endure.
**Application:** Khi evaluate competitive advantage → "moat này technical hay product? Technical moats have expiry dates."
