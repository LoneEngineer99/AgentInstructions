# Custom Agents Index

This directory contains **10 custom agent profiles** for GitHub Copilot coding agent. Each agent is a specialized expert invoked for specific tasks.

> **Remote projects:** Download all files from this directory into your project's `.github/agents/` directory so AI agents can read them **without requiring internet access at runtime**. The canonical `AGENTS.md` rules file should be **fetched by URL** on every agent session — see Quick Download below.

---

## Quick Download (One Command)

Run this script from your project root to download all agent files:

```bash
BASE="https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/.github/agents"
mkdir -p .github/agents
for agent in README.md api-designer.md binary-analyst.md code-formatter.md \
             continuous-developer.md database-architect.md documentation.md \
             project-initializer.md security-auditor.md test-engineer.md ui-designer.md; do
  curl -fsSL "$BASE/$agent" -o ".github/agents/$agent"
done
git add .github/agents/ && git commit -m "chore: add AgentInstructions custom agent files"
```

Canonical rules URL (fetch each session, **do not store locally** — always fetch fresh):
```
https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md
```

---

## Available Agents

| Agent | File | Purpose |
|-------|------|---------|
| **code-formatter** | [code-formatter.md](./code-formatter.md) | Enforces naming conventions, inline comments, XML doc blocks, and removes dead code |
| **documentation** | [documentation.md](./documentation.md) | End-of-session wrap-up: updates AGENTS.md, roadmap, README **and** creates post-task reports with screenshots |
| **ui-designer** | [ui-designer.md](./ui-designer.md) | Designs and implements web UI components with design system compliance |
| **binary-analyst** | [binary-analyst.md](./binary-analyst.md) | Reverse engineers x64 binaries, maps attack surfaces, produces YARA signatures |
| **test-engineer** | [test-engineer.md](./test-engineer.md) | Writes focused unit tests covering input validation, boundary conditions, and critical paths |
| **project-initializer** | [project-initializer.md](./project-initializer.md) | Sets up new projects — runs discovery wizard, scaffolds directories, creates AGENTS.md and roadmap |
| **database-architect** | [database-architect.md](./database-architect.md) | Designs schemas, writes timestamped migrations, implements Dapper repositories, syncs all model layers |
| **security-auditor** | [security-auditor.md](./security-auditor.md) | Audits code for injection, XSS, auth issues, and exposed internals — produces a prioritized findings report |
| **api-designer** | [api-designer.md](./api-designer.md) | Designs and implements REST APIs — DTOs, versioning, Swagger docs, global exception middleware |
| **continuous-developer** | [continuous-developer.md](./continuous-developer.md) | Marathon development — works continuously without stopping to maximize session progress |

> **Migrating from an older version?** `agent-reporter` and `documentation-writer` have been merged into the single `documentation` agent. Update any references accordingly.

---

## How to Use These Agents in Your Project

### Option 1 (Recommended): One-Command Download

Use the Quick Download script above to fetch all agent files at once.

### Option 2: Download Individual Agents

If you only need specific agents, download them one at a time:

```bash
BASE="https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/.github/agents"
mkdir -p .github/agents
curl -fsSL "$BASE/documentation.md" -o .github/agents/documentation.md
curl -fsSL "$BASE/security-auditor.md" -o .github/agents/security-auditor.md
```

### Option 3: Invoke from the Copilot CLI

```bash
# Install the CLI: https://gh.io/customagents/cli
gh copilot agent run code-formatter -- "Review and reformat UserService.cs"
gh copilot agent run test-engineer -- "Write tests for the CreateLicense method"
gh copilot agent run security-auditor -- "Audit the authentication controller"
gh copilot agent run documentation -- "Document and report the session I just completed"
```

---

## Agent Selection Guide

| Task | Agent |
|------|-------|
| "Review this file for naming and comment issues" | `code-formatter` |
| "Update the docs and write the post-task report" | `documentation` |
| "Build the dashboard page / add a new form" | `ui-designer` |
| "What does this compiled binary do?" | `binary-analyst` |
| "Write tests for this service class" | `test-engineer` |
| "Set up a new project from scratch" | `project-initializer` |
| "Design the users table and create a migration" | `database-architect` |
| "Review this PR for security issues" | `security-auditor` |
| "Design and implement the API endpoints for orders" | `api-designer` |
| "Implement as much of this sprint as possible" | `continuous-developer` |

### Agent Collaboration Patterns

These agents are designed to work together. `continuous-developer` is the **orchestrator** — it delegates to specialized agents rather than implementing everything itself:

```
continuous-developer (orchestrator)
    │
    ├── project-initializer   sets up new project structure
    │
    ├── database-architect    designs schema, creates migrations
    │
    ├── api-designer          builds endpoint layer
    │
    ├── code-formatter        cleans up each layer before committing
    │
    ├── test-engineer         writes unit tests after each service
    │
    ├── security-auditor      reviews auth and data-access code
    │
    └── documentation         wraps up the session (docs + report)
```

The specialist agents (`database-architect`, `api-designer`, etc.) can also be invoked standalone for targeted tasks without `continuous-developer`.

---

## Agent Compatibility

These agent profiles are compatible with:
- **GitHub Copilot coding agent** (GitHub.com) — primary target
- **Copilot CLI** — for local testing
- **VS Code Copilot** — with `argument-hint` and `handoffs` properties (VS Code only)

> **Note:** The `mcp-servers` configurations in `ui-designer.md` and `binary-analyst.md` require MCP server dependencies to be available in the environment. See each agent's file for setup details.
