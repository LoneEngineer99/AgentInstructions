---
applyTo: '**'
---

# ⚠️ DEPRECATED — Read `AGENTS.md` Instead

> **🚨 THIS FILE IS DEPRECATED.** Agent instructions use a reference-based model now.
>
> **1. Read the project's local `AGENTS.md`** — it contains project-specific notes, context, and status.
> **2. Fetch the canonical rules** from: `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md`
>
> This file exists only for backwards compatibility with tools that automatically load `copilot-instructions.md`.

## Where to Find Instructions

- **Project context:** Read the local `AGENTS.md` in the project root
- **Canonical rules (by URL):** `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md`

## How It Works

- Each project has its **own local `AGENTS.md`** with project-specific notes, architecture, build commands, and status.
- The **canonical rules** (execution protocols, engineering principles, naming conventions, security) are in this repo's `AGENTS.md` — always fetched by URL, never copied.
- Each project has its own `.github/roadmap.md` where agents update status after every task.

## Instructions

1. **Stop reading this file.** Go read the project's local `AGENTS.md` for project context.
2. **Fetch the canonical rules** from the URL above and follow them.
3. **After code changes:** Update the project's local `AGENTS.md` with progress, update `.github/roadmap.md` with status, and update `README.md` if needed.

---

*This file is kept for backwards compatibility only. All instructions live in the project's local `AGENTS.md` + the canonical rules at the URL above.*
