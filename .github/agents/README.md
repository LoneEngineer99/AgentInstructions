# Custom Agents Index

This directory contains **custom agent profiles** for GitHub Copilot coding agent. Each agent is a specialized expert that can be invoked for specific tasks.

> **Remote projects:** Run `setup-agents.sh` from the [AgentInstructions repository](https://github.com/LoneEngineer99/AgentInstructions) to download all agent files into your project's `.github/agents/` directory. This ensures AI agents can read the files **without requiring internet access at runtime**.
>
> ```bash
> bash <(curl -fsSL https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/setup-agents.sh)
> ```
>
> After syncing, validate the files are intact before each agent session:
> ```bash
> bash setup-agents.sh --validate
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

### Option 1 (Recommended): Sync agent files locally with `setup-agents.sh`

Run the setup script to download all canonical files into your project:

```bash
# One-line bootstrap (run from your project root)
bash <(curl -fsSL https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/setup-agents.sh)
```

This downloads:
- `AGENTS.md` — canonical rules file
- `.github/agents/README.md` — this index
- `.github/agents/CHECKSUMS.sha256` — integrity checksums
- `.github/agents/*.md` — all 11 agent profiles

Then commit the files to your repository:

```bash
git add AGENTS.md .github/agents/
git commit -m "chore: sync AgentInstructions canonical agent files"
```

**Validate on every agent session** — add this to your project's `AGENTS.md` and run it before starting work:

```bash
bash setup-agents.sh --validate
```

If validation fails (files modified or missing), re-run `setup-agents.sh` to restore the canonical copies.

### Option 2: Copy individual agent files manually

If you only need specific agents, copy the relevant `.md` files from `.github/agents/` into your own `.github/agents/` directory. Copy `CHECKSUMS.sha256` too so you can validate later.

### Option 3: Invoke from the Copilot CLI

Use the Copilot CLI to test agents locally:

```bash
# Install the CLI: https://gh.io/customagents/cli
gh copilot agent run code-formatter -- "Review and reformat UserService.cs"
gh copilot agent run test-engineer -- "Write tests for the CreateLicense method"
gh copilot agent run security-auditor -- "Audit the authentication controller"
```

---

## Integrity Validation

Each canonical file has a SHA256 checksum recorded in `CHECKSUMS.sha256`. On every agent session:

1. Run `bash setup-agents.sh --validate`
2. If all files pass — proceed normally
3. If any file fails — re-run `bash setup-agents.sh` to re-sync, then commit the updated files

This protects against:
- Files accidentally edited in the remote project
- Stale files that differ from the latest upstream version
- Incomplete syncs

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
