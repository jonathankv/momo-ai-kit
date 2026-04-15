# Level 1 / Level 2 JTBD Framework — Anh Công

> Source: Meeting Kiên & Anh Công (CPO MoMo) — 16/03/2026
> Verified: mar16-meeting-a-cong-insights.md lines 125-141

## Overview

Framework JTBD do anh Công tự phát triển, bổ sung cho Bob Moesta method. Phân biệt 2 tầng JTBD để tránh confuse khi iterate.

## Level 1 — Non-negotiable Outcomes

| Aspect | Description |
|--------|-------------|
| **Bản chất** | Kết quả mà user PHẢI đạt được. Functional + Emotional. |
| **Thay đổi?** | Rất ít. Fix xong → "treo tường" 3 tháng mới review. |
| **Ví dụ (ăn xế)** | Phải no, phải healthy, phải tiện. |
| **Ví dụ (TamBi)** | Main JTBD không thay đổi từ đầu đến giờ. |
| **Tư duy** | Pyramid thinking / logical tree — MECE, từ cao xuống thấp. |

### Cách xác định Level 1
1. Hỏi: "Nếu sản phẩm KHÔNG đạt được điều này, user có dùng không?"
2. Nếu trả lời "KHÔNG" → đó là Level 1
3. Nếu trả lời "Tuỳ" → có thể là Level 2

### Level 1 Statement Format
```
Khi [context bất biến], tôi cần [outcome không thể thỏa hiệp], để [progress cốt lõi].
```

## Level 2 — Solution-Oriented, Flexible

| Aspect | Description |
|--------|-------------|
| **Bản chất** | Criteria hướng về solution cụ thể. Dần dần cụ thể hoá Level 1. |
| **Thay đổi?** | Liên tục. Có thể thay đổi hoàn toàn sau 1 sprint. |
| **Ví dụ (ăn xế)** | "Sạch" cụ thể là gì? Không dính tay? Không mùi? Không rơi vãi? |
| **Tính chất** | Tạo spectrum trên các segment khác nhau. |

### Cách xác định Level 2
1. Level 2 là cách "giải mã" Level 1 thành solution criteria
2. Mỗi Level 1 có thể có 3-5 Level 2 criteria
3. Level 2 khác nhau theo segment — tạo ra differentiation

### Level 2 Statement Format
```
Để đạt [Level 1 outcome], user cần [criteria cụ thể], mà hiện tại [gap/friction].
```

## Sai lầm phổ biến

1. **Lẫn Level 1 với Level 2:** Thay đổi "non-negotiable" outcomes mỗi sprint → mất phương hướng
2. **Chỉ có Level 1:** Quá trừu tượng, không actionable cho development team
3. **Chỉ có Level 2:** Không có anchor → iterate vô định, không biết khi nào "xong"
4. **Quá mịn Level 2 quá sớm:** 3-4 nhóm chính ban đầu là đủ. Refine sau khi có data.

## Workflow

```
Step 1: Xác định Level 1 (3-5 non-negotiable outcomes)
        → Review với stakeholders
        → "Treo tường" — stable anchor

Step 2: Phân tách Level 2 cho mỗi Level 1
        → 3-4 criteria mỗi Level 1
        → Khác nhau theo segment

Step 3: Map Level 2 → product features
        → Identify gaps
        → Prioritize by segment

Step 4: Iterate Level 2 freely
        → Level 1 stays fixed
        → Level 2 evolves with each sprint

Step 5: Quarterly review Level 1
        → "Vẫn đúng không?"
        → Thay đổi chỉ khi có evidence mạnh
```

## Emotional-First Insight (CEO Workshop 2026-03-23)

**Phát hiện từ thực tế:** Level 1 thường là **emotional outcome**, không phải functional mechanism.

| | Sai (functional = L1) | Đúng (emotional = L1) |
|---|---|---|
| QLCT case | "Xem tổng chi tiêu theo danh mục" | "An tâm tài chính không cần nỗ lực" |
| Test | Bỏ "xem danh mục" → outcome mất | Bỏ mechanism → "an tâm" vẫn còn |

**CEO analogy:** Đồng hồ Huawei đo SpO2, huyết áp, nhịp tim (functional L2). Nhưng cái user cần: "Bạn ổn" (emotional L1). Sức khỏe tài chính = sức khỏe thể chất — chỉ cần biết "tôi ổn không" để sống tiếp.

**Quy tắc:**
1. Viết Level 1 → bỏ hết mechanism → outcome còn sống không?
2. Nếu outcome chết khi bỏ mechanism → đó là Level 2, không phải Level 1
3. Level 1 thường bắt đầu bằng: "an tâm", "tự tin", "kiểm soát", "tự hào"

## Key Quote

> "Chiến lược mà nó mịn và nó đi gần như mẹ toán học luôn." — Anh Công về logical thinking trong JTBD
