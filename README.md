# 🚀 Agent Instructions

A **single-file instruction system** for giving AI coding agents (GitHub Copilot, Claude, etc.) consistent rules, conventions, and project context across all your projects.

---

## 📁 Repository Structure

```
│   ├── AGENTS.md                      # ★ THE single source of truth — all agent instructions in one file
│   ├── copilot-instructions.md        # Backwards-compat redirect → AGENTS.md
│   ├── base-copilot-instructions.md   # Legacy file (content merged into AGENTS.md)
│   ├── site-templates.md              # Reference guide for UI templates and components
│   └── roadmap.md                     # Project roadmap and future enhancements
```

---

## 🤖 AI Agent Instructions

This repository contains **`AGENTS.md`** — a single, comprehensive instruction file that gives AI coding agents (GitHub Copilot, Claude, etc.) consistent rules, conventions, and project context across all your projects.

### The File

| File | Purpose | Status |
|------|---------|--------|
| **`AGENTS.md`** | All agent instructions — execution protocols, engineering principles, naming conventions, security rules, project templates, and initialization wizard | **✅ Active — the single source of truth** |
| `copilot-instructions.md` | Backwards-compatibility redirect to `AGENTS.md` | *Deprecated — redirects only* |
| `base-copilot-instructions.md` | Legacy shared foundation (content now in `AGENTS.md`) | *Legacy — do not use* |

### What `AGENTS.md` Contains

**`AGENTS.md`** (complete agent instructions):
- **Part I** — Agent execution protocols, TODO management, error debugging, completion criteria
- **Part II** — Software engineering principles (SOLID, DRY, KISS, YAGNI, Separation of Concerns, security)
- **Part III** — Naming conventions for C#, C/C++, PHP, JS/TS, SQL, CSS/SCSS
- **Part IV** — Project context guidelines, database change rules, site templates & design references
- **Part V** — Documentation rules, post-task reporting, agent work ethic, roadmap management
- **Part VI** — New project initialization protocol (24 discovery questions)
- **Part VII** — Project context template (fill in with project-specific details)

**`site-templates.md`** (UI template reference):
- Reference guide for reusing UI components and pages from template libraries
- Critical rules for CSS/JS asset dependencies when copying components
- Template registry with detailed documentation for each UI template
- Agent workflows for properly extracting and reusing template components

**`roadmap.md`** (project roadmap):
- Project roadmap and planned enhancements
- Future features and improvements to the instruction system

### 🚀 Setting Up Agent Instructions in a New Project

To add AI agent instructions to a new project, follow these steps:

1. **Copy `AGENTS.md`** from this repository into your new project root:

   ```bash
   # From your new project root
   curl -o AGENTS.md \
     https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md
   ```

2. **(Optional) Copy `copilot-instructions.md`** for backwards compatibility with tools that auto-load it:

   ```bash
   mkdir -p .github
   curl -o .github/copilot-instructions.md \
     https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/copilot-instructions.md
   ```

3. **Complete the initialization wizard** — `AGENTS.md` contains a "NEW PROJECT INITIALIZATION" section (§30) with 24 discovery questions. Ask your AI agent to walk through these questions and populate the project-specific sections. Once complete, the initialization section is deleted.

4. **Commit the file** to your project repository:

   ```bash
   git add AGENTS.md
   git commit -m "Add AI agent instructions from Agent Instructions repo"
   ```

> **Note for forks:** If you fork this repository, update the raw URLs in `AGENTS.md` to point to your own fork.

### Instructing Agents to Use This File

When starting a new conversation or task with an AI agent, you can instruct it to read the instructions:

> *"Read `AGENTS.md` in this project for all agent instructions, conventions, and project context. Follow the rules and standards defined there. If `AGENTS.md` is not present, fetch it from `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md`."*

GitHub Copilot and Claude will automatically load `copilot-instructions.md` when it exists in your project's `.github/` directory — the redirect file will point them to `AGENTS.md`.

