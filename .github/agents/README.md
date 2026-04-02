# Custom Agents Index

This directory contains **custom agent profiles** for GitHub Copilot coding agent. Each agent is a specialized expert that can be invoked for specific tasks.

> **Remote projects:** Download all files from this directory into your project's `.github/agents/` directory so AI agents can read them **without requiring internet access at runtime**. The canonical `AGENTS.md` rules file should be **fetched by URL** on every agent session (not stored locally) — see below.
>
> Agent file download URLs follow this pattern:
> ```
> https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/.github/agents/README.md
> https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/.github/agents/<agent-name>.md
> ```
>
> Canonical rules URL (fetch each session, do not store locally):
> ```
> https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md
> ```

---

## Available Agents

| Agent | File | Purpose |
|-------|------|---------|
| **code-formatter** | [code-formatter.md](./code-formatter.md) | Enforces naming conventions, inline comments, and XML doc blocks |
| **agent-reporter** | [agent-reporter.md](./agent-reporter.md) | Creates post-task reports with minimum 6 screenshots |
| **ui-designer** | [ui-designer.md](./ui-designer.md) | Designs and implements web UI components with design system compliance |
| **binary-analyst** | [binary-analyst.md](./binary-analyst.md) | Reverse engineers x64 binaries and identifies attack surfaces |
| **test-engineer** | [test-engineer.md](./test-engineer.md) | Writes focused unit tests covering input validation and critical paths |
| **project-initializer** | [project-initializer.md](./project-initializer.md) | Sets up new projects with AGENTS.md, roadmap, and folder structure |
| **database-architect** | [database-architect.md](./database-architect.md) | Designs schemas, writes migrations, and implements Dapper repositories |
| **security-auditor** | [security-auditor.md](./security-auditor.md) | Audits code for security vulnerabilities and produces remediation reports |
| **api-designer** | [api-designer.md](./api-designer.md) | Designs REST APIs with DTOs, versioning, and OpenAPI documentation |
| **documentation-writer** | [documentation-writer.md](./documentation-writer.md) | Maintains README, AGENTS.md, roadmap, and ADRs |
| **continuous-developer** | [continuous-developer.md](./continuous-developer.md) | Maximizes session progress on long-running tasks — works continuously without stopping until the project is as close to complete as possible |

---

## How to Use These Agents in Your Project

### Option 1 (Recommended): Download agent files locally

Download all `.github/agents/*.md` files from the AgentInstructions repository and save them into your project's `.github/agents/` directory. Commit them so AI agents can read them without needing network access.

The canonical `AGENTS.md` rules file is **not** downloaded — agents fetch it by URL on each session to always get the latest version:
```
https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md
```

Agent files to download and store locally:
- `.github/agents/README.md`
- `.github/agents/agent-reporter.md`
- `.github/agents/api-designer.md`
- `.github/agents/binary-analyst.md`
- `.github/agents/code-formatter.md`
- `.github/agents/continuous-developer.md`
- `.github/agents/database-architect.md`
- `.github/agents/documentation-writer.md`
- `.github/agents/project-initializer.md`
- `.github/agents/security-auditor.md`
- `.github/agents/test-engineer.md`
- `.github/agents/ui-designer.md`

Then commit the files to your repository:
```bash
git add .github/agents/
git commit -m "chore: add AgentInstructions custom agent files"
```

**To update files** when this repository changes: re-download and re-commit the updated agent files.

### Option 2: Copy individual agent files manually

If you only need specific agents, copy the relevant `.md` files from `.github/agents/` into your own `.github/agents/` directory.

### Option 3: Invoke from the Copilot CLI

Use the Copilot CLI to test agents locally:

```bash
# Install the CLI: https://gh.io/customagents/cli
gh copilot agent run code-formatter -- "Review and reformat UserService.cs"
gh copilot agent run test-engineer -- "Write tests for the CreateLicense method"
gh copilot agent run security-auditor -- "Audit the authentication controller"
```

---

## Agent Selection Guide

Use this guide to decide which agent to invoke for common tasks:

| Task | Agent |
|------|-------|
| "Review this file for naming and comment issues" | `code-formatter` |
| "Write a summary report of what I just built" | `agent-reporter` |
| "Build the dashboard page / add a new form" | `ui-designer` |
| "What does this compiled binary do?" | `binary-analyst` |
| "Write tests for this service class" | `test-engineer` |
| "Set up a new project from scratch" | `project-initializer` |
| "Design the users table and create a migration" | `database-architect` |
| "Review this PR for security issues" | `security-auditor` |
| "Design the API endpoints for orders" | `api-designer` |
| "Update the README and roadmap after my changes" | `documentation-writer` |
| "Implement as much of this feature/sprint as possible in one session" | `continuous-developer` |

---

## Agent Compatibility

These agent profiles are compatible with:
- **GitHub Copilot coding agent** (GitHub.com) — primary target
- **Copilot CLI** — for local testing
- **VS Code Copilot** — with `argument-hint` and `handoffs` properties (VS Code only)

> **Note:** The `mcp-servers` configurations in `ui-designer.md` and `binary-analyst.md` require MCP server dependencies to be available in the environment. See each agent's file for setup details.
