# Using Poteto Pyramid with Antigravity

This directory contains the ready-to-use plugin and skill package for Google Antigravity.

## Installation Options

### Option 1: Install as a Plugin (Recommended)
Installing as a plugin activates both the on-demand skill (`/poteto-pyramid`) and persistent rules (`rules/AGENTS.md`) across your agent sessions.

Copy this directory into your Antigravity plugins directory:
```bash
mkdir -p ~/.gemini/config/plugins/poteto-pyramid
cp -r platforms/antigravity/* ~/.gemini/config/plugins/poteto-pyramid/
```

Or symlink it directly:
```bash
ln -s "$(pwd)/platforms/antigravity" ~/.gemini/config/plugins/poteto-pyramid
```

### Option 2: Project-Local Skill
To use only in a specific workspace without global installation:
```bash
mkdir -p .gemini/skills/poteto-pyramid
cp skills/poteto-pyramid/SKILL.md .gemini/skills/poteto-pyramid/
```

### Option 3: Global Skill
To install just the skill without a plugin:
```bash
mkdir -p ~/.gemini/antigravity/skills/poteto-pyramid
cp skills/poteto-pyramid/SKILL.md ~/.gemini/antigravity/skills/poteto-pyramid/
```

## How to Use
- Type `/poteto-pyramid` in your Antigravity chat prompt to invoke the skill directly.
- The agent will evaluate changes against the 4 levels of the pyramid: Architecture, Deterministic Checks, Verification, and Prose.
