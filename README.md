<div align="center">

# 🤖 Agent Instructions

### Give every AI coding agent the same high standards — automatically.

A **reference-based instruction system** for giving AI coding agents (GitHub Copilot, Claude, Cursor, etc.) consistent rules, conventions, and project context across **all** your projects.

[![GitHub](https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github)](https://github.com/LoneEngineer99/AgentInstructions)
[![License](https://img.shields.io/badge/License-Open-brightgreen?style=for-the-badge)](#)
[![Markdown](https://img.shields.io/badge/Format-Markdown-blue?style=for-the-badge&logo=markdown)](#)

</div>

---

## ✨ Why Agent Instructions?

Without shared rules, every AI agent session starts from scratch — inconsistent naming, missing security checks, forgotten documentation. **Agent Instructions** solves this by giving agents a single canonical rulebook they can fetch and follow on every task.

<table>
<tr>
<td width="50%">

### ❌ Without Agent Instructions
- Inconsistent naming across files
- Security best practices forgotten
- No documentation standards
- Every session starts from zero
- Agent "forgets" conventions

</td>
<td width="50%">

### ✅ With Agent Instructions
- Enforced naming conventions
- Built-in security checklists
- Mandatory documentation standards
- Cross-session memory via local `AGENTS.md`
- Consistent quality every time

</td>
</tr>
</table>

---

## 🏗️ How It Works

> **One canonical rulebook. Synced locally. Always validated.**

```mermaid
flowchart LR
    subgraph This_Repo["📦 AgentInstructions Repo"]
        A["AGENTS.md\n(Canonical Rules)"]
        B[".github/agents/\n(11 Agent Profiles)"]
        C["setup-agents.sh\n(Sync Script)"]
    end
    subgraph Project_A["🗂️ Project A"]
        D["AGENTS.md\n(canonical copy)"]
        E[".github/agents/\n(local copies)"]
        F["AGENTS.md\n(project context)"]
        G[".github/roadmap.md"]
    end
    subgraph Project_B["🗂️ Project B"]
        H["AGENTS.md\n(canonical copy)"]
        I[".github/agents/\n(local copies)"]
        J["AGENTS.md\n(project context)"]
        K[".github/roadmap.md"]
    end

    C -- "downloads" --> D
    C -- "downloads" --> E
    C -- "downloads" --> H
    C -- "downloads" --> I

    style This_Repo fill:#1a1a2e,stroke:#e94560,stroke-width:2px,color:#eee
    style Project_A fill:#16213e,stroke:#0f3460,stroke-width:2px,color:#eee
    style Project_B fill:#16213e,stroke:#0f3460,stroke-width:2px,color:#eee
    style A fill:#e94560,stroke:#e94560,color:#fff
    style B fill:#e94560,stroke:#e94560,color:#fff
    style C fill:#e94560,stroke:#e94560,color:#fff
    style D fill:#0f3460,stroke:#0f3460,color:#eee
    style E fill:#0f3460,stroke:#0f3460,color:#eee
    style F fill:#0f3460,stroke:#0f3460,color:#eee
    style G fill:#0f3460,stroke:#0f3460,color:#eee
    style H fill:#0f3460,stroke:#0f3460,color:#eee
    style I fill:#0f3460,stroke:#0f3460,color:#eee
    style J fill:#0f3460,stroke:#0f3460,color:#eee
    style K fill:#0f3460,stroke:#0f3460,color:#eee
```

| Layer | File | Location | Purpose |
|:-----:|------|----------|---------|
| 🌐 | **`setup-agents.sh`** | This repo | One-time sync script — downloads all canonical files |
| 📜 | **`AGENTS.md`** | Each project (synced) | Canonical rules — synced locally, never edited |
| 🤖 | **`.github/agents/`** | Each project (synced) | 11 agent profiles — synced locally, never edited |
| 📁 | **`AGENTS.md`** (project) | Each project | Project-specific notes, architecture, status |
| 🗺️ | **`roadmap.md`** | Each project's `.github/` | Living project roadmap updated by agents |

---

## 📖 What's Inside the Canonical Rules

The canonical `AGENTS.md` is organized into **8 parts** covering everything an AI agent needs:

<table>
<tr><td>

| Part | Title | What It Covers |
|:----:|-------|----------------|
| **I** | 🧠 Agent Execution & Autonomy | Execution protocols, TODO management, error debugging, completion criteria |
| **II** | ⚙️ Software Engineering | SOLID, DRY, KISS, YAGNI, separation of concerns, security |
| **III** | 🏷️ Naming Conventions | C#, C/C++, PHP, JS/TS, SQL, CSS/SCSS |
| **IV** | 🗃️ Project Context | Database change rules, site templates, design references |
| **V** | 📝 Documentation & Evolution | Post-task reporting, agent work ethic, roadmap management |
| **VI** | 🚀 Initialization Protocol | 24 discovery questions + local `AGENTS.md` template |
| **VII** | 📋 Template Reference | Structure for each project's local `AGENTS.md` |
| **VIII** | 🤖 Custom Agents | 11 specialized agents and selection guide |

</td></tr>
</table>

<details>
<summary><strong>📂 What Each Project's Local <code>AGENTS.md</code> Contains</strong></summary>

<br>

- 🔗 Reference to the canonical rules URL
- 🤖 Reference to the custom agents index URL
- 📋 Project overview, tech stack, and architecture
- 🔨 Build, run, and test commands
- 🗄️ Database schema and migration details
- 📊 Current implementation status and progress
- ⚡ Project-specific rule overrides
- 📝 Notes and learnings from development

</details>

---

## 🤖 Custom Agents

This repository provides **11 specialized GitHub Copilot custom agents** in `.github/agents/`:

| Agent | Purpose |
|-------|---------|
| `code-formatter` | Naming conventions, inline comments, XML doc blocks |
| `agent-reporter` | Post-task reports with minimum 6 screenshots |
| `ui-designer` | Web UI components with design system compliance |
| `binary-analyst` | x64 reverse engineering and attack surface mapping |
| `test-engineer` | Focused unit tests for input validation and business logic |
| `project-initializer` | New project setup with AGENTS.md scaffolding |
| `database-architect` | Schema design, migrations, Dapper repositories |
| `security-auditor` | Code security review with prioritized findings |
| `api-designer` | REST API design, DTOs, versioning, OpenAPI docs |
| `documentation-writer` | README, AGENTS.md, roadmap, and ADR maintenance |
| `continuous-developer` | Long-running tasks — works continuously to maximize session progress and bring the project as close to completion as possible without stopping |

👉 **[View the full agent index](.github/agents/README.md)** for descriptions, selection guide, and remote usage instructions.

---

## 📁 Repository Structure

```
AgentInstructions/
├── 📜 AGENTS.md                        ★ Canonical rules — synced locally into projects
├── 🔧 setup-agents.sh                  ★ One-line sync script for remote projects
├── 🖼️ UI_Examples/
│   ├── ui-design-index.md              Design catalog with tokens & principles
│   └── *.jpg                           42 curated high-quality UI screenshots
└── 🤖 .github/agents/
    ├── README.md                       Agent index & selection guide
    ├── CHECKSUMS.sha256                SHA256 hashes for integrity validation
    ├── code-formatter.md               Naming, comments, XML doc blocks
    ├── agent-reporter.md               Post-task reports (6+ screenshots)
    ├── ui-designer.md                  Web UI design with Playwright MCP + full template registry
    ├── binary-analyst.md               x64 RE with Radare2 + Ghidra MCP
    ├── test-engineer.md                Focused unit tests
    ├── project-initializer.md          New project setup wizard
    ├── database-architect.md           Schema, migrations, Dapper
    ├── security-auditor.md             Security vulnerability review
    ├── api-designer.md                 REST API design
    ├── documentation-writer.md         README/AGENTS.md/roadmap
    └── continuous-developer.md         Long-running tasks — maximize session progress
```

<details>
<summary><strong>📎 More About Supporting Files</strong></summary>

<br>

**`.github/agents/ui-designer.md`** — UI design agent (includes full site template registry):
- Web UI design workflow with Playwright MCP for visual verification
- Complete template registry with page catalogues, asset maps, and library inventories
- Critical rules for CSS/JS asset dependencies when copying components
- Design system, BEM CSS naming, form validation, i18n, and dark mode rules

**`UI_Examples/`** — UI design reference images and design index:
- 42 curated screenshots of modern UI design (dashboards, forms, cards, data tables, charts, modals, landing pages, and more)
- **`ui-design-index.md`** catalogs every image by component category and extracts design principles for color, typography, spacing, depth, and motion
- Includes ready-to-use **design tokens** (CSS custom properties) for colors, spacing, radius, shadows, and typography
- Agents must consult this index when building UI components (see §25)

**`roadmap.md`** — per-project living document:
- Each project maintains its own `.github/roadmap.md`
- Agents update it after every task with status, completed work, and next steps

</details>

---

## 🚀 Quick Start

Add AI agent instructions to **any project** in 3 steps:

### Step 1 — Run the Setup Script

From your project root, run:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/setup-agents.sh)
```

This downloads `AGENTS.md` (canonical rules) and all `.github/agents/*.md` files into your project so AI coding agents can read them **without needing internet access at runtime**.

### Step 2 — Create Your Project's `AGENTS.md`

The synced `AGENTS.md` is the canonical rules file. Create a **separate** project context file using the template from **§30 (Step 0)** of the canonical rules:

> *"Use the §30 template in `AGENTS.md` to create a project context file."*

Or manually: open `AGENTS.md`, find **§30 (Step 0)**, and copy the template into your own project notes file. Agents will read both.

### Step 3 — Commit & Validate

```bash
git add AGENTS.md .github/agents/ .github/roadmap.md
git commit -m "chore: add AI agent instructions"
```

On every future agent session, validate files are intact:

```bash
bash setup-agents.sh --validate
```

> [!NOTE]
> **Keeping files up to date:** Re-run `setup-agents.sh` (without flags) whenever you want to pull the latest canonical rules and agent profiles from this repository. Commit the updated files afterward.

> [!NOTE]
> **Forking?** Update the `REPO_RAW` variable at the top of `setup-agents.sh` to point to your own fork.

---

## 💬 Instructing Agents to Use This System

After running `setup-agents.sh`, paste this into any AI agent conversation to activate the full system:

> *"Read `AGENTS.md` in this project for canonical rules and conventions. Read the project context file for project-specific notes. All custom agent files are in `.github/agents/`. After completing work, update the project context file with progress and update `.github/roadmap.md` with status."*

GitHub Copilot and Claude automatically load `AGENTS.md` when it exists in your project's directory. Because the file is synced locally, agents can read the full canonical rules without any network access.

---

<div align="center">

**Built to make AI agents work the way you want — every time.**

⭐ Star this repo if you find it useful!

</div>



