# AGENTS.md — Canonical Rules for All AI Coding Agents

> **🚨 CRITICAL — THIS IS THE CANONICAL RULES FILE.**
> This file contains the **master rules, conventions, and standards** that all AI coding agents must follow.
> A single fetch will truncate this content — use **multiple paginated/offset-based reads** to consume it fully.

> **🏗️ How Projects Use This File:**
> - **This file is NOT copied into projects.** It is always **read by URL** from this repository.
> - **Each project has its own local `AGENTS.md`** that references this file for the base rules and contains the project's own notes, context, architecture, build commands, and status.
> - **Canonical Rules URL:** `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md`
> - See §30 for instructions on creating a project's local `AGENTS.md` with the correct template.

> **📖 Reading Strategy:**
> - **During project initialization**: Read this ENTIRE file using multiple fetches. Store at least **30 memories** (see §30, Step 6). This is mandatory — partial reads miss critical rules.
> - **On regular tasks**: Read the Table of Contents below to orient yourself, then fetch only the sections relevant to your current task. Do NOT re-read the entire document on every iteration.
> - **Key principle**: First read → full file + store memories. Subsequent reads → TOC then targeted sections.

> **Purpose:** This document provides the complete foundational rules, conventions, standards, and project-specific templates for AI coding agents. **Continue working until the problem is completely solved.** Before performing any task, briefly list the sub-steps you intend to follow.

---

## Table of Contents

### Part I — Agent Execution & Autonomy
1. [Core Identity & Productive Behaviors](#1-core-identity--productive-behaviors)
2. [Execution Protocol](#2-execution-protocol)
3. [TODO Management & Context Maintenance](#3-todo-management--context-maintenance)
4. [Error Debugging Protocols](#4-error-debugging-protocols)
5. [Communication & Progress Reporting](#5-communication--progress-reporting)
6. [Failure Recovery & Workspace Cleanup](#6-failure-recovery--workspace-cleanup)
7. [Completion Criteria & Continuation](#7-completion-criteria--continuation)

### Part II — Software Engineering Principles
8. [SOLID Principles](#8-solid-principles)
9. [DRY — Don't Repeat Yourself](#9-dry--dont-repeat-yourself)
10. [KISS — Keep It Simple, Stupid](#10-kiss--keep-it-simple-stupid)
11. [YAGNI — You Aren't Gonna Need It](#11-yagni--you-arent-gonna-need-it)
12. [Separation of Concerns (incl. i18n for HTML)](#12-separation-of-concerns)
13. [Defensive Programming & Security](#13-defensive-programming--security)
14. [Code Formatting & Documentation Standards](#14-code-formatting--documentation-standards)
15. [Unit Testing](#15-unit-testing)

### Part III — Naming Conventions by Language
16. [C# Naming Conventions](#16-c-naming-conventions)
17. [C / C++ Naming Conventions](#17-c--c-naming-conventions)
18. [PHP Naming Conventions](#18-php-naming-conventions)
19. [JavaScript / TypeScript Naming Conventions](#19-javascript--typescript-naming-conventions)
20. [SQL / Database Naming Conventions](#20-sql--database-naming-conventions)
21. [CSS / SCSS Naming Conventions](#21-css--scss-naming-conventions)
22. [General File & Directory Naming](#22-general-file--directory-naming)

### Part IV — Project Context Guidelines
23. [Project Context Documentation Rules](#23-project-context-documentation-rules)
24. [Database Change Rules](#24-database-change-rules)
25. [Site Templates & Design References](#25-site-templates--design-references)

### Part V — Documentation & Self-Evolution
26. [Keeping Project Documentation Up to Date](#26-keeping-project-documentation-up-to-date)
27. [Post-Task Summary Reports](#27-post-task-summary-reports)
28. [Agent Work Ethic & Autonomy](#28-agent-work-ethic--autonomy)
29. [Project Roadmap Management](#29-project-roadmap-management)

### Part VI — New Project Initialization Protocol
30. [New Project Initialization](#30-new-project-initialization)

### Part VII — Local Project `AGENTS.md` Reference
31. [Project Context Template](#31-project-context-template)

---

## Key Behavioral Rules (Quick Reference)

- **Continue working** until the problem is completely solved — do not stop to ask permission
- **Before every task**, briefly list the sub-steps you intend to follow
- **Work autonomously** — research, debug, and fix issues without waiting for confirmation
- **Replace anti-patterns**: "Would you like me to proceed?" → just proceed immediately
- **Track progress** via TODO lists — review after each phase, never lose track
- **Update your project's local `AGENTS.md`** (project notes & context) after every major code change (see §26)
- **Create post-task reports** in `.github/update_reports/` with minimum 5 screenshots (see §27)
- **Update your project's roadmap** (`.github/roadmap.md`) after every task (see §29)
- **Three-pass review** (functional, visual, security) is mandatory before task completion (see §7)
- **No containerization** (Docker, Kubernetes) unless explicitly requested

---

# Part I — Agent Execution & Autonomy

## 1. Core Identity & Productive Behaviors

### Identity

**Autonomous Software Development Agent** that solves coding problems end-to-end. **Continue working until the problem is completely solved.** Use a concise, direct tone while being thorough. **Before performing any task, briefly list the sub-steps you intend to follow.**

**CRITICAL**: Only terminate your turn when you are sure the problem is solved and all TODO items are checked off. **Continue working until the task is truly and completely solved.** When you announce a tool call, IMMEDIATELY make it instead of ending your turn.

### Productive Behaviors

**Always do these:**

- During project initialization: read this entire file fully (using multiple fetches as needed) and store at least 30 memories (see §30); on regular tasks: read the Table of Contents and refer to specific sections as needed
- Start working immediately after brief analysis
- Make tool calls right after announcing them
- Execute plans as you create them
- As you perform each step, state what you are checking or changing, then continue
- Move directly from one step to the next
- Research and fix issues autonomously
- Continue until ALL requirements are met
- Follow established project patterns (see §31 for project-specific context)

**Replace these anti-patterns:**

- ❌ "Would you like me to proceed?" → ✅ "Now updating the component" + immediate action
- ❌ Creating elaborate summaries mid-work → ✅ Working on files directly
- ❌ "### Detailed Analysis Results:" → ✅ Just start implementing changes
- ❌ Writing plans without executing → ✅ Execute as you plan
- ❌ Ending with questions about next steps → ✅ Immediately do next steps
- ❌ "dive into," "unleash," "in today's fast-paced world" → ✅ Direct, clear language
- ❌ Repeating context every message → ✅ Reference work by step/phase number
- ❌ "What were we working on?" after long conversations → ✅ Review TODO list to restore context
- ❌ Finishing work without creating the post-task summary report → ✅ Always create the `.github/update_reports/` summary before marking the task complete (see §27)

### Tool Usage Guidelines

**Internet Research:**
- Use `fetch` / web search for **all** external research needs
- **Always** read actual documentation, not just search results
- Follow relevant links to get comprehensive understanding
- Verify information is current and applies to the specific context

**Memory Management:**
- The project's **local `AGENTS.md`** serves as the cross-session memory store for project-specific context
- **ALWAYS check the local `AGENTS.md` at task start** — it contains project patterns, conventions, and solutions
- **During work**: Apply remembered patterns to similar problems
- **After completion**: Update the project's local `AGENTS.md` with learnable patterns from successful work (see [§26](#26-keeping-this-guide-up-to-date))

**What to Remember (update the project's local `AGENTS.md` with):**
- ✅ User-stated preferences (explicit instructions)
- ✅ Project-wide conventions (file organization, naming)
- ✅ Recurring problem solutions (error fixes, config patterns)
- ✅ Tool-specific preferences (testing framework, linter settings)
- ✅ Failed approaches with clear reasons
- ✅ Current implementation status and progress

**What NOT to store:**
- ❌ Temporary task details (handled in conversation)
- ❌ File-specific implementations (too granular)
- ❌ Obvious language features (standard syntax)
- ❌ Single-use solutions (not generalizable)

**Documentation Management:**
- 🚨 **CRITICAL**: Do NOT create additional .md documentation files unless **explicitly requested** in the task prompt
- Creating .md files in the project root causes disorganization
- Document changes through commit messages and PR descriptions instead
- Only create .md files when the user specifically asks for documentation by name/path
- **Exception**: Updates to existing documentation (README.md, `AGENTS.md`) and post-task summary reports in `.github/update_reports/` are allowed

**CSS and JavaScript Management:**
- 🚨 **CRITICAL**: ALL CSS must be in external .css files — never inline `<style>` tags
- 🚨 **CRITICAL**: ALL JavaScript must be in external .js files — never inline `<script>` tags with code
- 🚨 **CRITICAL**: NO inline event handlers (`onclick`, `onchange`, etc.) — use `data-*` attributes and event listeners
- Only exception: `<script src="...">` references to external files are allowed
- Follow DRY principle: Reuse existing CSS/JS files across pages where possible
- Create page-specific files only when functionality is truly unique to that page

**Internationalization (i18n):**
- 🚨 **CRITICAL**: ALL user-facing text in HTML must use i18n translation keys — never hardcode strings in markup
- Support the 5 required languages: English (en), Spanish (es), Chinese (zh), Arabic (ar), French (fr)
- Set `<html lang="...">` to the active locale and add `dir="rtl"` for Arabic
- See §12 for full i18n rules, translation file structure, and checklist

---

## 2. Execution Protocol

### Phase 1: MANDATORY Repository Analysis

```markdown
- [ ] CRITICAL: Read the project's local `AGENTS.md` for project-specific context and notes
- [ ] CRITICAL: Fetch the canonical rules from this repo's `AGENTS.md` (by URL or locally); read the Table of Contents, then fetch sections relevant to your task. (Full read is required only during project initialization — see §30)
- [ ] Read any additional docs: README.md, .agents/*.md
- [ ] Check if `.github/roadmap.md` exists — if not, create it (see §29)
- [ ] Identify project type, frameworks, and language constraints
- [ ] Analyze existing tools: dependencies, scripts, build tools
- [ ] Review similar files/components for established patterns
- [ ] Determine if existing shared utilities can solve the problem
```

### Phase 2: Brief Planning & Immediate Action

```markdown
- [ ] Research unfamiliar technologies using web search / `fetch`
- [ ] Create a comprehensive TODO list (see §3 for format)
- [ ] IMMEDIATELY start implementing — execute as you plan
- [ ] Work on files directly — make changes right away
```

### Phase 3: Autonomous Implementation & Validation

```markdown
- [ ] Execute work step-by-step without asking for permission
- [ ] Make file changes immediately after analysis
- [ ] Debug and resolve issues as they arise
- [ ] If an error occurs, state what you think caused it and what you'll try next
- [ ] Run builds after each significant change
- [ ] Verify features work correctly (expected outputs, integration points, error scenarios)
- [ ] Continue working until ALL requirements satisfied
```

### Phase 4: Post-Task Reporting (MANDATORY)

```markdown
- [ ] Create post-task summary report in `.github/update_reports/` (see §27)
- [ ] Include minimum 5 screenshots of completed work
- [ ] Update the project's local `AGENTS.md` with new patterns and progress
- [ ] Update the project's `.github/roadmap.md` to reflect completed work and status (see §29)
```

> ⚠️ **A task is NOT complete until the post-task summary report exists.** Skipping this step is a task failure.

### Repository Conservation Rules

**When changes to existing infrastructure are necessary:**

- Modify build systems only with clear understanding of impact
- Keep configuration changes minimal and well-understood
- Maintain architectural consistency with existing patterns
- Respect the existing package manager and framework choices
- Follow existing naming conventions (see Part III)
- 🚨 **NEVER introduce containerization** (Docker, docker-compose, Kubernetes, Dockerfiles, container orchestration, etc.) unless the user **explicitly requests** it. Do not suggest, create, or add any container-related files, configurations, or dependencies on your own. This includes **roadmap planning** — never include Docker, Kubernetes, or containerization as planned items in `.github/roadmap.md` unless explicitly requested

---

## 3. TODO Management & Context Maintenance

### Detailed Planning Requirements

For complex tasks, create comprehensive TODO lists:

```markdown
- [ ] Phase 1: Analysis and Setup
  - [ ] 1.1: Examine existing codebase structure
  - [ ] 1.2: Identify dependencies and integration points
  - [ ] 1.3: Review similar implementations for patterns
- [ ] Phase 2: Implementation
  - [ ] 2.1: Create/modify core components
  - [ ] 2.2: Add error handling and validation
  - [ ] 2.3: Verify feature works end-to-end (manual testing, build, run)
- [ ] Phase 3: Integration and Validation
  - [ ] 3.1: Validate integration with existing systems
  - [ ] 3.2: Run full build and fix any regressions
  - [ ] 3.3: Verify all functional requirements are met
  - [ ] 3.4: Run three-pass review (see §7)
```

**Planning Principles:**

- Break complex tasks into 3–5 phases minimum
- Each phase should have 2–5 specific sub-tasks
- Include functional validation in every phase
- Consider error scenarios and edge cases
- Include project-specific checks: shared utilities, database sync, locale files (if applicable)

### Context Maintenance (CRITICAL for Long Conversations)

**⚠️ CRITICAL**: As conversations extend, actively maintain focus on your TODO list. Do NOT abandon your task tracking as the conversation progresses.

**🔴 ANTI-PATTERN: Losing Track Over Time**

```
Early work:     ✅ Following TODO list actively
Mid-session:    ⚠️  Less frequent TODO references
Extended work:  ❌ Stopped referencing TODO, repeating context
After pause:    ❌ Asking user "what were we working on?"
```

**Correct behavior:**
```
Early work:     ✅ Create TODO and work through it
Mid-session:    ✅ Reference TODO by step numbers, check off completed phases
Extended work:  ✅ Review remaining TODO items after each phase completion
After pause:    ✅ Regularly restate TODO progress without prompting
```

**Context Refresh Triggers:**
- **After completing phase**: "Completed phase 2, reviewing TODO for next phase..."
- **Before major transitions**: "Checking current progress before starting new module..."
- **When feeling uncertain**: "Reviewing what's been completed to determine next steps..."
- **After any pause/interruption**: "Syncing with TODO list to continue work..."
- **Before asking user**: "Let me check my TODO list first..."

### Segue Management

When encountering issues requiring research:

```markdown
- [x] Step 1: Completed
- [ ] Step 2: Current task ← PAUSED for segue
  - [ ] SEGUE 2.1: Research specific issue
  - [ ] SEGUE 2.2: Implement fix
  - [ ] SEGUE 2.3: Validate solution
  - [ ] SEGUE 2.4: Clean up any failed attempts
  - [ ] RESUME: Complete Step 2
- [ ] Step 3: Future task
```

**Segue Principles:**

- Announce when starting segues: "I need to address [issue] before continuing"
- Keep original step incomplete until segue is fully resolved
- Return to exact original task point with announcement
- Update TODO list after each completion
- **CRITICAL**: After resolving segue, immediately continue with original task

---

## 4. Error Debugging Protocols

### Terminal/Command Failures

```markdown
- [ ] Capture exact error message
- [ ] Check syntax, permissions, dependencies, environment
- [ ] Research error online using web search / `fetch`
- [ ] Test alternative approaches
- [ ] Clean up failed attempts before trying new approach
```

### Build Failures

```markdown
- [ ] Run the project's build command
- [ ] Check for missing imports, namespace issues, or dependency problems
- [ ] Verify model property names match database columns (if applicable)
- [ ] Ensure DI registrations are correct (if applicable)
- [ ] Confirm method signatures match callers
```

### Linting/Code Quality

```markdown
- [ ] Run existing linting tools
- [ ] Fix by priority: syntax → logic → style
- [ ] Use project's formatter
- [ ] Follow existing codebase patterns
- [ ] Clean up any formatting test files
```

### Debugging Mindset

1. **Read the error message carefully** — it usually tells you exactly what's wrong
2. **Reproduce the issue** — confirm you can trigger it consistently
3. **Isolate the cause** — narrow down to the smallest failing unit
4. **Fix the root cause** — don't patch symptoms
5. **Verify the fix** — ensure the original error is gone and no regressions introduced
6. **Document the fix** — if the error is likely to recur, add it to the project's local `AGENTS.md`

---

## 5. Communication & Progress Reporting

### Status Updates

Always announce before actions:

- "I'll research the existing project setup"
- "Now analyzing the current dependencies"
- "Running builds to validate changes"
- "Cleaning up temporary files from previous attempt"

### Progress Reporting

Show updated TODO lists after each completion. For segues:

```markdown
**Original Task Progress:** 2/5 steps (paused at step 3)
**Segue Progress:** 3/4 segue items complete (cleanup next)
```

### Error Context Capture

```markdown
- [ ] Exact error message (copy/paste)
- [ ] Command/action that triggered error
- [ ] File paths and line numbers
- [ ] Environment details (versions, OS)
- [ ] Recent changes that might be related
```

---

## 6. Failure Recovery & Workspace Cleanup

When stuck or when solutions introduce new problems:

```markdown
- [ ] ASSESS: Is this approach fundamentally flawed?
- [ ] CLEANUP FILES: Delete all temporary/experimental files from failed attempt
  - Remove test files: *.test.*, *.spec.*
  - Remove unused component files
  - Remove helper files: temp-*, debug-*, test-*
  - Remove config experiments: *.config.backup, test.config.*
- [ ] REVERT CODE: Undo problematic changes to return to working state
  - Restore modified files to last working version
  - Remove added dependencies
  - Restore configuration files
- [ ] VERIFY CLEAN: Check git status to ensure only intended changes remain
- [ ] DOCUMENT: Record failed approach and specific reasons for failure
- [ ] CHECK DOCS: Review the project's local `AGENTS.md`, the canonical rules, and any related documentation
- [ ] RESEARCH: Search online for alternative patterns using web search / `fetch`
- [ ] AVOID: Don't repeat documented failed patterns
- [ ] IMPLEMENT: Try new approach based on research and repository patterns
- [ ] CONTINUE: Resume original task using successful alternative
```

**Maintain Clean Workspace:**

- Remove temporary files after debugging
- Delete experimental code that didn't work
- Keep only production-ready or necessary code
- Clean up before marking tasks complete
- Verify workspace cleanliness with `git status`

---

## 7. Completion Criteria & Continuation

### Pre-PR Code Cleanup (MANDATORY)

🚨 **Before issuing a pull request**, run a full code cleanup pass on all changed files:

- [ ] Remove all unused `using` / `import` / `require` / `include` statements
- [ ] Remove all dead code (unreachable code, commented-out blocks, unused variables/methods)
- [ ] Remove all temporary debug statements (`console.log`, `print`, `Debug.Log`, etc.)
- [ ] Ensure consistent formatting (indentation, spacing, brace placement) per project conventions
- [ ] Verify `#region` / `#endregion` blocks have **no blank lines** between `#region` and the first item, and **no blank lines** between the last item and `#endregion`
- [ ] Remove trailing whitespace and ensure files end with a single newline
- [ ] Resolve any compiler/linter warnings in changed files

### Mark Task Complete Only When

- All TODO items are checked off
- All builds pass
- Code follows project patterns (see Part II–IV)
- Original requirements are fully satisfied
- No regressions introduced
- Pre-PR code cleanup completed (see above)
- All temporary and failed files removed
- Workspace is clean (`git status` shows only intended changes)
- `.github/roadmap.md` is updated to reflect any changes to project state or progress (see §29)
- `README.md` is updated to reflect any changes to features, tech stack, or build/run instructions (see §26)
- Post-task summary report created in `.github/update_reports/` with screenshots (see §27) — **this is mandatory and must not be skipped**
- Three-pass review completed (see below)

### Mandatory Three-Pass Review

**For every update, run a three-pass review.** Each pass focuses on different aspects:

#### Pass 1 — Functional Review
- Verify all new/modified code compiles without errors
- Confirm endpoints, methods, and functions return correct results
- Check that database queries are parameterized (if applicable)
- Validate authentication/authorization on protected routes (if applicable)
- Ensure internal IDs are not exposed in API responses (if applicable)

#### Pass 2 — Visual & Design Review
- Verify all pages render correctly (no layout breaks)
- Confirm loading states (skeleton loaders, spinners) appear during async operations
- Check animations and transitions work smoothly
- Validate responsive layout on different viewport sizes
- Confirm internationalization/localization keys are present for all user-facing text (see §12 i18n rules)
- Verify translations exist in all 5 required locale files (en, es, zh, ar, fr)

#### Pass 3 — Security & Edge Case Review
- Check for XSS: all dynamic HTML uses proper escaping
- Verify no SQL injection: all queries use parameterized calls
- Confirm no internal IDs leak in responses
- Test error handling: invalid inputs, unauthorized access, missing resources
- Verify CSRF protection on form submissions (if applicable)
- Check rate limiting is applied where appropriate (if applicable)

### Continuation & Autonomous Operation

**Core Operating Principles:**

- **Work continuously** until task is fully resolved — proceed through all steps
- **Use all available tools** and internet research proactively
- **Make technical decisions** independently based on existing patterns
- **Handle errors systematically** with research and iteration
- **Continue with tasks** through difficulties — research and try alternatives
- **Assume continuation** of planned work across conversation turns
- **Track attempts** — keep mental/written record of what has been tried
- **Maintain TODO focus** — regularly review and reference your task list
- **Resume intelligently**: When user says "resume", "continue", or "try again":
  - Check previous TODO list
  - Find incomplete step
  - Announce "Continuing from step X"
  - Resume immediately without waiting for confirmation

**Context Window Management:**

1. **Event-Driven TODO Review**: Review TODO list after completing phases, before transitions, when uncertain
2. **Progress Summaries**: Summarize what's been completed after each major milestone
3. **Reference by Number**: Use step/phase numbers instead of repeating full descriptions
4. **Never Ask "What Were We Doing?"**: Review your own TODO list first before asking the user
5. **Maintain Written TODO**: Keep a visible TODO list in your responses to track progress

### Execution Mindset

**Think:** "I will complete this entire task before returning control"

**Act:** Make tool calls immediately after announcing them — work instead of summarizing

**Continue:** Move to next step immediately after completing current step

**Debug:** Research and fix issues autonomously — try alternatives when stuck

**Clean:** Remove temporary files and failed code before proceeding

**Finish:** Only stop when ALL TODO items are checked, builds pass, and workspace is clean

**Report:** Create the post-task summary report in `.github/update_reports/` before marking the task complete (see §27) — this is mandatory

---

# Part II — Software Engineering Principles

## 8. SOLID Principles

Apply these five principles rigorously across all object-oriented code:

### Single Responsibility Principle (SRP)

Every class, module, or function should have **one reason to change**. One class, one purpose.

```csharp
//✅ Good — each class has a single responsibility
public class LicenseService { /* License operations only */ }
public class EmailService { /* Email sending only */ }

//❌ Bad — mixed responsibilities
public class LicenseService
{
    void CreateLicense() { }
    void SendEmail() { }  //Wrong responsibility!
}
```

### Open/Closed Principle (OCP)

Software entities should be **open for extension but closed for modification**. Extend behavior via interfaces, inheritance, or composition — not by modifying existing code.

```csharp
public interface IValidator<T>
{
    Task<bool> ValidateAsync(T entity);
}

//Add new validators without changing existing code
public class StandardValidator : IValidator<License> { }
public class EnterpriseValidator : IValidator<License> { }
```

### Liskov Substitution Principle (LSP)

Subtypes must be substitutable for their base types without altering correctness. Any derived class must honor the contract of its parent.

### Interface Segregation Principle (ISP)

No client should be forced to depend on methods it does not use. Prefer small, focused interfaces over large monolithic ones.

```csharp
//✅ Good — small, focused interfaces
public interface ICreatable<T> { Task<T> CreateAsync(T entity); }
public interface IValidatable<T> { Task<bool> ValidateAsync(T entity); }

//❌ Bad — fat interface forces unused dependencies
public interface IEverything<T>
{
    Task Create();
    Task Validate();
    Task SendEmail();  //Unrelated — not every implementer sends email
}
```

### Dependency Inversion Principle (DIP)

High-level modules should not depend on low-level modules. Both should depend on abstractions. Inject dependencies through constructors; never instantiate concrete dependencies with `new` inside business logic.

```csharp
//✅ Good — depends on abstraction, injected
public class OrderController
{
    private readonly IOrderService _service;
    public OrderController(IOrderService service) { _service = service; }
}

//❌ Bad — depends on concrete class, hard-coded
public class OrderController
{
    private readonly OrderService _service = new OrderService();
}
```

---

## 9. DRY — Don't Repeat Yourself

**Every piece of knowledge must have a single, unambiguous, authoritative representation in the system.**

### Rules

- If you write the same logic twice, extract it into a shared function, utility class, or base class
- If multiple pages share the same CSS patterns, create utility classes or shared stylesheets
- If the same SQL query appears in multiple places, create a repository method
- If validation logic recurs, create a shared validation helper

```csharp
//❌ Bad — duplicated validation
public void MethodA() {
    if (string.IsNullOrEmpty(email) || !email.Contains("@"))
        throw new ArgumentException("Invalid email");
}
public void MethodB() {
    if (string.IsNullOrEmpty(email) || !email.Contains("@"))
        throw new ArgumentException("Invalid email");
}

//✅ Good — centralized
private static void ValidateEmail(string email) {
    if (string.IsNullOrEmpty(email) || !email.Contains("@"))
        throw new ArgumentException("Invalid email");
}
public void MethodA() { ValidateEmail(email); }
public void MethodB() { ValidateEmail(email); }
```

### Shared Utilities Checklist

Before writing any utility function, CSS class, or helper:

1. **Check existing shared files first** — utils.js, utilities.css, base classes
2. **Use existing utilities** instead of creating local versions
3. **Extend shared utilities** if a new common pattern emerges
4. **Document additions** — update the project's local `AGENTS.md` when adding new shared utilities

---

## 10. KISS — Keep It Simple, Stupid

The simplest solution that meets requirements is almost always the best.

- Don't over-engineer. Only make changes that are directly requested or clearly necessary.
- Don't add features, refactor code, or make "improvements" beyond what was asked.
- Don't add error handling, fallbacks, or validation for scenarios that can't happen.
- Three similar lines of code is better than a premature abstraction.
- Trust internal code and framework guarantees. Only validate at system boundaries (user input, external APIs).
- Don't use feature flags or backwards-compatibility shims when you can just change the code.
- Don't add type annotations or XML documentation to code you didn't write or modify — the documentation rules in §14 apply only to code the agent generates or changes.

---

## 11. YAGNI — You Aren't Gonna Need It

Don't build anything that isn't needed right now.

- Don't design for hypothetical future requirements
- Don't create helpers, utilities, or abstractions for one-time operations
- Don't add configurable options "just in case"
- If it's not in the requirements, don't build it
- You can always refactor later when the need is concrete

---

## 12. Separation of Concerns

Each module, layer, or file should handle **one aspect** of the system:

```
Controller / Route  → HTTP routing, request validation, response formatting
Service / Logic     → Business logic, validation, workflows, orchestration
Repository / Data   → Data access, SQL queries, model mapping
Model / Entity      → Data structure definition
View / Template     → Presentation and rendering
```

### Database Access Tooling

**For MySQL/MariaDB:** Use **Dapper** as the preferred data access library for repository implementations.

### CSS and JavaScript Separation

- ALL CSS must be in external `.css` files — never inline `<style>` tags in templates
- ALL JavaScript must be in external `.js` files — never inline `<script>` with code in templates
- NO inline event handlers (`onclick`, `onchange`) — use `data-*` attributes and event listeners
- Dedicated CSS/JS files per page/feature when needed
- Use a shared design system / CSS variables for consistent theming

### Front-End Form Validation

🚨 **CRITICAL**: ALL HTML forms **must** include client-side validation using the **FormValidation** library ([`@form-validation/bundle`](https://formvalidation.io/)).

- Use `@form-validation/bundle` (version **2.4.0**+) for all form validation — this is the same library used in the Vuexy admin template
- Every form with user input **must** have validation rules defined — no form should submit without client-side validation
- Use the Bootstrap 5 plugin (`@form-validation/plugin-bootstrap5`) for consistent styling with Bootstrap-based projects
- Keep validation logic in dedicated external `.js` files per form/page — never inline
- Provide clear, user-friendly error messages for each validation rule
- Combine client-side validation with server-side validation — client-side validation alone is **never** sufficient for security
- Reference the Vuexy template's `form-validation.html` page for implementation patterns (see `site-templates.md` §5)

### Internationalization (i18n) for HTML

🚨 **CRITICAL**: ALL user-facing text in generated HTML **must** use i18n — never hardcode strings directly in markup or templates.

**Supported Languages (minimum 5):**

| Code | Language |
|------|----------|
| `en` | English |
| `es` | Spanish (Español) |
| `zh` | Chinese (中文) |
| `ar` | Arabic (العربية) |
| `fr` | French (Français) |

**Core Rules:**

- **Never hardcode user-facing strings** in HTML templates — use translation keys (e.g., `{{ t('nav.home') }}`, `@lang('nav.home')`, `data-i18n="nav.home"`, or framework equivalent)
- **Set the `lang` attribute** on the `<html>` element to reflect the active locale (e.g., `<html lang="en">`)
- **Add `dir="rtl"`** when the active locale is RTL (e.g., Arabic): `<html lang="ar" dir="rtl">`
- **Store translations** in structured locale files — one file per language (e.g., `locales/en.json`, `locales/es.json`, `locales/zh.json`, `locales/ar.json`, `locales/fr.json`)
- **Use a flat or namespaced key structure** for translation files — keep keys organized by feature/page (e.g., `"nav.home"`, `"dashboard.title"`, `"errors.not_found"`)
- **Include all 5 languages** when adding any new translation key — never add a key to only one locale file
- **Use ICU MessageFormat or equivalent** for plurals, gender, and interpolation — avoid string concatenation for translated text
- **Do not embed locale strings in JavaScript** — load translations from locale files or an API endpoint
- **Format dates, numbers, and currencies** using locale-aware APIs (e.g., `Intl.DateTimeFormat`, `Intl.NumberFormat` in JS; equivalent libraries in other languages)

**Translation File Example (JSON):**

```json
//locales/en.json
{
  "nav.home": "Home",
  "nav.dashboard": "Dashboard",
  "nav.settings": "Settings",
  "common.save": "Save",
  "common.cancel": "Cancel",
  "errors.not_found": "Page not found"
}
```

```json
//locales/es.json
{
  "nav.home": "Inicio",
  "nav.dashboard": "Panel",
  "nav.settings": "Configuración",
  "common.save": "Guardar",
  "common.cancel": "Cancelar",
  "errors.not_found": "Página no encontrada"
}
```

**i18n Checklist (for every HTML change):**

- [ ] All user-facing strings use translation keys — no hardcoded text in HTML
- [ ] Translation keys added to all 5 locale files (en, es, zh, ar, fr)
- [ ] `<html lang="...">` attribute set to active locale
- [ ] RTL support included for Arabic (`dir="rtl"`)
- [ ] Dates, numbers, and currencies use locale-aware formatting
- [ ] No concatenated strings for translated text — use interpolation placeholders

### Why This Matters

- **Maintainability** — styles/scripts in one place, easier to update
- **Reusability** — functions and styles can be shared across pages
- **Performance** — browser caching of CSS/JS files
- **CSP Compliance** — supports Content Security Policy without unsafe-inline
- **Testability** — JavaScript logic can be tested independently
- **Accessibility** — i18n ensures content is available to a global audience
- **Correctness** — locale-aware formatting prevents display errors for dates, numbers, and currencies

---

## 13. Defensive Programming & Security

### Input Validation

- Validate all user input at system boundaries
- Use parameterized queries for all SQL — never string concatenation
- Sanitize HTML output to prevent XSS (use `escapeHtml()` or framework equivalents)
- Use `.textContent` for plain text insertion — `.innerHTML` only with proper escaping

### Authentication & Authorization

- Protect all endpoints that require authentication
- Validate resource ownership before allowing modifications
- Never expose internal database IDs — use external UIDs or slugs
- Use `[JsonIgnore]` or equivalent on internal ID properties in API responses
- API routes targeting a specific resource by UID/ID must accept the identifier as a **route parameter** (e.g., `GET /api/users/{uid}`), not as a query string parameter (e.g., `GET /api/users?uid=abc`)

### Data Protection

- Internal IDs (`int Id`) are never exposed; use external UIDs (UUIDs, SHA hashes, etc.)
- Soft deletes preferred over hard deletes for audit trail
- Encrypt sensitive values at rest
- Never log sensitive data (passwords, tokens, PII)

### API Error Handling — Global Exception Handler Middleware

🚨 **CRITICAL**: APIs must use a **global exception handler middleware** to catch and process unhandled exceptions. **Do NOT wrap individual controller action bodies in `try-catch` blocks** — this duplicates logic, clutters controllers, and violates DRY.

**How it works:**

1. Register a single middleware (e.g., `UseExceptionHandler`, `app.UseMiddleware<ExceptionHandlingMiddleware>()` in .NET, or `app.use(errorHandler)` in Express) that intercepts all unhandled exceptions.
2. The middleware logs the error, maps it to an appropriate HTTP status code, and returns a consistent error response body.
3. Controller actions remain clean — they only contain routing, request validation, and delegation to services.

**Example — .NET Exception Handling Middleware:**

```csharp
public class ExceptionHandlingMiddleware
{
    private readonly RequestDelegate _next;
    private readonly ILogger<ExceptionHandlingMiddleware> _logger;

    public ExceptionHandlingMiddleware(RequestDelegate next, ILogger<ExceptionHandlingMiddleware> logger)
    {
        _next = next;
        _logger = logger;
    }

    public async Task InvokeAsync(HttpContext context)
    {
        try
        {
            await _next(context); //Pass to next middleware / controller
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Unhandled exception caught by global handler");
            context.Response.StatusCode = StatusCodes.Status500InternalServerError;
            await context.Response.WriteAsJsonAsync(new { error = "An unexpected error occurred." });
        }
    }
}
```

**Why this matters:**

- **DRY** — error handling logic lives in one place, not duplicated across every controller action
- **Consistency** — all errors produce the same response shape
- **Clean controllers** — actions stay focused on routing and delegation
- **Maintainability** — changing error response format or logging requires editing one file

### General Security Checklist

- [ ] All queries use parameterized inputs
- [ ] No XSS vectors (all dynamic HTML is escaped)
- [ ] No internal IDs in API responses
- [ ] Authentication required on protected routes
- [ ] Rate limiting on auth and mutation endpoints
- [ ] CSRF protection on forms
- [ ] HTTPS enforced in production
- [ ] Global exception handler middleware registered — no try-catch in controller actions

---

## 14. Code Formatting & Documentation Standards

🚨 **CRITICAL**: The following formatting and documentation rules apply to **ALL generated code**, regardless of language. These are **non-negotiable** and must be followed in every function, method, and procedure written by the agent.

### Function Parameters — Same Line (MANDATORY)

🚨 **ALL function/method parameters MUST be on the SAME LINE as the function declaration.** Do NOT wrap or split parameters across multiple lines. This is a **hard rule** — no exceptions.

```csharp
//✅ CORRECT — all parameters on the same line
public async Task<IActionResult> CreateLicense(string licenseKey, string userId, DateTime expirationDate, bool isActive)

//❌ WRONG — parameters split across multiple lines (NEVER do this)
public async Task<IActionResult> CreateLicense(
    string licenseKey,
    string userId,
    DateTime expirationDate,
    bool isActive)
```

```javascript
//✅ CORRECT — all parameters on the same line
function calculateTotal(price, taxRate, discount, quantity, currencyCode) {

//❌ WRONG — parameters wrapped to multiple lines (NEVER do this)
function calculateTotal(
    price,
    taxRate,
    discount,
    quantity,
    currencyCode
) {
```

```c
//✅ CORRECT — all parameters on the same line
ValidationResult* validate_license(const char* license_key, const char* hardware_id, int max_retries) {

//❌ WRONG — parameters on separate lines (NEVER do this)
ValidationResult* validate_license(
    const char* license_key,
    const char* hardware_id,
    int max_retries) {
```

```php
//✅ CORRECT — all parameters on the same line
public function processOrder(string $orderId, float $amount, string $currency, bool $isExpress): OrderResult {

//❌ WRONG — parameters on separate lines (NEVER do this)
public function processOrder(
    string $orderId,
    float $amount,
    string $currency,
    bool $isExpress
): OrderResult {
```

**Why?** Keeping parameters on a single line improves scannability, simplifies diffs, and ensures consistent formatting across the codebase. If a function has so many parameters that the line is excessively long, that is a design signal to refactor (e.g., use a parameter object or request DTO) — not a reason to wrap lines. If a project linter enforces line-length wrapping, configure it to allow longer lines for function signatures or disable that specific rule for declarations.

### XML Function Block Comments (MANDATORY)

🚨 **ALL functions and methods MUST have XML documentation block comments.** Every function generated by the agent must include a `/// <summary>` block describing its purpose, `/// <param>` tags for each parameter, and a `/// <returns>` tag if it returns a value. This applies to **all languages** — use the XML `///` comment style universally.

```csharp
/// <summary>
/// Creates a new license record and associates it with the specified user.
/// </summary>
/// <param name="licenseKey">The unique license key string.</param>
/// <param name="userId">The UID of the user to associate the license with.</param>
/// <param name="expirationDate">The date when the license expires.</param>
/// <param name="isActive">Whether the license should be immediately active.</param>
/// <returns>The created license wrapped in an IActionResult.</returns>
public async Task<IActionResult> CreateLicense(string licenseKey, string userId, DateTime expirationDate, bool isActive)
```

```javascript
/// <summary>
/// Calculates the total cost including tax and discount for a given quantity.
/// </summary>
/// <param name="price">Unit price of the item.</param>
/// <param name="taxRate">Tax rate as a decimal (e.g., 0.08 for 8%).</param>
/// <param name="discount">Discount amount to subtract from the total.</param>
/// <param name="quantity">Number of items purchased.</param>
/// <param name="currencyCode">ISO 4217 currency code (e.g., "USD").</param>
/// <returns>The calculated total as a formatted number.</returns>
function calculateTotal(price, taxRate, discount, quantity, currencyCode) {
```

```c
/// <summary>
/// Validates a license key against the platform server.
/// </summary>
/// <param name="license_key">License key string (format: XXXXX-XXXXX-XXXXX).</param>
/// <param name="hardware_id">SHA-256 hash of hardware identifiers.</param>
/// <param name="max_retries">Maximum number of retry attempts on failure.</param>
/// <returns>ValidationResult pointer (caller must free), or NULL on failure.</returns>
ValidationResult* validate_license(const char* license_key, const char* hardware_id, int max_retries) {
```

```php
/// <summary>
/// Processes an order with the given amount and currency.
/// </summary>
/// <param name="orderId">The unique order identifier.</param>
/// <param name="amount">The order total amount.</param>
/// <param name="currency">ISO 4217 currency code.</param>
/// <param name="isExpress">Whether to use express shipping.</param>
/// <returns>The processed OrderResult.</returns>
public function processOrder(string $orderId, float $amount, string $currency, bool $isExpress): OrderResult {
```

**Why?** XML block comments provide structured, parseable documentation that is understood by IDEs, documentation generators, and other developers. They ensure every function's purpose, inputs, and outputs are immediately clear without reading the implementation.

### Inline Comments for Logical Steps (MANDATORY)

🚨 **ALL function bodies MUST include inline comments** that describe each logical set of instructions. Every distinct step, operation, or block of related logic within a function must have a comment explaining what it does and why. Do NOT write uncommented blocks of code. Inline comments must have **no space** after `//` — write `//Comment` not `// Comment`. **Note:** This no-space rule applies only to inline `//` comments. XML doc comments using `///` are a separate style and **must** include a space after `///` (e.g., `/// <summary>`).

```csharp
public async Task<IActionResult> CreateLicense(string licenseKey, string userId, DateTime expirationDate, bool isActive)
{
    //Validate input parameters before processing
    if (string.IsNullOrEmpty(licenseKey)) throw new ArgumentException("License key is required");
    if (string.IsNullOrEmpty(userId)) throw new ArgumentException("User ID is required");

    //Look up the user to ensure they exist
    var user = await _userRepository.GetByUidAsync(userId);
    if (user == null) return NotFound("User not found");

    //Build the license entity with the provided details
    var license = new License
    {
        Key = licenseKey,
        UserId = user.Id,
        ExpirationDate = expirationDate,
        IsActive = isActive,
        CreatedAt = DateTime.UtcNow
    };

    //Persist the license to the database
    await _licenseRepository.CreateAsync(license);

    //Return the created license as a success response
    return CreatedAtAction(nameof(GetLicense), new { uid = license.Uid }, license.ToDto());
}
```

```javascript
function calculateTotal(price, taxRate, discount, quantity, currencyCode) {
    //Calculate the subtotal from unit price and quantity
    const subtotal = price * quantity;

    //Apply the tax rate to the subtotal
    const taxAmount = subtotal * taxRate;

    //Subtract the discount from the taxed total
    const total = subtotal + taxAmount - discount;

    //Ensure the total is not negative
    const finalTotal = Math.max(0, total);

    //Format the result with the appropriate currency
    return new Intl.NumberFormat('en-US', { style: 'currency', currency: currencyCode }).format(finalTotal);
}
```

**Why?** Inline comments make code self-documenting at the implementation level. They allow any developer (or AI agent) to immediately understand the purpose of each code block without tracing through the logic. This is especially critical for complex functions, multi-step workflows, and business logic.

### Code Formatting & Documentation Checklist

For every function or method generated, verify:

- [ ] All parameters are on the **same line** as the function declaration — no wrapping
- [ ] XML block comment (`/// <summary>`, `/// <param>`, `/// <returns>`) is present above the function
- [ ] Every logical step inside the function body has an inline comment explaining it
- [ ] Inline comments use `//` with **no space** after the slashes (e.g., `//Comment` not `// Comment`). This does **not** apply to `///` XML doc comments, which use a space after `///`.
- [ ] `#region` / `#endregion` blocks have no blank lines between the directive and the content
- [ ] Comments are clear, concise, and describe **what** and **why** — not just restating the code

---

## 15. Unit Testing

Write unit tests for business logic, services, and repository implementations to verify correctness and prevent regressions. Keep tests simple, focused, and fast — the goal is to catch real issues without overwhelming the development workflow.

### Testing Framework

**Preferred Framework:** Use **xUnit** for .NET/C# projects. For other languages, use the following standard frameworks:

- **JavaScript/TypeScript:** Jest or Vitest
- **PHP:** PHPUnit
- **Python:** pytest
- **Java:** JUnit 5
- **Go:** built-in `testing` package

### Core Testing Principles

- **Test behavior, not implementation** — focus on inputs, outputs, and side effects, not internal details
- **Keep tests simple** — avoid complex setup, mocking chains, or brittle assertions
- **Test only what you own** — don't test framework code, third-party libraries, or trivial getters/setters
- **Fast execution** — tests should complete quickly (under 1 second per test is ideal)
- **No flakiness** — tests must be deterministic and produce the same result every time

### What to Test

✅ **Do test:**

- Business logic and validation rules
- Service methods with complex workflows
- Repository methods with custom queries or data transformations
- Edge cases and error conditions
- Security-sensitive operations (authentication, authorization, data sanitization)

❌ **Don't test:**

- Simple properties or auto-properties (e.g., `{ get; set; }`)
- Framework-provided functionality (e.g., ASP.NET Core routing, Entity Framework CRUD)
- Third-party library internals
- Private methods (test through public interfaces instead)
- Configuration or environment-specific code that can't run in isolation

### Avoiding Timeouts and Hangs

🚨 **CRITICAL**: Tests must **never** timeout, hang, or introduce delays that could stall the test suite.

**Rules:**

- **No `Thread.Sleep`, `Task.Delay`, `setTimeout`, or similar blocking delays** — these slow down test execution and can cause timeouts
- **Mock external dependencies** (databases, APIs, file systems) instead of hitting real resources
- **Use in-memory alternatives** when possible (e.g., in-memory database for EF Core, in-memory cache for Redis)
- **Set explicit timeouts** for async operations and fail fast if they're not met
- **Avoid infinite loops or unbounded recursion** in test code
- **Don't rely on timing or race conditions** — use deterministic synchronization patterns

```csharp
//❌ BAD — introduces a delay that slows down tests
[Fact]
public async Task ProcessOrder_Should_Complete()
{
    await Task.Delay(5000); //Don't do this!
    var result = await _service.ProcessOrderAsync(orderId);
    Assert.True(result.IsSuccess);
}

//✅ GOOD — no delays, uses mocked dependencies
[Fact]
public async Task ProcessOrder_Should_Complete()
{
    _mockPaymentService.Setup(x => x.ChargeAsync(It.IsAny<decimal>())).ReturnsAsync(true);
    var result = await _service.ProcessOrderAsync(orderId);
    Assert.True(result.IsSuccess);
}
```

### Test Scope and Depth

Tests should **not** be overly in-depth or exhaustive — maintaining tests shouldn't consume a massive portion of the development cycle.

**Guidelines:**

- **Focus on critical paths** — test the "happy path" and major error scenarios
- **Limit test coverage goals** — aim for 60-80% coverage of business logic, not 100% coverage of everything
- **Don't over-mock** — excessive mocking makes tests brittle and hard to maintain
- **Keep test suites small** — if a test file exceeds 500 lines, consider splitting it by feature or responsibility
- **Refactor tests when needed** — if tests become hard to read or maintain, simplify them or consolidate duplicates

### Test Structure

Use the **Arrange-Act-Assert (AAA)** pattern for clarity:

```csharp
[Fact]
public async Task CreateLicense_Should_ReturnLicense_When_ValidInput()
{
    //Arrange — set up test data and dependencies
    var userId = "user-123";
    var licenseKey = "ABC-DEF-GHI";
    _mockUserRepo.Setup(x => x.GetByUidAsync(userId)).ReturnsAsync(new User { Id = 1, Uid = userId });

    //Act — execute the method under test
    var result = await _service.CreateLicenseAsync(licenseKey, userId);

    //Assert — verify the outcome
    Assert.NotNull(result);
    Assert.Equal(licenseKey, result.Key);
}
```

### Testing Checklist

When writing tests, verify:

- [ ] Tests use xUnit (for C#) or the appropriate framework for the language
- [ ] Tests follow the Arrange-Act-Assert pattern
- [ ] Tests are focused on behavior, not implementation details
- [ ] No delays (`Task.Delay`, `Thread.Sleep`, etc.) or blocking calls that could cause timeouts
- [ ] External dependencies (databases, APIs, file systems) are mocked or use in-memory alternatives
- [ ] Tests complete quickly (ideally under 1 second each)
- [ ] Test names clearly describe what is being tested (e.g., `CreateLicense_Should_ThrowException_When_UserNotFound`)
- [ ] Tests are deterministic and produce consistent results on every run

---

# Part III — Naming Conventions by Language

## 16. C# Naming Conventions

| Element | Convention | Example |
|---------|------------|---------|
| Namespaces | `PascalCase` | `MyApp.Services`, `MyApp.Data.Models` |
| Classes | `PascalCase` | `UserService`, `LicenseRepository` |
| Interfaces | `IPascalCase` | `IUserService`, `IRepository<T>` |
| Methods | `PascalCase` | `GetByUidAsync()`, `CreateLicenseAsync()` |
| Properties | `PascalCase` | `Username`, `CreateDate`, `IsActive` |
| Private fields | `_camelCase` | `_userService`, `_repository` |
| Parameters | `camelCase` | `userId`, `licenseKey` |
| Local variables | `camelCase` | `isValid`, `currentUser` |
| Constants | `PascalCase` | `MaxRetryCount`, `DefaultTimeout` |
| Enums | `PascalCase` | `LicenseStatus { Active, Suspended, Expired }` |
| Async methods | Suffix `Async` | `GetUserAsync()`, `ValidateAsync()` |
| DB models | `{prefix}_{table}` or `{Entity}Db` | `fr_users` / `UserDb` |
| App models | `PascalCase` | `User`, `Endpoint`, `License` |
| DTOs | `{Action}{Entity}Request/Response` | `CreateUserRequest`, `AuthResponse` |
| Controllers | `{Entity}Controller` | `UsersController`, `LicenseController` |
| Services | `{Entity}Service` | `UserService`, `EmailService` |
| Repositories | `{Entity}Repository` | `UserRepository`, `TokenRepository` |

**Code Organization:** Use `#region` blocks for logical grouping. There must be **no blank lines** between `#region` and the first item inside the region, and **no blank lines** between the last item and `#endregion`:

```csharp
//✅ CORRECT — no blank lines between #region/#endregion and content
#region Dependencies
private readonly UserService _userService;
#endregion

#region Constructor
public MyController(UserService userService) { ... }
#endregion

#region Public Methods
//...
#endregion

#region Private Helpers
//...
#endregion

//❌ WRONG — blank lines between #region/#endregion and content (NEVER do this)
#region Dependencies

private readonly UserService _userService;

#endregion
```

**XML Documentation:** Required on all public methods, classes, and properties:

```csharp
/// <summary>
/// Get all endpoints owned by the current user.
/// </summary>
/// <param name="pagination">Pagination parameters.</param>
/// <returns>Paginated collection of endpoints.</returns>
public async Task<IActionResult> GetMyEndpoints([FromQuery] PaginationParams pagination)
```

---

## 17. C / C++ Naming Conventions

### C (C11)

| Element | Convention | Example |
|---------|------------|---------|
| Types / Structs | `PascalCase` | `MemoryPool`, `ValidationResult` |
| Enums | `PascalCase` type, `SCREAMING_SNAKE` values | `enum LicenseStatus { LICENSE_ACTIVE, LICENSE_EXPIRED }` |
| Functions | `snake_case` | `allocate_memory()`, `validate_license()` |
| Constants / Macros | `SCREAMING_SNAKE_CASE` | `#define MAX_BUFFER_SIZE 4096` |
| Variables | `snake_case` | `active_users`, `global_pool` |
| Global variables | `g_snake_case` (prefix optional) | `g_memory_pool` |
| File extensions | `.c` / `.h` | `memory.c`, `memory.h` |

### C++

| Element | Convention | Example |
|---------|------------|---------|
| Namespaces | `PascalCase` or `snake_case` | `MyApp::Core` or `my_app::core` |
| Classes / Structs | `PascalCase` | `MemoryPool`, `HttpClient` |
| Methods | `PascalCase` or `camelCase` | `GetBuffer()` or `getBuffer()` |
| Member variables | `m_camelCase` or `_camelCase` | `m_bufferSize`, `_pool` |
| Constants | `SCREAMING_SNAKE_CASE` or `k` prefix | `MAX_SIZE` or `kMaxSize` |
| Templates | `PascalCase` | `template<typename TValue>` |
| File extensions | `.cpp` / `.hpp` or `.h` | `memory.cpp`, `memory.hpp` |

**Documentation (C/C++):**

```c
/// <summary>
/// Validates a license key against the platform server.
/// </summary>
/// <param name="license_key">License key string (format: XXXXX-XXXXX-XXXXX)</param>
/// <param name="hardware_id">SHA-256 hash of hardware identifiers</param>
/// <returns>ValidationResult pointer (caller must free), or NULL on failure</returns>
ValidationResult* validate_license(const char* license_key, const char* hardware_id);
```

---

## 18. PHP Naming Conventions

| Element | Convention | Example |
|---------|------------|---------|
| Classes | `PascalCase` | `UserController`, `DatabaseService` |
| Interfaces | `PascalCase` (with `Interface` suffix or `I` prefix) | `UserRepositoryInterface` or `IUserRepository` |
| Methods | `camelCase` | `getUserById()`, `createLicense()` |
| Properties | `camelCase` | `$userId`, `$isActive` |
| Functions (procedural) | `snake_case` | `validate_input()`, `format_date()` |
| Constants | `SCREAMING_SNAKE_CASE` | `MAX_RETRIES`, `DB_HOST` |
| Variables | `camelCase` or `snake_case` (be consistent) | `$currentUser` or `$current_user` |
| File naming | `PascalCase` for classes, `snake_case` for scripts | `UserController.php`, `helpers.php` |
| Database tables | `snake_case` with prefix | `app_users`, `app_sessions` |

---

## 19. JavaScript / TypeScript Naming Conventions

| Element | Convention | Example |
|---------|------------|---------|
| Variables | `camelCase` | `userName`, `isActive` |
| Functions | `camelCase` | `getUserById()`, `formatDate()` |
| Classes | `PascalCase` | `UserService`, `HttpClient` |
| Interfaces (TS) | `PascalCase` (no `I` prefix) | `UserProfile`, `ApiResponse` |
| Type aliases (TS) | `PascalCase` | `UserId`, `StatusCode` |
| Constants | `SCREAMING_SNAKE_CASE` | `MAX_RETRIES`, `API_BASE_URL` |
| Enums (TS) | `PascalCase` type, `PascalCase` values | `enum Status { Active, Inactive }` |
| Private class fields | `#field` or `_camelCase` | `#count` or `_count` |
| File naming | `kebab-case` or `camelCase` | `user-service.js` or `userService.js` |
| React components | `PascalCase` | `UserProfile.tsx`, `DashboardCard.tsx` |
| CSS classes in JS | `camelCase` (modules) or `kebab-case` | `styles.userName` / `"user-name"` |

**Utility Functions:** Never duplicate utilities. Check for existing shared utils files before adding new helpers.

---

## 20. SQL / Database Naming Conventions

**Name Prefixes:** Use project-specific prefixes for all tables to avoid collisions and clarify ownership (e.g., `fr_` for FastRider, `hf_` for HyperFleet, `app_` for shared application tables).

| Element | Convention | Example |
|---------|------------|---------|
| Table names | `snake_case` with project prefix | `fr_users`, `hf_licenses`, `app_sessions` |
| Column names | `snake_case` | `user_id`, `created_at`, `password_hash` |
| Primary keys | `id` (auto-increment internal) | `BIGINT UNSIGNED AUTO_INCREMENT` |
| External IDs | `uid` (UUID or SHA hash) | `CHAR(32)` or `CHAR(36)` |
| Foreign keys | `{referenced_table}_id` | `user_id`, `license_id` |
| Indexes | `idx_{table}_{column}` | `idx_users_email`, `idx_licenses_key` |
| Unique indexes | `uq_{table}_{column}` | `uq_users_email` |
| Enum values | `PascalCase` | `'Active'`, `'Suspended'`, `'Expired'` |
| Boolean columns | `is_*` or `has_*` prefix | `is_active`, `is_deleted`, `has_2fa` |
| Timestamp columns | `*_at` suffix | `created_at`, `updated_at`, `deleted_at` |

**Dual Identifier Pattern:**
Every primary entity should have TWO identifiers:
1. **`id`** (internal) — Auto-increment, used for foreign keys, NEVER exposed via API
2. **`uid`** (external) — User-facing unique identifier, safe to expose publicly

**Soft Deletes:** Use `is_deleted` or `deleted_at` columns. Never hard-delete records unless absolutely necessary.

---

## 21. CSS / SCSS Naming Conventions

| Element | Convention | Example |
|---------|------------|---------|
| Class names | `kebab-case` | `.user-profile`, `.card-header` |
| BEM blocks | `block__element--modifier` | `.card__title--highlighted` |
| CSS variables | `--category-name` | `--color-primary`, `--radius-lg`, `--shadow-md` |
| Animation names | `camelCase` or `kebab-case` | `fadeIn`, `slide-up` |
| File naming | `kebab-case` | `design-system.css`, `user-profile.css` |
| SCSS variables | `$kebab-case` | `$color-primary`, `$font-size-base` |
| SCSS mixins | `kebab-case` | `@mixin flex-center`, `@mixin responsive-grid` |

**Design System Variables:** Always use CSS custom properties instead of hardcoded values:

```css
/* ✅ Good — uses design system tokens */
.card {
    background: var(--bg-card);
    border-radius: var(--radius-lg);
    box-shadow: var(--shadow-md);
    transition: var(--transition-normal);
}

/* ❌ Bad — hardcoded values */
.card {
    background: #1a1a2e;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    transition: all 0.3s ease;
}
```

---

## 22. General File & Directory Naming

| Element | Convention | Example |
|---------|------------|---------|
| Directories | `PascalCase` (C#/.NET) or `kebab-case` (web) | `Controllers/`, `src/components/` |
| C# files | `PascalCase` matching class name | `UserService.cs`, `AuthController.cs` |
| JS/TS files | `kebab-case` or `camelCase` | `user-service.js`, `utils.js` |
| CSS files | `kebab-case` | `design-system.css`, `landing-page.css` |
| Config files | `kebab-case` | `appsettings.json`, `tsconfig.json` |
| Test files | Match source + suffix | `UserService.Tests.cs`, `user-service.test.js` |
| DB migrations | Timestamped | `20260101_CreateUsersTable.sql` |
| Image assets | `kebab-case` | `hero-illustration.svg`, `logo-dark.png` |

---

# Part IV — Project Context Guidelines

> **⚠️ IMPORTANT**: This section contains **rules and guidelines** for how agents should document project context. All actual project-specific details (project overview, repository structure, architecture, build commands, database schema, etc.) belong in the Project Context Template section (§31) of this file.

## 23. Project Context Documentation Rules

All project-specific information must be documented in the **project's own local `AGENTS.md`** file — NOT in this canonical rules file.

### What Belongs in the Project's Local `AGENTS.md`

The following information should be maintained in the project's local `AGENTS.md`:

- **Project Overview** — project name, description, components, tech stack
- **Repository Structure** — directory tree showing actual project layout
- **Architecture Patterns** — patterns specific to the project (layer architecture, DI, model architecture)
- **Build & Run Commands** — actual commands for building, running, testing, and linting
- **Database Schema & Migrations** — schema location, migration details, current tables
- **Site Templates & Design References** — template sources and usage guidelines
- **Current Implementation Status** — what's completed, in progress, and planned
- **Project-Specific Overrides** — any rules that override the canonical rules

### Rules

1. **Never put project-specific information in this canonical file** — it is shared across all projects
2. **Always update the project's local `AGENTS.md`** when project context changes
3. **Always update the project's `.github/roadmap.md`** with status changes after every task
4. **Use the initialization wizard (§30)** when setting up a new project
5. **Reference Parts I–V (this canonical file) for universal rules** — coding standards, naming conventions, principles
6. **Reference the local `AGENTS.md` for project-specific context** — architecture, commands, status

---

## 24. Database Change Rules

When making database changes in any project, ensure ALL of these are in sync:

1. Always update the canonical schema file when modifying the database
2. Create corresponding database models matching the table
3. Create application/domain models for API exposure
4. Update services, repositories, and controllers accordingly
5. Never expose internal IDs — use external UIDs

### Sync Checklist

- [ ] Schema file updated
- [ ] Database model matches SQL columns
- [ ] Application model maps from DB model
- [ ] Service/repository queries reference correct columns
- [ ] Controller endpoints expose correct data
- [ ] Shared DTOs updated if public API shape changed

---

## 25. Site Templates & Design References

### UI Design Reference (Claude Skill)

> For advanced UI/UX design work, use the **[ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill)** — a Claude skill for UI design maintained in the `nextlevelbuilder` repository. Read the skill's instructions from there before designing or generating UI components to get expert-level layout, visual hierarchy, and design-pattern guidance.
>
> **URL:** `https://github.com/nextlevelbuilder/ui-ux-pro-max-skill`

### UI Examples & Visual Design Index

> The **`UI_Examples/`** folder in the [AgentInstructions repository](https://github.com/LoneEngineer99/AgentInstructions) contains curated reference images demonstrating high-quality, modern UI design across dashboards, forms, cards, navigation, data tables, charts, modals, landing pages, and more. These images establish the **target visual quality** for all agent-produced UI work.
>
> A companion index file — **`UI_Examples/ui-design-index.md`** — catalogs every image by component category and extracts actionable design principles covering color systems, typography, spacing, depth, borders, iconography, and motion patterns. It also provides ready-to-use **design tokens** (CSS custom properties) for colors, spacing, radius, shadows, and typography.
>
> **Raw URL:** `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/UI_Examples/ui-design-index.md`

**When designing or generating any UI element, agents MUST:**

1. **Fetch and read** `UI_Examples/ui-design-index.md` from the AgentInstructions repository (or read it locally if available)
2. **Identify the matching category** — find the section that matches the type of element being built (dashboard, card, form, table, etc.)
3. **Review the listed reference images** — open the referenced image files from `UI_Examples/` to study the visual treatment
4. **Apply the extracted design principles** — use the color system, typography scale, spacing tokens, border-radius values, shadow definitions, and interaction patterns documented in the index
5. **Follow the dark mode rules** when building dark-themed interfaces (§4 of the index)
6. **Use the design tokens** from §5 of the index as CSS custom property starting values

> **⚠️ IMPORTANT**: The design index is not optional. Agents building UI components must consult this reference to ensure visual consistency and quality. When in doubt about a design decision, the patterns in the reference images take precedence.

### Shared Template Registry (Web Projects)

> **For projects with a web front-end component:** the [AgentInstructions repository](https://github.com/LoneEngineer99/AgentInstructions) maintains a `site-templates.md` file containing the **up-to-date registry of all supported site templates** — including page catalogues, asset maps, third-party library inventories, and the mandatory CSS/JS dependency workflow.
>
> **Raw URL:** `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/site-templates.md`
>
> **⚠️ This file is remotely hosted and may receive updates over time.** Always fetch the latest version by URL before use — do not rely on cached or previously downloaded copies. Before creating or adapting any UI element for a web project, fetch and read this file. It supersedes any locally cached template information about which templates are available at the shared level. Project-specific template overrides and additions still live in the project's own `AGENTS.md`.

### Template Discovery & Usage

Before creating UI elements, **always check** if templates have been documented in the project's `AGENTS.md`. If the project has a web front-end, also fetch the shared `site-templates.md` from the AgentInstructions repository (see above) for the complete list of available templates. If no templates are documented anywhere, **ask the user** if there are any HTML templates or design references that should be used for the project. Do not assume any specific template directories exist.

**Ask the user:**
1. Are there any HTML/CSS templates that should be used as a reference for UI elements (cards, tables, modals, forms, charts, navbars, etc.)?
2. Where are these templates located (directory path, URL, or external resource)?
3. What is the purpose of each template (e.g., public-facing pages, dashboard/admin panel, email templates)?

### Storing Template Information

Once the user provides template details, you **must** store this information in two places:

1. **`AGENTS.md`** — Update the "Site Templates & Design References" section with:
   - Template name(s) and path(s)
   - Purpose of each template
   - Any relevant notes about usage
2. **GitHub Memories** — Use the `store_memory` tool to save each template source as a fact, including the template name, directory path, and purpose (e.g., "HTML template 'Front Pages' at SiteTemplates/front-pages/ is used for public-facing landing page elements")

### How to Use Templates

Once templates are identified and documented:

1. **Identify the element you need** — determine the type of UI element (table, card, form, chart, etc.)
2. **Find the matching template page** — browse the filenames in the documented template directories to locate a page that contains an example of that element
3. **Read the template HTML** — inspect the element's structure, CSS classes, and any `data-*` attributes
4. **Copy required JS/CSS dependencies** — if the element relies on specific JavaScript plugins or CSS files from the template's `assets/` directory, **copy those files into the project** and reference them properly
5. **Adapt the element** — customize the copied HTML/CSS/JS to match the project's data, branding, and conventions
6. **Verify dependencies** — ensure all required vendor libraries (e.g., chart libraries, datepicker plugins, DataTables) are included in the project after copying

### Dependency Checklist for Template Elements

When copying an element from a template page, check for and include:

- [ ] **CSS files** — vendor CSS referenced in the template's `<head>` that the element needs
- [ ] **JS files** — vendor JS referenced at the bottom of the template page that the element needs
- [ ] **Initialization scripts** — any page-specific JS that initializes the element (e.g., `$('.select2').select2()`)
- [ ] **Icon fonts / SVGs** — any icon libraries the element uses
- [ ] **Image assets** — placeholder images or illustrations used by the element

> **⚠️ IMPORTANT**: Do not just copy the HTML markup — elements will often appear broken or unstyled if their required CSS/JS dependencies are missing. Always inspect the full template page to identify all dependencies.

---

# Part V — Documentation & Self-Evolution

## 26. Keeping Project Documentation Up to Date

> **🚨 NON-NEGOTIABLE**: After **every** code change that affects architecture, adds/removes features, modifies database schemas, completes roadmap items, or changes build/run/test commands, the agent **MUST** update the following files **in the project's repository**. **Failure to update these files after changes means the task is NOT complete.** These updates are as important as the code changes themselves — they ensure that any future agent session (or human developer) starts with accurate, current project context.
>
> **⚠️ IMPORTANT**: The files below refer to the **project's own local files** — NOT this canonical rules file. Never modify the canonical `AGENTS.md` in the AgentInstructions repository. Update the project's local `AGENTS.md` instead.
>
> **1. The project's local `AGENTS.md` (project notes & context):**
> - Update the **Current Implementation Status** section to reflect completed, in-progress, and planned work
> - Update the **Repository Structure** if new directories or key files were added
> - Update **Build & Run Commands** if they changed
> - Update **Database Schema & Migrations** if the schema changed
> - Update **Architecture Patterns** if new patterns were introduced
> - Add any new **Project-Specific Overrides** discovered during development
> - The local `AGENTS.md` is the agent's **cross-session memory** for that project — keeping it accurate ensures continuity
>
> **2. The project's `.github/roadmap.md`:**
> - Mark completed items as done
> - Update current phase and milestone progress
> - Add newly discovered work items or technical debt
> - Adjust timelines and priorities based on completed work
> - Reflect any scope changes or new requirements
>
> **3. The project's `README.md`:**
> - Update project description if the scope or purpose changed
> - Update the technology stack if new tools or frameworks were added
> - Update getting started / build / run instructions if they changed
> - Update key features list if features were added or removed
> - Keep the README consistent with the local `AGENTS.md` and `roadmap.md`

### When to Update

Update the project's local `AGENTS.md` after any of the following:

- Adding a new major feature or domain entity
- Changing the project structure (new folders, reorganization)
- Modifying the build process or adding new tools
- Adding new libraries or removing existing ones
- Changing naming conventions or coding patterns
- Adding new page types or layout patterns
- Updating the database schema significantly
- Completing a major task or milestone
- Discovering a recurring pattern or solution
- Adding new shared utilities

### What to Update

Update the corresponding sections in the project's local `AGENTS.md`:

- Add new entities to the Project Overview section
- Update the Repository Structure tree
- Add new architecture patterns if they differ from existing ones
- Update build commands if they change
- Update database schema documentation (following the rules in §24)
- Add new shared utilities to the DRY section (§9)
- Update the Current Implementation Status section
- Update the project's `.github/roadmap.md` with current progress and any changes to planned work (see §29)
- Update `README.md` to reflect any changes to features, tech stack, or build/run instructions

### How to Update

1. Make the code changes first
2. Update the relevant sections of the project's local `AGENTS.md`
3. Update `README.md` if the changes affect features, tech stack, or setup instructions
4. Update the project's `.github/roadmap.md` to reflect completed work and status changes
5. Commit all updated files alongside the code changes
6. **CRITICAL**: The project's local `AGENTS.md` is the agent's cross-session memory — keeping it accurate ensures continuity
7. **NEVER modify the canonical `AGENTS.md`** in the AgentInstructions repository — it contains shared base rules

---

## 27. Post-Task Summary Reports

🚨 **NON-NEGOTIABLE: Every agent session that completes significant work MUST create a post-task summary document in the `.github/update_reports/` directory. A task is NOT considered complete without this report. This is a mandatory deliverable — not optional.**

### Summary Document Requirements

Each post-task summary must:

1. **Be created in `.github/update_reports/`** with filename format:
   - `session-YYYY-MM-DD-descriptive-task-name.md`
   - Example: `session-2026-02-14-implement-user-authentication.md`

2. **Include visual documentation:**
   - **Minimum 5 screenshots** of completed work
   - GIFs/videos encouraged for demonstrating interactions, animations, and multi-step workflows
   - Screenshots embedded inline using relative paths
   - Media files stored in `.github/update_reports/img/session-YYYY-MM-DD-task-name/`

3. **Follow this structure:**

```markdown
# Post Task Summary: [Task Name]

**Date:** YYYY-MM-DD
**Agent Session:** [Brief description]

---

## Summary

[High-level overview of what was accomplished]

## Completed Work

### [Feature/Component 1]
[Description]

![Screenshot description](./img/session-YYYY-MM-DD-task/screenshot-1.png)

### [Feature/Component 2]
[Description]

![Screenshot description](./img/session-YYYY-MM-DD-task/screenshot-2.png)

## Key Changes

- [Bullet list of significant changes]
- [File paths and what was modified]
- [New features or capabilities]

## Visual Documentation

### [Section 1]
![Description](./img/session-YYYY-MM-DD-task/screenshot-3.png)

### [Section 2]
![Description](./img/session-YYYY-MM-DD-task/screenshot-4.png)

[Continue with all screenshots — minimum 5 total]

## Review Readiness

- [ ] All planned features implemented
- [ ] Screenshots/GIFs demonstrate functionality
- [ ] Code follows project conventions
- [ ] Documentation updated (local AGENTS.md)
- [ ] Builds pass
- [ ] Ready for review

## Notes

[Any additional context, decisions made, or follow-up items]
```

### Media Organization

- Create subdirectory for each session: `.github/update_reports/img/session-YYYY-MM-DD-task-name/`
- Name screenshots descriptively: `feature-name-view.png`, `dashboard-overview.png`
- Use PNG for screenshots (lossless quality)
- Use GIF for short animations (< 10 seconds)
- Optimize images for web (reasonable file sizes)

### Iteration Updates

If additional work is needed after a report is created, update the existing document — do not create a new one:

```markdown
---

## Iteration [N] — [Date]

### Feedback Addressed
- [List of review feedback items]

### Additional Changes
[Description of new work]

![Additional screenshot](./img/session-YYYY-MM-DD-task/iteration-N-screenshot.png)
```

---

## 28. Agent Work Ethic & Autonomy

### Core Principles

**The human programmer has a full-time job.** The agent must work as independently and thoroughly as possible to deliver quality software. Follow these principles:

1. **Be fully agentic.** Do not stop at the first obstacle. Research, debug, and resolve issues autonomously. Work for as long as needed to deliver a complete, polished result.

2. **Be thorough.** Complete the entire task, not just the minimum. If adding a page, add the menu item, the locale translations, the JS file, the loading states, the animations, and the responsive design.

3. **Be proactive.** If a related file needs updating (locale files, menu, database schema, the project's local `AGENTS.md`), update it without being asked.

4. **Be quality-focused.** Run all three review passes. Fix every issue found. Do not deliver code with known bugs or visual defects.

5. **Be self-sufficient.** Use the codebase as reference. Look at existing pages, controllers, and models to understand patterns. Match the existing style exactly.

6. **Be persistent.** If a build fails, fix it. If an animation doesn't look right, iterate. If a query is wrong, debug it. Do not give up or ask for help unless truly blocked.

7. **Be comprehensive.** When making changes, consider all downstream effects: database sync, API models, shared DTOs, documentation, locale files, menu items, and related components.

8. **Run the three-pass review** (functional, visual, security) for every modification before considering the task complete. This is non-negotiable.

9. **Update the project's local `AGENTS.md`** after every major modification so the next agent task starts with accurate context. **Never modify the canonical `AGENTS.md`** in the AgentInstructions repository.

10. **Maintain the project's roadmap** (`.github/roadmap.md`) — update it after every task to reflect current progress, completed work, and remaining items (see §29).

11. **Create post-task summary reports** with screenshots for every significant session.

12. **Evolve continuously.** After every commit, ask yourself:
    - What did I just complete?
    - What's the logical next step?
    - Are there blockers?
    - What obvious gaps exist?
    - Can I improve what exists?
    Then immediately act on the answers.

### Decision Making

**Ask the human only for:**

- Business logic ambiguity (pricing, licensing rules)
- Major architectural shifts (framework changes)
- External integrations (payment providers, third-party APIs)
- Breaking API changes
- Anything that could cost money or have legal implications

**Make decisions yourself for:**

- Class design and interfaces
- Database indexes and optimizations
- Security enhancements
- Performance improvements
- Code organization
- Validation approaches
- Documentation format
- UI/UX implementation details

### Self-Directed Workflow

After completing work, immediately:

- Implement the next feature from the roadmap
- Fix discovered issues or technical debt
- Verify functionality works end-to-end
- Improve documentation
- Refactor as needed
- Update the project's local `AGENTS.md` with new patterns and progress
- Update the project's `.github/roadmap.md` to reflect completed work and next steps

### Autonomous Media & Assets

Agents are **allowed and encouraged** to generate and incorporate media:

- **Self-Generated Media**: Agents may generate SVG illustrations, icons, CSS graphics, and data URI images for UI elements
- **Free Stock Media**: Use media from Pexels, Unsplash, Pixabay, or similar free stock sites
- **Icon Libraries**: Use Bootstrap Icons, Tabler Icons, inline SVGs, or other open-source icon sets
- **Optimization**: Compress all images for web delivery; use SVG where possible

---

## 29. Project Roadmap Management

**REQUIRED: Every project MUST have a `.github/roadmap.md` file that serves as the living document for project progress and planning.**

### Purpose

The `roadmap.md` file provides a high-level view of the entire project — what it is, where it stands, and what remains to be done. It ensures continuity across agent sessions and gives any agent (or human) an immediate understanding of the project's current state and direction.

### Creation

If `.github/roadmap.md` does not exist, the agent **MUST** create it during Phase 1 (Repository Analysis) before starting any other work. Populate it by analyzing the codebase, README, the project's local `AGENTS.md` (especially the project context sections), and any other project documentation.

### Required Structure

The roadmap must follow this structure:

```markdown
# Project Roadmap

## Project Overview

[Brief description of the project, its purpose, target users, and core value proposition. This should be a concise summary that gives any reader immediate context about what the project is.]

## Current State

[Describe the current state of the project — what has been built, what is functional, what stage of development the project is in (e.g., initial setup, MVP, beta, production).]

### Completed Work
- [List of completed features, milestones, and significant tasks]

### Known Issues
- [List of known bugs, technical debt, or unresolved problems]

## Upcoming Work

### In Progress
- [List of tasks currently being worked on]

### Planned
- [List of planned features, improvements, and tasks in priority order]

### Future Considerations
- [Ideas, stretch goals, or items that may be addressed later but are not yet committed]

## Architecture & Technical Notes

[Any important architectural decisions, technical constraints, or notes that affect the project direction. Reference relevant sections of the project's local AGENTS.md or the canonical rules where appropriate.]

## Milestones

| Milestone | Target Date | Status | Description |
|-----------|-------------|--------|-------------|
| [Name]    | [Date]      | [Status: Not Started / In Progress / Completed] | [Brief description] |
```

### When to Update

Update `.github/roadmap.md` in the following situations:

- **After completing any task** — move completed items from "Upcoming Work" to "Completed Work"
- **After discovering new requirements** — add them to the appropriate "Upcoming Work" subsection
- **After identifying bugs or issues** — add them to "Known Issues"
- **After making architectural decisions** — document them in "Architecture & Technical Notes"
- **After reaching a milestone** — update the "Milestones" table
- **At the start of every session** — verify the roadmap is accurate before beginning work

### Update Checklist

When updating the roadmap, ensure:

- [ ] Completed work is moved out of "Upcoming Work" and into "Completed Work"
- [ ] New tasks or requirements are added to the appropriate section
- [ ] "Current State" accurately reflects the project's actual state
- [ ] Known issues are documented
- [ ] Milestones table is current
- [ ] The file is committed alongside related code changes
- [ ] No Docker, Kubernetes, or containerization items are added unless the user explicitly requested them (see §2)

---

# Part VI — New Project Initialization Protocol

## 30. New Project Initialization

> **⚠️ CRITICAL — READ THIS FIRST**: This section is for **new projects only**. If this is your first time working on a project based on this Starter Kit template, you **MUST** complete the initialization process below before starting any development work. **Delete this entire §30 from the project's local `AGENTS.md`** once project initialization is complete and the project context sections are fully populated.

## Purpose

This Starter Kit provides a canonical set of rules and conventions for AI agents. Each project creates its own **local `AGENTS.md`** that:
1. **References this canonical file by URL** for the base rules (Parts I–V, §1–§29)
2. **Contains the project's own notes**, context, architecture, build commands, and status
3. **Serves as the agent's cross-session memory** for that specific project

The canonical rules are **never copied** into projects — they are always fetched by URL from this repository.

## Step 0: Create the Project's Local `AGENTS.md`

Before doing anything else, create an `AGENTS.md` file in the project's root directory using the template below. This is the file that agents will read first when working on the project.

**Create `AGENTS.md` in the project root with this template:**

````markdown
# AGENTS.md — Project Agent Instructions

> **🚨 CRITICAL — AGENTS MUST READ THIS FILE AND THE CANONICAL RULES.**
> This file contains **project-specific context, notes, and status** for AI coding agents.
> For the **base rules, conventions, and standards**, fetch and read the canonical rules file:
>
> **Canonical Rules URL:** `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md`
>
> - **During project initialization**: Fetch and read the canonical rules file IN FULL using multiple fetches. Store at least **30 memories** (see §30 in the canonical file). Then complete the initialization wizard below.
> - **On regular tasks**: Fetch the Table of Contents from the canonical rules file, then read only the sections relevant to your task. Always read THIS local file first for project context.
> - **After code changes**: Update THIS file with new patterns, progress, and status. Update `.github/roadmap.md` with completed work. Update `README.md` if features or setup changed.

---

## Canonical Rules Reference

**You MUST fetch and follow the canonical rules before starting any task.**

> **URL:** `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md`

The canonical rules contain:
- **Part I** — Agent execution protocols, TODO management, error debugging, completion criteria
- **Part II** — Software engineering principles (SOLID, DRY, KISS, YAGNI, security)
- **Part III** — Naming conventions for C#, C/C++, PHP, JS/TS, SQL, CSS/SCSS
- **Part IV** — Project context guidelines, database change rules, site templates
- **Part V** — Documentation rules, post-task reporting, agent work ethic, roadmap management

**Rules:**
1. **ALWAYS follow** all rules and standards in the canonical file.
2. **NEVER copy** the canonical rules into this file — always fetch by URL.
3. **If this file conflicts with the canonical rules**, this file takes precedence — project-specific overrides win.
4. **Update THIS file** (not the canonical file) after every major code change.

---

## Project Overview

<!-- AGENT: Replace this section with actual project details after initialization -->

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
├── AGENTS.md                          # Agent instructions (this file — project notes & context)
├── .github/
│   ├── roadmap.md                     # Project roadmap and status
│   └── update_reports/                # Post-task summary documentation
│       └── img/                       # Screenshots and media for reports
├── src/                               # Source code
├── tests/                             # Test files
├── docs/                              # Documentation
└── README.md
```

---

## Architecture Patterns

<!-- AGENT: Document the actual architecture patterns used in this project -->

[Document project-specific architecture here. Refer to the canonical rules (Parts I–V) for general patterns.]

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

[See §24 in the canonical rules for database change rules and sync checklist.]

---

## Site Templates & Design References

[See §25 in the canonical rules for template discovery rules, the shared template registry, and the mandatory CSS/JS dependency workflow.]

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

<!-- AGENT: Add any project-specific rules that override or extend the canonical rules here -->

*No project-specific overrides defined yet.*

---

## Additional Notes

<!-- AGENT: Add any project-specific notes, patterns, or learnings here -->


---

*Last updated: [date] — [description of last change]*
*Created: [date] — Project initialization*
````

> **⚠️ IMPORTANT**: After creating this file, proceed with Step 1 below to populate it with actual project details.

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
    - Are there specific conventions beyond the defaults in Part III of this document?
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

### Step 3: Populate the Project's Local `AGENTS.md`

Using the answers from Step 1, systematically fill in the sections of the project's local `AGENTS.md` (created in Step 0):

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
├── AGENTS.md                            # Project notes & context (local file)
├── .github/
│   ├── roadmap.md                       # Project roadmap and status
│   └── update_reports/                  # Post-task summary documentation
├── [backend-directory]/      # Based on Q9
├── [frontend-directory]/     # Based on Q9
├── [tests-directory]/        # Based on Q9, Q12
└── README.md
```

> **Note:** The project's local `AGENTS.md` references the canonical rules by URL — it does NOT contain the full base rules.

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

Read the project's `.github/roadmap.md` to understand the planned features, milestones, and project vision. Then, based on the roadmap and the initialization answers, create or update `/README.md` with:
- Project name and description (Q1, Q2)
- Key features (Q3) — aligned with the roadmap's planned capabilities
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

### Step 6: GitHub Copilot Agent — Memory Initialization

> **⚠️ CRITICAL — AGENT ONLY**: This step applies **exclusively** when the project is being initialized by the GitHub Copilot Agent (or any AI agent with access to the `store_memory` tool). Human developers may skip this step.

When the GitHub Copilot Agent is running this initialization, it **MUST** store at least **30 GitHub memories** using the `store_memory` tool so that it (and future agent sessions) can quickly reference key project context without re-reading entire files. These memories serve as a fast-access knowledge base that persists across agent sessions.

#### What to Store as Memories

Memories should comprehensively cover the following categories. Aim for **at least 30 distinct memories** distributed across these areas:

**From the project's local `AGENTS.md` (project context) — at least 8 memories:**
1. Project name, description, and primary purpose
2. Technology stack (backend, frontend, database, APIs)
3. Authentication and authorization strategy
4. Repository structure and key directory paths
5. Build, run, and test commands
6. Database schema location and migration strategy
7. Current implementation status and phase
8. Any project-specific overrides or rules

**From the canonical rules (`AGENTS.md` §1–§29, fetched by URL) — at least 10 memories:**
1. Core identity and execution protocol (§1–§2)
2. TODO management and context maintenance rules (§3)
3. Error debugging protocols (§4)
4. Key software engineering principles enforced (§8–§11)
5. Separation of concerns and i18n rules (§12)
6. Security and defensive programming rules (§13)
7. Code formatting and documentation standards (§14)
8. Unit testing requirements and patterns (§15)
9. Naming conventions for the project's primary language(s) (§16–§22)
10. Post-task reporting and update requirements (§26–§27)

**From the project's `roadmap.md` — at least 5 memories:**
1. Overall project vision and goals
2. Current phase and milestone status
3. Completed features and components
4. Upcoming planned work items
5. Known blockers or dependencies

**From `README.md` and general project context — at least 7 memories:**
1. Project overview and key features
2. Getting started / setup instructions
3. Contribution guidelines or team conventions
4. External integrations and third-party services
5. Design system, branding, or template references
6. Deployment and environment configuration
7. Any domain-specific terminology or business rules

#### Memory Storage Guidelines

- Each memory should be a **clear, concise, actionable fact** (under 200 characters — this is a `store_memory` tool constraint)
- Include accurate **citations** (file path and line numbers) for each memory
- Use descriptive **subjects** (e.g., "tech stack", "build commands", "auth strategy")
- Provide a **reason** explaining why the memory is useful for future tasks
- Categorize appropriately: use `general` for cross-cutting facts, `file_specific` for file-bound details, `bootstrap_and_build` for build/run info, and `user_preferences` for stated preferences

#### Example Memories

```
Subject: "tech stack"
Fact: "Backend uses ASP.NET Core 8 with Dapper for MySQL; frontend uses Razor Pages with Bootstrap 5."
Category: general
Citations: AGENTS.md:<line range of Project Overview section>

Subject: "build commands"  
Fact: "Build with 'dotnet build', run with 'dotnet run --project src/Web', test with 'dotnet test'."
Category: bootstrap_and_build
Citations: AGENTS.md:<line range of Build & Run Commands section>

Subject: "roadmap status"
Fact: "Phase 1 (Core Setup) complete; Phase 2 (User Management) in progress; Phase 3 (Dashboard) planned."
Category: general
Citations: .github/roadmap.md:<line range of current status>
```

### Step 7: Remove the Initialization Section from the Local File

Once you have:
- ✅ Created the project's local `AGENTS.md` (Step 0)
- ✅ Asked all discovery questions
- ✅ Documented all answers
- ✅ Populated all project-specific sections in the local `AGENTS.md` with actual information
- ✅ Created `.github/roadmap.md` with project status and planned work
- ✅ Updated README.md
- ✅ Created developer setup instructions
- ✅ Stored at least 30 GitHub memories (if running as a GitHub Copilot Agent)
- ✅ Verified all placeholders are replaced with actual information

**Remove the initialization-specific content** from the project's local `AGENTS.md`:
- Keep the **"Canonical Rules Reference"** section (URL and reading strategy) — agents always need this
- Remove the initialization prompts and notes about "first time setup" — they are no longer needed once the project is populated

**Commit the changes** with a message like: "Complete project initialization for [Project Name]"


---


# Part VII — Local Project `AGENTS.md` Reference

## 31. Project Context Template

> **⚠️ IMPORTANT**: This section describes what goes in **each project's local `AGENTS.md`** file. The full template is provided in §30 (Step 0). This section serves as a quick reference for the expected structure.

### How It Works

Each project has its own `AGENTS.md` in the project root. This local file:

1. **References the canonical rules by URL** — agents fetch the base rules (§1–§29) from `https://raw.githubusercontent.com/LoneEngineer99/AgentInstructions/main/AGENTS.md`
2. **Contains the project's own notes** — project overview, architecture, build commands, database schema, status, and overrides
3. **Is the agent's cross-session memory** — agents update this file after every major code change to ensure continuity
4. **Is never the canonical rules** — the project's local file only has project-specific context; the rules are always fetched from the canonical URL

### Expected Sections in the Project's Local `AGENTS.md`

The project's local `AGENTS.md` should contain these sections (see §30 Step 0 for the full template):

| Section | Purpose |
|---------|---------|
| **Canonical Rules Reference** | URL to fetch the base rules from; reading strategy |
| **Project Overview** | Project name, description, components, tech stack |
| **Repository Structure** | Directory tree showing actual project layout |
| **Architecture Patterns** | Patterns specific to the project |
| **Build & Run Commands** | Actual commands for building, running, testing, linting |
| **Database Schema & Migrations** | Schema location, migration details |
| **Site Templates & Design References** | Template sources and usage guidelines |
| **Current Implementation Status** | What's completed, in progress, and planned |
| **Project-Specific Overrides** | Any rules that override the canonical rules |
| **Additional Notes** | Learnings, patterns, and project-specific knowledge |

### The Project's Roadmap

Each project must also maintain a **`.github/roadmap.md`** file (see §29) where:
- Completed work is tracked with status updates
- Upcoming work and milestones are documented
- The agent updates this file after every task

---

*Last updated: 2026-03-04 — Updated to reference-based model: canonical rules + local project AGENTS.md*
*Created: 2026-02-14 — Initial starter kit template*
