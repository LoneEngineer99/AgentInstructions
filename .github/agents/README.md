# Custom Agents Index

This directory contains **custom agent profiles** for GitHub Copilot coding agent. Each agent is a specialized expert that can be invoked for specific tasks.

> **Remote projects:** Fetch this index file to discover all available agents:
> ```
> https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/.github/agents/README.md
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

### Option 1: Reference by URL in your local AGENTS.md

Add this block to your project's local `AGENTS.md` so agents know to look for specialized help:

```markdown
## Available Custom Agents

This project uses the specialized custom agents from the canonical repository.
Fetch the agent index to discover all available agents:

**Agent Index URL:** `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/.github/agents/README.md`

When a task falls into one of the following categories, invoke the corresponding agent:
- **Code formatting / naming** → `code-formatter`
- **Post-task reports** → `agent-reporter`
- **UI / front-end work** → `ui-designer`
- **Binary analysis / security research** → `binary-analyst`
- **Writing tests** → `test-engineer`
- **New project setup** → `project-initializer`
- **Database schema / migrations** → `database-architect`
- **Security audit** → `security-auditor`
- **REST API design** → `api-designer`
- **Documentation updates** → `documentation-writer`
- **Long-running / continuous development tasks** → `continuous-developer`
```

### Option 2: Copy agent files into your repository

If your repository needs these agents available locally (for offline use or customization), copy the relevant `.md` files from this directory into your own `.github/agents/` directory. You can then customize the instructions for your project's specific needs.

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
