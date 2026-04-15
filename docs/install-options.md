# Các cách cài momo-ai-kit

Chọn cách phù hợp với bạn.

---

## Cách 1: Nhờ engineer (dễ nhất — cho non-tech)

Gửi engineer trong team đoạn này:

```bash
git clone https://github.com/jonathankv/momo-ai-kit.git ~/momo-ai-kit
cd ~/momo-ai-kit && ./scripts/install.sh
```

Làm 1 lần, xong.

Khi có skill mới trong repo: engineer chạy `cd ~/momo-ai-kit && git pull` — không cần install lại vì symlink tự update.

---

## Cách 2: Tự chạy (cho ai đã quen terminal cơ bản)

### Yêu cầu
- macOS hoặc Linux
- Git đã cài (`git --version` để check)
- Claude Code đã cài

### Bước
1. Mở Terminal (Cmd+Space → "Terminal" trên Mac)
2. Copy-paste 2 dòng sau, Enter:

```bash
git clone https://github.com/jonathankv/momo-ai-kit.git ~/momo-ai-kit
cd ~/momo-ai-kit && ./scripts/install.sh
```

3. Mở Claude Code. Gõ `/synthesis-writer` để test.

### Update
```bash
cd ~/momo-ai-kit && git pull
```

### Gỡ cài
```bash
cd ~/momo-ai-kit && ./scripts/uninstall.sh
```

---

## Troubleshooting

### "Command not found: git"
Mac: cài Xcode Command Line Tools: `xcode-select --install`

### "Permission denied: ./scripts/install.sh"
Chạy: `chmod +x ./scripts/*.sh` rồi thử lại

### "Skill không hiện trong Claude Code"
1. Check symlink: `ls -la ~/.claude/skills/` — phải thấy tên skill
2. Nếu không có: chạy lại `./scripts/install.sh`
3. Restart Claude Code

### "Tôi vẫn stuck"
→ Open [issue mới](https://github.com/jonathankv/momo-ai-kit/issues/new/choose) với label `question`, copy error message
