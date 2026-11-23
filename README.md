# Poteto Pyramid

An engineering skill for AI coding agents. It teaches them to solve problems at the right level of the trust hierarchy — architecture first, then automated checks, then verification, then prose.

## The Pyramid

```
       /\
      /  \     Level 4: Prose & Documentation
     /----\
    /      \    Level 3: Verification
   /--------\
  /          \   Level 2: Deterministic Checks
 /------------\
/              \  Level 1: Architecture & Codebase
----------------
```

Trust increases downward. Fix problems at the lowest level possible.

## Supported Platforms

| Platform | File to Use | Setup |
|---|---|---|
| **Antigravity** | `platforms/antigravity/` | Copy into `~/.gemini/config/plugins/poteto-pyramid/` |
| **Claude Code** | `platforms/claude/CLAUDE.md` | Copy to your project root |
| **ChatGPT** | `platforms/chatgpt/` | Paste into Custom GPT or Custom Instructions |
| **Cursor** | `.cursorrules` | Copy to your project root |
| **Any Agent** | `SKILL.md` or `AGENTS.md` | Use as system prompt or project instructions |

## Quick Start

```bash
# Clone
git clone https://github.com/MahdiHassanGo/poteto-pyramid.git

# Install for Antigravity
cp -r platforms/antigravity ~/.gemini/config/plugins/poteto-pyramid

# Install for Claude Code
cp platforms/claude/CLAUDE.md /path/to/your/project/CLAUDE.md

# Install for Cursor
cp .cursorrules /path/to/your/project/.cursorrules
```

Or use the install script:
```bash
./install.sh claude /path/to/project
./install.sh cursor /path/to/project
./install.sh antigravity
```

## What It Does

When active, your AI agent will:

1. **Prioritize architecture** — restructure APIs and types so bugs cannot exist
2. **Automate enforcement** — add strict types, tests, linters, and CI gates instead of relying on memory
3. **Verify everything** — run tests, build, check diffs, and report concrete evidence
4. **Stay concise** — explain trade-offs, not obvious syntax

## Repository Structure

```
.
├── SKILL.md                          # Universal skill definition
├── AGENTS.md                         # Universal agent rules
├── .cursorrules                      # Cursor IDE rules
├── plugin.json                       # Antigravity plugin manifest
├── install.sh                        # Quick installer script
├── assets/
│   └── logo.svg
├── skills/
│   └── poteto-pyramid/
│       └── SKILL.md
├── rules/
│   └── AGENTS.md
└── platforms/
    ├── antigravity/                  # Full Antigravity plugin
    ├── claude/                       # Claude Code & Projects
    └── chatgpt/                      # Custom GPT & Instructions
```

## License

MIT
