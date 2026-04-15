# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

`momo-ai-kit` is a **shared asset repo** for Claude Code itself — skills, agents, slash commands, hooks, and settings used by MoMo teams. It contains no application code. Edits here are Markdown + YAML frontmatter + shell scripts; the deliverables are consumed by `~/.claude/` via symlinks.

## Install / build / check

```bash
./scripts/install.sh          # symlink skills/agents/commands into ~/.claude/ (idempotent)
./scripts/uninstall.sh        # remove symlinks
./scripts/doctor.sh           # validate frontmatter, mismatched names, broken symlinks, >400-line SKILL.md
./scripts/new-skill.sh <team> <slug>   # scaffold from templates/skill-template
./scripts/build-catalog.sh    # regenerate docs/catalog.md from frontmatter
```

`install.sh` skips any file whose frontmatter has `status: deprecated`. There is no test suite — `doctor.sh` is the validator and is what CI runs.

Valid `<team>` values (must be an existing folder under `skills/`): `product`, `engineering`, `data`, `risk`, `marketing`, `design`, `shared`. `<slug>` must be kebab-case, 2–4 words, and match the `name:` in frontmatter.

## Architecture

The layout deliberately separates **authoring** (this repo) from **runtime** (`~/.claude/`):

- **`skills/<team>/<slug>/SKILL.md`** — each skill is a folder so it can carry `references/`, `scripts/`, `assets/`. `install.sh` symlinks the whole folder, flattened, into `~/.claude/skills/<slug>/`. Because the runtime location is a symlink, **edit in the repo, never in `~/.claude/`** — edits there are outside git.
- **`agents/<team>/<slug>.md`** — agents are single files (flatten to `~/.claude/agents/<slug>.md`). Promote to a folder only when resources are needed.
- **`commands/<slug>.md`** — slash commands, flat list, verb-first names (`/review-pr`). No team folder.
- **`settings/momo-base.json`** — reference config (MCP, permissions, env). `install.sh` does **not** auto-merge this into `~/.claude/settings.json` because that would overwrite personal config; it only prints a reminder.
- **`templates/`** — `new-skill.sh` copies `skill-template/` and substitutes `SKILL_SLUG`, `TEAM_HANDLE`, `YYYY-MM-DD`.
- **`docs/catalog.md`** — auto-generated. Do not hand-edit; regenerate via `build-catalog.sh`.

### Progressive disclosure contract

`SKILL.md` is kept under 400 lines (doctor warns above that) because Claude Code loads it into the context window every time the skill matches. Long rules/examples/patterns belong in `references/*.md`; the SKILL.md links out and Claude reads them on demand. This is a hard convention — refactors that inline reference content back into SKILL.md are wrong.

### Frontmatter is load-bearing

Six required fields on every skill (`doctor.sh` enforces the first five; `version` and `last_reviewed` are conventions):

```yaml
name: <slug>            # MUST equal folder name, or doctor fails
description: ...        # one line, verb-first — feeds catalog
trigger: |              # TRIGGER when: ... / SKIP when: ... — used by Claude to match
owner: "@team-handle"
status: experimental | beta | stable | deprecated
version: 0.1.0
last_reviewed: YYYY-MM-DD
```

`description` vs `trigger` are intentionally separate: `description` is one line for humans browsing `catalog.md`; `trigger` is longer and contains both positive (TRIGGER) and negative (SKIP) cases for Claude's runtime matcher. Don't collapse them.

Agents require `name`, `description`, `owner`, `status` (no `trigger`).

### Versioning and deprecation

Breaking changes coexist as sibling folders (`fraud-detector/` and `fraud-detector-v2/`) — **do not modify v1 in place**. Non-breaking changes bump the `version` field within the same folder. Removing a skill is always `status: deprecated` + note in its `README.md`, never `git rm` — someone else's workflow may depend on it, and `install.sh` will stop symlinking deprecated entries so the runtime cleans itself up.

## Conventions worth knowing before editing

- Team ownership is expressed by **folder path**, not by slug prefix. `skills/risk/foo/` — not `skills/risk-foo/` — so renames don't cascade.
- CODEOWNERS restricts cross-cutting changes: edits to `settings/`, `scripts/install.sh`, `scripts/uninstall.sh`, `.github/`, and `docs/conventions.md` need owner approval. Team folders are self-merge.
- Commit prefixes: `feat(<team>)`, `fix(<team>)`, `docs(<team>)`, `deprecate(<team>)`, `refactor(<team>)`, `chore:`.
- `scripts/` is bash with `set -euo pipefail` and macOS-compatible `sed -i ''` — preserve that when editing.

## Full conventions and contributor guide

`docs/conventions.md` (naming, anti-patterns table, review checklist) and `docs/CONTRIBUTING.md` (end-to-end flow) are the source of truth if this file and they disagree.
