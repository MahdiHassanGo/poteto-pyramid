# Using Poteto Pyramid with Claude

This directory provides configurations to equip Claude (Claude Code CLI, Claude Projects, and Claude Desktop) with the Poteto Pyramid engineering philosophy.

## 1. Claude Code CLI

### Option A: Local Project
Copy `CLAUDE.md` to your repository root:
```bash
cp platforms/claude/CLAUDE.md /path/to/your/project/CLAUDE.md
```
Claude Code automatically detects and follows `CLAUDE.md` in any working directory.

### Option B: Global Claude Code Rules
Append or place `CLAUDE.md` in your user directory:
```bash
mkdir -p ~/.claude
cat platforms/claude/CLAUDE.md >> ~/.claude/CLAUDE.md
```

## 2. Claude.ai Projects

1. Open your project on [Claude.ai](https://claude.ai).
2. Go to **Set custom instructions**.
3. Paste the contents of `CLAUDE.md`.
4. Upload `skills/poteto-pyramid/SKILL.md` to the project's **Files & Knowledge** section.

## 3. Claude Desktop / System Prompt

Add the instructions from `CLAUDE.md` into your Claude Desktop application configuration or conversation system prompt.
