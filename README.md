# 🚀 Agent Instructions

A **two-file instruction system** for giving AI coding agents (GitHub Copilot, Claude, etc.) consistent rules, conventions, and project context across all your projects.

---

## 📁 Repository Structure

```
│   ├── copilot-instructions.md        # Project-specific agent guide (copy this to new projects)
│   └── base-copilot-instructions.md   # Shared base agent rules (read by URL, never copy)
```

---

## 🤖 AI Agent Instructions

This repository contains a **two-file instruction system** that gives AI coding agents (GitHub Copilot, Claude, etc.) consistent rules, conventions, and project context across all your projects.

### The Two Files

| File | Purpose | Where It Lives |
|------|---------|---------------|
| **`copilot-instructions.md`** | Project-specific context — architecture, build commands, status, overrides | **Copied** into each project's `.github/` directory |
| **`base-copilot-instructions.md`** | Shared foundation — engineering principles, naming conventions, security rules, execution protocols | **Only in this Starter Kit repo** — always read by URL |

### What Each File Contains

**`copilot-instructions.md`** (project-specific):
- Project overview, tech stack, and architecture
- Build, run, and test commands
- Database schema and migration details
- Current implementation status
- Project-specific rule overrides
- A new-project initialization wizard (23 discovery questions)

**`base-copilot-instructions.md`** (shared foundation):
- Execution protocols — phased workflows, TODO management, error debugging
- Software engineering principles — SOLID, DRY, KISS, YAGNI, Separation of Concerns
- Naming conventions — C#, C/C++, PHP, JS/TS, SQL, CSS/SCSS
- Security guidelines — input validation, XSS prevention, parameterized queries
- Project context guidelines — rules for documenting project details in `copilot-instructions.md`
- Post-task reporting — structured summary documents with screenshots

### ⚠️ Important: Never Copy `base-copilot-instructions.md`

The `base-copilot-instructions.md` file must **never be copied into individual projects**. Instead, agents should always fetch and read it from this Starter Kit repository using the raw URL:

```
https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/base-copilot-instructions.md
```

**Why?** This ensures all projects always use the latest version of the shared rules. When the base instructions are updated in the Starter Kit, every project benefits immediately — no manual syncing required.

> **Note for forks:** If you fork this repository, update the URLs in `copilot-instructions.md` and in the instructions below to point to your own fork.

### 🚀 Setting Up Agent Instructions in a New Project

To add AI agent instructions to a new project, follow these steps:

1. **Copy `copilot-instructions.md`** from this repository into your new project's `.github/` directory:

   ```bash
   # From your new project root
   mkdir -p .github
   curl -o .github/copilot-instructions.md \
     https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/copilot-instructions.md
   ```

2. **Do NOT copy `base-copilot-instructions.md`** — it is already referenced by URL inside `copilot-instructions.md`. Agents will fetch it automatically from this repository.

3. **Complete the initialization wizard** — the `copilot-instructions.md` file contains a "NEW PROJECT INITIALIZATION" section with 23 discovery questions. Ask your AI agent to walk through these questions and populate the project-specific sections. Once complete, the initialization section is deleted.

4. **Commit the file** to your project repository:

   ```bash
   git add .github/copilot-instructions.md
   git commit -m "Add AI agent instructions from Starter Kit"
   ```

### Instructing Agents to Use These Files

When starting a new conversation or task with an AI agent, you can instruct it to set up the instruction files:

> *"Set up AI agent instructions for this project. Copy `copilot-instructions.md` from `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/copilot-instructions.md` into `.github/copilot-instructions.md`. Do NOT copy `base-copilot-instructions.md` — it should always be read by URL from the Starter Kit repository. Then walk me through the project initialization questions."*

GitHub Copilot and Claude will automatically load `copilot-instructions.md` when it exists in your project's `.github/` directory. The file instructs them to also fetch and read the base instructions from this repository.

