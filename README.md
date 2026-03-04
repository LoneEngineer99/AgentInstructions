# 🚀 Agent Instructions

A **reference-based instruction system** for giving AI coding agents (GitHub Copilot, Claude, etc.) consistent rules, conventions, and project context across all your projects.

---

## 📁 Repository Structure

```
│   ├── AGENTS.md                      # ★ Canonical rules — always read by URL, never copied into projects
│   ├── copilot-instructions.md        # Backwards-compat redirect → AGENTS.md
│   └── site-templates.md              # Reference guide for UI templates and components (remotely hosted, may receive updates)
```

---

## 🤖 How It Works

This repository contains **`AGENTS.md`** — the **canonical rules file** that all AI agents reference. Projects do **NOT** copy this file. Instead:

1. **This repo's `AGENTS.md`** = the canonical rules (fetched by URL, never copied)
2. **Each project's local `AGENTS.md`** = the project's own notes, context, architecture, and status — with a reference to the canonical rules URL
3. **Each project's `.github/roadmap.md`** = the project's own roadmap where agents update status

### The Files

| File | Purpose | How It's Used |
|------|---------|---------------|
| **`AGENTS.md`** (this repo) | Canonical rules — execution protocols, engineering principles, naming conventions, security, templates | **Fetched by URL** from this repo — never copied into projects |
| **`AGENTS.md`** (in each project) | Project-specific notes — architecture, build commands, status, overrides | **Created locally** in each project using the template in §30 |
| `copilot-instructions.md` | Backwards-compatibility redirect | *Deprecated — redirects to `AGENTS.md`* |

### What the Canonical `AGENTS.md` Contains

- **Part I** — Agent execution protocols, TODO management, error debugging, completion criteria
- **Part II** — Software engineering principles (SOLID, DRY, KISS, YAGNI, Separation of Concerns, security)
- **Part III** — Naming conventions for C#, C/C++, PHP, JS/TS, SQL, CSS/SCSS
- **Part IV** — Project context guidelines, database change rules, site templates & design references
- **Part V** — Documentation rules, post-task reporting, agent work ethic, roadmap management
- **Part VI** — New project initialization protocol (24 discovery questions + local `AGENTS.md` template)
- **Part VII** — Reference for the local project `AGENTS.md` structure

### What Each Project's Local `AGENTS.md` Contains

- Reference to the canonical rules URL
- Project overview, tech stack, and architecture
- Build, run, and test commands
- Database schema and migration details
- Current implementation status and progress
- Project-specific rule overrides
- Notes and learnings from development

**`site-templates.md`** (UI template reference — remotely hosted, may receive updates):
- Reference guide for reusing UI components and pages from template libraries
- Critical rules for CSS/JS asset dependencies when copying components
- Template registry with detailed documentation for each UI template
- Always fetch the latest version by URL before use — do not rely on cached copies

**`roadmap.md`** (per-project):
- Each project has its own `.github/roadmap.md`
- Agents update this file after every task with status, completed work, and next steps

### 🚀 Setting Up Agent Instructions in a New Project

To add AI agent instructions to a new project:

1. **Create a local `AGENTS.md`** in your project root using the template from §30 of the canonical rules. The easiest way is to ask your AI agent:

   > *"Create a local `AGENTS.md` using the template from §30 (Step 0) of the canonical rules at `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md`. Fetch the full file and look for the template in §30."*

   Or manually: fetch the canonical rules file, find the template in §30 (Step 0), and copy it into a new `AGENTS.md` file in your project root.

2. **(Optional) Copy `copilot-instructions.md`** for backwards compatibility with tools that auto-load it:

   ```bash
   mkdir -p .github
   curl -o .github/copilot-instructions.md \
     https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/copilot-instructions.md
   ```

3. **Complete the initialization wizard** — the canonical `AGENTS.md` contains §30 with 24 discovery questions. Ask your AI agent to walk through these and populate the project's local `AGENTS.md` with project-specific details.

4. **Create `.github/roadmap.md`** — the agent will create this during initialization (see §29).

5. **Commit the files** to your project repository:

   ```bash
   git add AGENTS.md .github/roadmap.md
   git commit -m "Add AI agent instructions for project"
   ```

> **Note for forks:** If you fork this repository, update the canonical rules URL in your local `AGENTS.md` files to point to your own fork.

### Instructing Agents to Use This System

When starting a new conversation or task with an AI agent:

> *"Read the local `AGENTS.md` in this project for project-specific context. Then fetch the canonical rules from `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md` and follow the rules and standards defined there. After completing work, update the local `AGENTS.md` with progress and update `.github/roadmap.md` with status."*

GitHub Copilot and Claude will automatically load `copilot-instructions.md` when it exists in your project's `.github/` directory — the redirect file will point them to `AGENTS.md`.

