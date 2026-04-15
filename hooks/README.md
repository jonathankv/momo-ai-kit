# Hooks

Reusable hook snippets để teammates copy vào `~/.claude/settings.json`.

Hooks chạy trong harness của Claude Code (không phải Claude tự quyết định). Vì vậy **không thể** implement bằng memory hoặc skill — phải cấu hình trong `settings.json`.

## Cách dùng

1. Mở hook file tương ứng (vd: `pre-commit-validate.json`)
2. Copy nội dung vào section `hooks` của `~/.claude/settings.json`
3. Merge với hooks hiện có của bạn (không đè)

## Available hooks

_(Thêm khi có nhu cầu thực tế. Khởi đầu empty để tránh over-engineer.)_

## Khi nào viết hook mới

- Behavior phải tự động (on event X, always do Y)
- Không thể đạt được bằng skill/memory (vì skill cần Claude chủ động trigger)
- Có giá trị cho ≥2 người

## Ví dụ use cases có thể cần hook

- Block `git push --force` vào main (SessionStart hook check branch)
- Auto-run `./scripts/doctor.sh` sau khi edit SKILL.md (PostToolUse hook)
- Notify Slack khi deploy command chạy (PostToolUse hook)
