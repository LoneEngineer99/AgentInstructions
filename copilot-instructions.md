---
applyTo: '**'
---

# Project Copilot Instructions — Agent Guide

> **Purpose:** This document is the **single source of truth** for AI coding agents working on this project. It extends the base instructions with project-specific context. Read both this file and the base instructions fully before every task. Keep this file up to date after every major modification. **Continue working until the problem is completely solved.** Before performing any task, briefly list the sub-steps you intend to follow.

---

## ⚠️ Base Instructions Reference

**You MUST read and follow the base instructions document before starting any task.**

The base instructions are maintained in the [Angent Instructions repository](https://github.com/LoneEngineer99/AgentInstructions) and should **always be read from there by URL** — never copied into individual projects. Fetch and read the latest version from:

> **Raw URL:** `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/base-copilot-instructions.md`

If you are working inside the Starter Kit repository itself, you may read the file locally at `.github/base-copilot-instructions.md`.

### Rules for Base Instructions

1. **ALWAYS fetch and read** the base instructions from the URL above at the start of every task.
2. **ALWAYS follow** all rules, conventions, principles, and standards defined in the base instructions.
3. **NEVER copy** `base-copilot-instructions.md` into your project — always reference it by URL from the Starter Kit repository.
4. **NEVER modify** `base-copilot-instructions.md` — it is a shared document used across multiple projects.
5. **If this file (`copilot-instructions.md`) conflicts with the base instructions**, this file takes precedence — project-specific overrides win.
6. **All project-specific customizations, overrides, and context** belong in this file, not in the base instructions.
7. **When the base instructions say to "update this guide"**, it means update **this file** (`copilot-instructions.md`), never the base file.

---

## Table of Contents

### 🚀 [NEW PROJECT INITIALIZATION](#-new-project-initialization) ← **DELETE THIS AFTER PROJECT SETUP**

### [Project Context & Architecture](#project-context--architecture)
- [Project Overview](#project-overview)
- [Repository Structure](#repository-structure)
- [Architecture Patterns](#architecture-patterns)
- [Build & Run Commands](#build--run-commands)
- [Database Schema & Migrations](#database-schema--migrations)
- [Site Templates & Design References](#site-templates--design-references)

### [Project Status & Notes](#project-status--notes)
- [Current Implementation Status](#current-implementation-status)
- [Additional Notes](#additional-notes)

---

# 🚀 NEW PROJECT INITIALIZATION

> **⚠️ CRITICAL — READ THIS FIRST**: This section is for **new projects only**. If this is your first time working on a project based on this Starter Kit template, you **MUST** complete the initialization process below before starting any development work. **Delete this entire section** once project initialization is complete and the Project Context & Architecture section is fully populated.

## Purpose

This Starter Kit is a template designed to be adapted for various types of projects. Before you begin development, you need to gather comprehensive information about the specific project you're building to properly configure the development environment and documentation.

## Initialization Protocol

### Step 1: Discovery Phase

Before making ANY code changes, conduct a thorough discovery session with the project stakeholder. Ask ALL of the following questions and document the answers. Be methodical and complete — don't skip questions.

#### Project Identity & Goals

1. **What is the project name?**
   - Official name / working name
   - Any acronyms or abbreviations?

2. **What is the primary purpose of this project?**
   - What problem does it solve?
   - Who are the target users?
   - What value does it provide?

3. **What are the key features or capabilities?**
   - List all major features (aim for at least 5-10)
   - What distinguishes this from similar projects?
   - Are there any unique/innovative aspects?

4. **What is the project scope?**
   - What's included in the initial release (MVP)?
   - What's planned for future phases?
   - What's explicitly out of scope?

#### Technical Architecture

5. **What technology stack should be used?**
   - **Backend**: Framework, language, runtime version
   - **Frontend**: Framework, library, build tools
   - **Database**: Type (SQL/NoSQL), specific system, version
   - **APIs**: REST, GraphQL, gRPC, other?
   - **Authentication**: Strategy (JWT, OAuth, sessions, etc.)

6. **What are the deployment requirements?**
   - Hosting platform (cloud provider, on-premises, etc.)
   - Container strategy (Docker, Kubernetes, none?) — **Default is NONE; do not use containerization unless the user explicitly requests it**
   - CI/CD pipeline requirements
   - Environment stages (dev, staging, production)

7. **What are the performance and scale requirements?**
   - Expected user load (concurrent users, requests per second)
   - Data volume expectations
   - Response time requirements
   - Any specific scalability constraints?

8. **What are the security requirements?**
   - Authentication requirements
   - Authorization model (RBAC, ABAC, etc.)
   - Data encryption needs (at rest, in transit)
   - Compliance requirements (GDPR, HIPAA, SOC2, etc.)
   - Security audit or penetration testing plans?

#### Project Structure & Organization

9. **How should the codebase be organized?**
   - Monorepo vs. multiple repositories?
   - Project folder structure preferences
   - Separation of concerns strategy
   - Shared libraries or packages?

10. **What are the naming conventions?**
    - Are there specific conventions beyond the defaults in the base instructions (Part III)?
    - Any organizational preferences (e.g., feature-based vs. layer-based folders)?
    - File naming patterns specific to this project?

#### Development Workflow

11. **What are the build and run requirements?**
    - How to install dependencies?
    - How to build the project?
    - How to run locally for development?
    - How to run tests?
    - How to lint/format code?

12. **What validation and quality assurance strategy should be used?**
    - How should features be validated (manual testing, build checks, end-to-end runs)?
    - Integration testing approach (if applicable)
    - Performance validation needs
    - Are there any existing automated testing requirements or expectations?

13. **What are the code quality standards?**
    - Linting rules and configuration
    - Code formatting standards
    - Code review requirements
    - Documentation expectations
    - Commit message conventions

#### Database & Data Management

14. **What is the data model?**
    - Core entities and relationships
    - Data access patterns
    - Migration strategy
    - Seeding/fixture requirements
    - Backup and recovery strategy

15. **What are the data retention and privacy requirements?**
    - How long should data be retained?
    - Soft delete vs. hard delete strategy
    - Data anonymization needs
    - User data export/deletion capabilities (right to be forgotten)

#### External Integrations

16. **What external services or APIs will be integrated?**
    - Payment processors
    - Email services
    - Cloud storage
    - Analytics platforms
    - Third-party APIs
    - Authentication providers (social login, SSO)

17. **What are the API design requirements?**
    - Versioning strategy
    - Rate limiting
    - Documentation approach (OpenAPI/Swagger, etc.)
    - Webhook support
    - API key management

#### UI/UX & Design

18. **What are the UI/UX requirements?**
    - Design system or style guide to follow
    - Responsive design requirements (mobile, tablet, desktop)
    - Accessibility standards (WCAG level)
    - Internationalization/localization needs
    - Theme support (dark mode, etc.)

19. **Are there any HTML templates that should be used for the project?**
    - Are there HTML/CSS templates to use as reference for UI elements (cards, tables, modals, forms, charts, navbars, etc.)?
    - Where are these templates located (directory path, URL, or external resource)?
    - What is the purpose of each template (e.g., public-facing pages, dashboard/admin panel, email templates)?

20. **What are the branding guidelines?**
    - Color palette
    - Typography
    - Logo and asset requirements
    - Tone and voice guidelines

#### Project Management

21. **What is the development timeline?**
    - Project start date
    - Key milestones and deadlines
    - Release schedule (if applicable)
    - Sprint/iteration length (if using Agile)

22. **Who are the stakeholders?**
    - Project owner/sponsor
    - Development team members and roles
    - Key decision makers
    - End users or user representatives

23. **What is the communication plan?**
    - Status update frequency and format
    - Issue tracking system (GitHub Issues, Jira, etc.)
    - Documentation location (wiki, Confluence, etc.)
    - Team communication channels (Slack, Teams, etc.)

#### Domain-Specific Questions

24. **Are there any industry-specific or domain-specific requirements?**
    - Regulatory compliance needs
    - Industry standards to follow
    - Domain terminology and glossary
    - Special workflows or business rules

### Step 2: Document the Answers

Create a temporary working document with all answers. You can use:
- A temporary markdown file in `/tmp/project-init-answers.md`
- A structured note in the conversation
- A shared document with the stakeholder

### Step 3: Populate the Project Context & Architecture Section

Using the answers from Step 1, systematically fill in the sections below:

#### 3.1: Update Project Overview

```markdown
**[Project Name]** — [Brief description from Q2]

| Component | Path | Purpose | Tech Stack |
|-----------|------|---------|------------|
| **[Component from Q5]** | `path/` | [Purpose] | [Technologies] |
```

- Use answers from Q1, Q2, Q3, Q5 to fill this section
- Create a table row for each major component/module

#### 3.2: Update Repository Structure

```
ProjectRoot/
├── .github/
│   └── copilot-instructions.md        # Project-specific instructions (this file)
├── [backend-directory]/      # Based on Q9
├── [frontend-directory]/     # Based on Q9
├── [tests-directory]/        # Based on Q9, Q12
└── README.md
```

> **Note:** `base-copilot-instructions.md` is NOT copied into the project. It is always read by URL from the Starter Kit repository (see [Base Instructions Reference](#-base-instructions-reference)).

- Use answers from Q9 to define the actual folder structure
- Be specific based on the chosen architecture

#### 3.3: Update Architecture Patterns

Document the actual architecture based on Q5, Q6, Q14:
- Layer separation strategy
- Dependency injection approach
- Model architecture (database → domain → DTO)
- API design patterns

#### 3.4: Update Build & Run Commands

Fill in with actual commands from Q11:

```bash
# Install dependencies
[actual command]

# Build
[actual command]

# Run (development)
[actual command]

# Run (production)
[actual command]

# Test
[actual command]

# Lint
[actual command]
```

#### 3.5: Update Database Schema & Migrations

Document based on Q14, Q15:
- Schema location
- Migration tool and commands
- Seeding strategy
- Backup approach

#### 3.6: Update Site Templates & Design References

Based on the user's answers to Q19 (HTML templates):
- Document any HTML/CSS template sources (name, path, and purpose)
- Link to design systems or style guides
- Note branding assets location
- **Store each template source as a GitHub memory** using the `store_memory` tool, including the template name, path, and purpose in each memory entry

#### 3.7: Update Current Implementation Status

Fill in the implementation phases based on Q4, Q21:

```markdown
**Phase: Initial Setup**

#### Completed
- Project initialization
- [Other setup tasks]

#### In Progress
- [Current sprint/phase work from Q21]

#### Planned
- [Future features from Q4]
```

### Step 4: Update Project README

Based on the initialization answers, update `/README.md` with:
- Project name and description (Q1, Q2)
- Key features (Q3)
- Technology stack (Q5)
- Getting started guide (Q11)
- Contribution guidelines
- License information
- Contact information (Q22)

### Step 5: Create Project Setup Checklist

Create a comprehensive setup checklist for new developers:

```markdown
## Developer Setup

- [ ] Clone repository
- [ ] Install prerequisites: [list from Q5, Q11]
- [ ] Install dependencies: [command from Q11]
- [ ] Configure environment variables: [list based on Q5, Q16]
- [ ] Initialize database: [steps from Q14]
- [ ] Run migrations: [command from Q14]
- [ ] Seed test data: [command from Q14]
- [ ] Run tests to verify setup: [command from Q11]
- [ ] Start development server: [command from Q11]
```

### Step 6: Remove This Section

Once you have:
- ✅ Asked all discovery questions
- ✅ Documented all answers
- ✅ Updated all project-specific sections with actual information
- ✅ Updated README.md
- ✅ Created developer setup instructions
- ✅ Verified all placeholders are replaced with actual information

**DELETE this entire "NEW PROJECT INITIALIZATION" section** from this file — everything between the `# 🚀 NEW PROJECT INITIALIZATION` heading and the `# Project Context & Architecture` heading.

**Update the Table of Contents** to remove the reference to this section.

**Commit the changes** with a message like: "Complete project initialization for [Project Name]"

---

# Project Context & Architecture

> **⚠️ IMPORTANT**: Fill in this section with project-specific details as the project evolves. The sections below are templates — replace the placeholders with actual project information. For base conventions and standards, refer to `.github/base-copilot-instructions.md`.

## Project Overview

<!-- AGENT: Replace this section with actual project details -->

**[Project Name]** — [Brief description of what the project does].

| Component | Path | Purpose | Tech Stack |
|-----------|------|---------|------------|
| **[Component 1]** | `path/` | [Purpose] | [Technologies] |
| **[Component 2]** | `path/` | [Purpose] | [Technologies] |

---

## Repository Structure

<!-- AGENT: Replace this tree with actual project structure -->

```
ProjectRoot/
├── .github/
│   └── copilot-instructions.md        # This file — project-specific agent context & rules
├── src/                               # Source code
├── tests/                             # Test files
├── docs/                              # Documentation
├── UpdateReports/                     # Post-task summary documentation
│   └── media/                         # Screenshots and media for reports
└── README.md
```

> **Note:** `base-copilot-instructions.md` is **not** stored in the project. Agents always read it by URL from the [Agent Instructions Repository](https://github.com/LoneEngineer99/AgentInstructions).

---

## Architecture Patterns

<!-- AGENT: Document the actual architecture patterns used in this project -->

[Document project-specific architecture here. See base instructions for general patterns.]

---

## Build & Run Commands

<!-- AGENT: Replace with actual build/run commands for this project -->

```bash
# Build
[build command here]

# Run
[run command here]

# Test
[test command here]

# Lint
[lint command here]
```

---

## Database Schema & Migrations

<!-- AGENT: Document database details as they are created -->

### Schema Location

[Path to canonical schema file, if applicable]

[See base instructions (§23) for database change rules and sync checklist.]

---

## Site Templates & Design References

<!-- AGENT: Ask the user about HTML templates during project initialization (Q19). Document template sources here and store them as GitHub memories using store_memory. -->

[No templates configured yet. During project initialization, ask the user if there are any HTML templates that should be used. Document template name(s), path(s), and purpose(s) here. Also store each template source as a GitHub memory using the `store_memory` tool. See base instructions (§24) for guidelines on how to use templates once they are identified.]

---

# Project Status & Notes

## Current Implementation Status

<!-- AGENT: Keep this section updated with current progress -->

**Phase: [Current Phase]**

#### Completed
- [ List completed features/tasks ]

#### In Progress
- [ List current work items ]

#### Planned
- [ List upcoming work ]

---

## Project-Specific Overrides

<!-- AGENT: Add any project-specific rules that override or extend the base instructions here -->

*No project-specific overrides defined yet.*

---

## Additional Notes


---

*Last updated: 2026-02-15 — Separated base instructions into standalone document*
*Created: 2026-02-14 — Initial starter kit template*
