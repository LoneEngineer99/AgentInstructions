# Site Templates — Agent Reference Guide

> **This file is required reading for any agent that references or reuses UI components, pages, or assets from the `SiteTemplates/` directory.**
>
> Consult this guide whenever you need to: find a UI pattern, locate a specific page type, identify what CSS/JS assets a component depends on, or add a new template to the registry.
>
> Last updated: 2026-02-17

---

## Table of Contents

1. [Critical Rule: CSS/JS Asset Dependencies](#1-critical-rule-cssjs-asset-dependencies)
2. [Template Registry](#2-template-registry)
3. [Agent Workflow: How to Reuse a Template Component](#3-agent-workflow-how-to-reuse-a-template-component)
4. [Template: Nuron — NFT Marketplace](#4-template-nuron--nft-marketplace)
5. [Template: Vuexy — Admin Dashboard](#5-template-vuexy--admin-dashboard)
6. [Extensibility — Adding a New Template](#6-extensibility--adding-a-new-template)

---

## 1. Critical Rule: CSS/JS Asset Dependencies

> **⚠️ MANDATORY — Read before using any template component.**

When you copy any HTML fragment, page, or component from a template into the project, you **must** also copy every CSS and JS file that fragment depends on. Skipping this step will produce broken, unstyled, or non-functional UI.

### The Strict Dependency Rule

**Before using any element from any template:**

1. Open the source HTML file in the template directory.
2. Collect every `<link rel="stylesheet">` in `<head>`.
3. Collect every `<script src="...">` tag (both `<head>` and end-of-`<body>`).
4. For each asset path, locate the actual file in the template's `assets/` directory.
5. Copy those files into the project, **preserving relative path structure** so that `href` and `src` attributes do not break.
6. If the component uses inline `<script>` blocks that reference global objects (e.g., `ApexCharts`, `Swiper`, `Isotope`), trace those global names back to their source JS file and include that file too.
7. Do **not** assume a library is already in the project — verify it exists in the target project's assets before skipping the copy.

### What "Copy" means

- Copy the file(s) into the project's own `assets/` (or equivalent) directory.
- Do not hot-link to files inside `SiteTemplates/` — templates are reference sources, not runtime dependencies.
- Do not assume CDN availability unless you have confirmed the project already loads that CDN and the version matches.

### Partial reuse

If you are extracting one card or one modal (not a full page), you still need the full library stack that card depends on — not just the CSS for that one component. Template CSS files are monolithic; cherry-picking SCSS partials is only possible if the project uses the same SCSS build pipeline.

---

## 2. Template Registry

Quick-reference index. Agents should scan this table first to identify which template to use, then jump to the matching section for detail.

| # | Template Name | Root Path | Type | Framework | Primary Use Cases |
|---|---------------|-----------|------|-----------|-------------------|
| 1 | **Nuron — NFT Marketplace** | `SiteTemplates/Nuron-NFT Marketplace/` | Public-facing | Bootstrap 5.3.6 | Hero sections, NFT/product cards, explore grids, carousels, countdown timers, blog, auth pages, static utility pages |
| 2 | **Vuexy — Admin Dashboard** | `SiteTemplates/Vuexy-Admin-Dashboard/` | Admin / back-office + front pages | Bootstrap 5.3.5 | Data tables, charts, forms, modals, admin layouts, e-commerce admin, user management, kanban, calendar, invoices, auth, pricing, help-center |

---

## 3. Agent Workflow: How to Reuse a Template Component

Follow these steps in order. Do not skip steps.

```
Step 1 — Identify the source file
   → Use the Page Catalogue in the relevant template section (§4 or §5)
     to find the HTML file that contains the component you need.

Step 2 — Read the full <head> of that source file
   → List every <link rel="stylesheet" href="..."> in order.
   → Note paths relative to the template root.

Step 3 — Read the full bottom-of-<body> script block
   → List every <script src="..."> in order.
   → Note any inline initialization scripts and the global objects
     they reference (e.g., new Swiper(...), ApexCharts, flatpickr).

Step 4 — Build the dependency manifest
   → Combine CSS list + JS list into a complete asset manifest for this page.
   → Cross-check each file against the template's Asset Map (§4.4 or §5.4)
     to confirm it exists.

Step 5 — Copy assets into the project
   → Mirror the directory structure so relative paths remain valid,
     OR update all href/src attributes to match the project's asset layout.
   → Verify every file copied is the correct version (check vendor sub-folders).

Step 6 — Extract and adapt the HTML fragment
   → Copy the relevant HTML section.
   → Remove NFT/admin-specific content text; replace with project content.
   → Keep all class names, data-* attributes, and aria-* attributes intact
     — these are required for JS plugins to initialize correctly.

Step 7 — Check for useful media assets
   → Templates often ship with images, illustrations, icons, and SVG
     graphics (e.g., Vuexy's `assets/img/illustrations/`) that can be
     reused during development as placeholders or final artwork.
   → Copy any relevant media into the project's own assets directory,
     following the same copy rules as CSS/JS (§1).

Step 8 — Verify in browser
   → Confirm no 404 errors in the network tab for any asset.
   → Confirm the component renders and interactive behaviour works.
```

---

## 4. Template: Nuron — NFT Marketplace

**Root path:** `SiteTemplates/Nuron-NFT Marketplace/`

### 4.1 Overview

| Attribute | Value |
|-----------|-------|
| **Type** | Public-facing marketplace / marketing |
| **Bootstrap version** | 5.3.6 |
| **Dark/Light mode** | Yes — toggled via `<meta name="theme-style-mode">` + `jquery.style.swicher.js` |
| **Icon set** | Feather Icons (`feather.min.js`) |
| **SCSS source** | `assets/scss/` (~65 partials) |
| **Build system** | None — static HTML; CSS is pre-compiled to `assets/css/style.css` |
| **Web3 / Blockchain** | Files reference Web3.js and Moralis — **ignore these**; Nuron is used here for its **general UI patterns only** (cards, grids, carousels, hero sections, etc.). Do not use or copy Web3/Moralis JS unless the project is explicitly a blockchain project. |

### 4.2 Approved Usage

Nuron is a **general UI pattern library** for this project. Use it to source:

- Hero / banner sections
- NFT-style cards (adaptable as product, article, or feature cards)
- Explore grid layouts (filterable/sortable grids via Isotope.js)
- Carousel / slider sections (Slick)
- Countdown timer components
- Blog listing and article layouts
- Author / profile page patterns
- Ranking / leaderboard tables
- Authentication forms (login, sign-up, forgot password)
- Static utility pages (404, coming soon, maintenance, contact, about)

Do **not** use the Web3 wallet connection flow (`connect.html`), the `web3.min.js` or `maralis.js` scripts, or Moralis SDK calls unless the project is an NFT/blockchain project.

### 4.3 Page Catalogue

#### Home / Landing Variants

| File | Description |
|------|-------------|
| `index.html` | Primary homepage — hero banner, featured items, top sellers, live auction section |
| `index-two.html` … `index-eighteen.html` | 17 alternate homepage layout variants |

#### Explore / Browse Grids

| File | Description |
|------|-------------|
| `explore-one.html` | Grid with top-bar filter controls |
| `explore-two.html` | Grid using Isotope.js category filtering |
| `explore-three.html` | Carousel/slider grid layout |
| `explore-four.html` | Simple flat grid |
| `explore-five.html` | Grid with integrated modal (place-bid pattern) |
| `explore-six.html` | Grid + top filter + modal |
| `explore-seven.html` | Isotope grid + modal |
| `explore-eight.html` | Second carousel variant |
| `explore-left-filter.html` | Grid with persistent left-sidebar filter panel |
| `explore-list-style.html` | Horizontal list/row view |
| `explore-list-column-two.html` | Two-column list view |
| `explore-live.html` | Live-auction grid with countdown timers |
| `explore-live-two.html` | Live-auction carousel |
| `explore-live-three.html` | Live-auction grid with inline bid action |

#### Detail / Product Pages

| File | Description |
|------|-------------|
| `product-details.html` | Item detail page with bid history, properties, and owner info |
| `product.html` | Product listing/collection page |
| `collection.html` | Curated collection display page |

#### User / Profile Pages

| File | Description |
|------|-------------|
| `author.html` | Public creator/author profile with owned and created items |
| `creator.html` | Directory listing of all creators |
| `edit-profile.html` | Authenticated user profile editing form |
| `ranking.html` | Leaderboard / top-items ranking table |
| `activity.html` | Global activity feed (bids, sales, transfers) |

#### Creation / Upload Forms

| File | Description |
|------|-------------|
| `create.html` | Item creation/upload form |
| `create-collection.html` | Collection creation form |
| `upload-variants.html` | Multi-variant upload form |

#### Authentication Pages

| File | Description |
|------|-------------|
| `login.html` | Login form |
| `sign-up.html` | User registration form |
| `forget.html` | Forgot-password / recovery page |
| `connect.html` | ⚠️ Web3 wallet connection page — **do not use unless project is Web3** |

#### Blog Pages

| File | Description |
|------|-------------|
| `blog.html` | Main blog listing (default layout) |
| `blog-col-two.html` | Blog listing — two-column grid |
| `blog-col-three.html` | Blog listing — three-column grid |
| `blog-single-col.html` | Blog listing — single column |
| `blog-details.html` | Single blog post / article detail |

#### Forum Pages

| File | Description |
|------|-------------|
| `forum-community.html` | Forum listing — threads and topics |
| `forum-details.html` | Individual forum thread / reply page |

#### Static & Utility Pages

| File | Description |
|------|-------------|
| `about.html` | About / company page with team and mission sections |
| `contact.html` | Contact form and location/social links |
| `support.html` | Customer support / help center |
| `privacy-policy.html` | Privacy policy |
| `terms-condition.html` | Terms and conditions |
| `upcoming_projects.html` | Upcoming drops / projects announcement page |
| `newsletter.html` | Email newsletter subscription page |
| `404.html` | Custom 404 error page |
| `coming-soon.html` | Pre-launch countdown splash page |
| `maintenance.html` | Site maintenance holding page |

### 4.4 Asset Map

```
SiteTemplates/Nuron-NFT Marketplace/
├── assets/
│   ├── css/
│   │   ├── style.css              ← PRIMARY custom stylesheet (always required)
│   │   ├── style.css.map
│   │   ├── vendor/
│   │   │   ├── bootstrap.min.css  ← Bootstrap 5.3.6 (always required)
│   │   │   ├── slick.css          ← Slick Carousel base
│   │   │   ├── slick-theme.css    ← Slick Carousel theme
│   │   │   ├── nice-select.css    ← jQuery Nice Select
│   │   │   └── odometer.css       ← Odometer animated counter
│   │   └── plugins/
│   │       ├── feature.css        ← Custom feature/icon component
│   │       └── jquery-ui.min.css  ← jQuery UI widgets
│   ├── js/
│   │   ├── main.js                ← PRIMARY custom script (always required)
│   │   └── vendor/
│   │       ├── jquery.js          ← jQuery (core; load first)
│   │       ├── bootstrap.min.js   ← Bootstrap 5 bundle
│   │       ├── feather.min.js     ← Feather Icons
│   │       ├── gsap.js            ← GSAP animation engine
│   │       ├── scrolltrigger.js   ← GSAP ScrollTrigger
│   │       ├── splittext.js       ← GSAP SplitText
│   │       ├── sal.min.js         ← Scroll Animation Library
│   │       ├── slick.min.js       ← Slick Carousel
│   │       ├── isotop.js          ← Isotope.js filterable grid
│   │       ├── jquery-ui.js       ← jQuery UI
│   │       ├── jquery.nice-select.min.js
│   │       ├── jquery-appear.js   ← Viewport detection
│   │       ├── odometer.js        ← Animated counter
│   │       ├── count-down.js      ← Countdown timer
│   │       ├── particles.js       ← Particles.js canvas background
│   │       ├── vanilla.tilt.js    ← 3D card tilt hover effect
│   │       ├── web3.min.js        ← ⚠️ Web3 only — skip unless blockchain project
│   │       ├── maralis.js         ← ⚠️ Moralis only — skip unless blockchain project
│   │       ├── js.cookie.js       ← Cookie utility
│   │       ├── imageloaded.js     ← imagesLoaded (image load detection)
│   │       ├── modernizer.min.js  ← Modernizr feature detection
│   │       ├── backtoTop.js       ← Back-to-top button
│   │       ├── input-file.js      ← Custom file input handler
│   │       ├── jquery.custom-file-input.js
│   │       ├── jquery.style.swicher.js ← Dark/light theme switcher
│   │       ├── savePopup.js       ← Save/bookmark popup
│   │       └── nft.js             ← NFT-specific UI logic
│   ├── fonts/                     ← Web fonts
│   ├── images/                    ← Template images — useful as placeholders or reference during development
│   └── scss/                      ← SCSS source (for reference only; do not auto-compile)
```

### 4.5 Third-Party Library Inventory

| Library | File | Notes |
|---------|------|-------|
| Bootstrap | `vendor/bootstrap.min.css` + `vendor/bootstrap.min.js` | Always required |
| jQuery | `vendor/jquery.js` | Load before all other vendor JS |
| GSAP + ScrollTrigger + SplitText | `vendor/gsap.js`, `scrolltrigger.js`, `splittext.js` | Required for scroll/text animations |
| Slick Carousel | `vendor/slick.css`, `slick-theme.css`, `slick.min.js` | Required for any slider/carousel |
| Isotope.js | `vendor/isotop.js` | Required for filterable/sortable grids |
| Feather Icons | `vendor/feather.min.js` | Required if icons use `data-feather` attribute |
| jQuery Nice Select | `vendor/nice-select.css`, `jquery.nice-select.min.js` | Required for styled `<select>` dropdowns |
| Odometer.js | `vendor/odometer.css`, `odometer.js` | Required for animated number counters |
| Particles.js | `vendor/particles.js` | Required for animated particle backgrounds |
| Vanilla Tilt | `vendor/vanilla.tilt.js` | Required for 3D card hover tilt effects |
| SAL.js | `vendor/sal.min.js` | Required for on-scroll entrance animations |
| Countdown | `vendor/count-down.js` | Required for timer components |
| jQuery UI | `plugins/jquery-ui.min.css`, `vendor/jquery-ui.js` | Required for drag/drop, sliders |
| imagesLoaded | `vendor/imageloaded.js` | Required for Isotope grid layout after images load |
| Web3.js | `vendor/web3.min.js` | ⚠️ Skip — blockchain projects only |
| Moralis | `vendor/maralis.js` | ⚠️ Skip — blockchain projects only |

---

## 5. Template: Vuexy — Admin Dashboard

**Root path:** `SiteTemplates/Vuexy-Admin-Dashboard/`

### 5.1 Overview

| Attribute | Value |
|-----------|-------|
| **Type** | Admin/back-office dashboard + public front pages |
| **Bootstrap version** | 5.3.5 |
| **Dark/Light mode** | Yes — Bootstrap 5.3 `data-bs-theme` attribute system |
| **Icon sets** | Font Awesome 6.7.2, Iconify, Tabler Icons, Flag Icons |
| **Font** | Public Sans (Google Fonts) |
| **SCSS source** | `assets/scss/` — compiled via Gulp 4 + Dart Sass |
| **Build system** | Gulp 4 + Webpack 5 + Dart Sass + Browser-sync |
| **Build commands** | `npm run build` (dev), `npm run build:prod` (production), `npm run serve` (dev server with live reload) |

### 5.2 Approved Directories

Agents must **only** reference HTML files from the following two directories:

| Directory | Purpose |
|-----------|---------|
| `html/vertical-menu-template-no-customizer/` | All admin panel pages (~130 files). The no-customizer variant is preferred for static usage — it eliminates the live theme-customizer sidebar that requires extra JS. |
| `html/front-pages-no-customizer/` | Public-facing marketing and help pages (6 files). |

**Do not** reference:
- `html/horizontal-menu-template-no-customizer/` — use vertical menu for consistency unless the project explicitly requires horizontal nav.
- `html/html-starter/` — minimal scaffolding only; lacks fully built-out page examples.
- `html/vertical-menu-template/` or `html/horizontal-menu-template/` — these include the live customizer which adds unnecessary JS complexity for static use.

### 5.3 Page Catalogue

#### Front Pages (`html/front-pages-no-customizer/`)

| File | Description |
|------|-------------|
| `landing-page.html` | Marketing/product landing page |
| `pricing-page.html` | Public-facing pricing tiers page |
| `payment-page.html` | Checkout / payment form page |
| `checkout-page.html` | Checkout card / order summary page |
| `help-center-landing.html` | Help center home with search and categories |
| `help-center-article.html` | Individual help/support article page |

#### Admin Pages (`html/vertical-menu-template-no-customizer/`)

##### Dashboards

| File | Description |
|------|-------------|
| `index.html` | Default analytics dashboard |
| `dashboards-analytics.html` | Analytics-focused dashboard |
| `dashboards-crm.html` | CRM-focused dashboard |

##### Apps — E-Commerce

| File | Description |
|------|-------------|
| `app-ecommerce-dashboard.html` | E-commerce sales overview |
| `app-ecommerce-product-list.html` | Product listing and management |
| `app-ecommerce-order-list.html` | Order listing and status |
| `app-ecommerce-category-list.html` | Product category management |
| `app-ecommerce-customer-all.html` | Customer listing |
| `app-ecommerce-manage-reviews.html` | Review moderation |
| `app-ecommerce-referral.html` | Referral program management |
| `app-ecommerce-settings-*.html` | E-commerce settings tabs |

##### Apps — Invoice

| File | Description |
|------|-------------|
| `app-invoice-list.html` | Invoice listing |
| `app-invoice-add.html` | Create new invoice |
| `app-invoice-edit.html` | Edit existing invoice |
| `app-invoice-preview.html` | Invoice preview/view |
| `app-invoice-print.html` | Print-optimized invoice layout |

##### Apps — Communication & Collaboration

| File | Description |
|------|-------------|
| `app-calendar.html` | FullCalendar scheduling interface |
| `app-chat.html` | Real-time chat/messaging UI |
| `app-email.html` | Email client interface |
| `app-kanban.html` | Drag-and-drop Kanban board |

##### Apps — Academy / LMS

| File | Description |
|------|-------------|
| `app-academy-dashboard.html` | Course management dashboard |
| `app-academy-course.html` | Course listing |
| `app-academy-course-details.html` | Individual course detail page |

##### Apps — Logistics

| File | Description |
|------|-------------|
| `app-logistics-dashboard.html` | Logistics/fleet overview dashboard |
| `app-logistics-fleet.html` | Fleet tracking and management |

##### Apps — User Management

| File | Description |
|------|-------------|
| `app-user-list.html` | User listing and search |
| `app-user-view-account.html` | User profile — account tab |
| `app-user-view-billing.html` | User profile — billing tab |
| `app-user-view-security.html` | User profile — security tab |
| `app-user-view-connections.html` | User profile — connections tab |
| `app-user-view-notifications.html` | User profile — notifications tab |

##### Apps — Access Control

| File | Description |
|------|-------------|
| `app-access-roles.html` | Role management |
| `app-access-permission.html` | Permission management |

##### Authentication Pages

| File | Description |
|------|-------------|
| `auth-login-basic.html` | Login — centered card layout |
| `auth-login-cover.html` | Login — full-screen split layout |
| `auth-register-basic.html` | Registration — centered card |
| `auth-register-cover.html` | Registration — full-screen split |
| `auth-register-multisteps.html` | Multi-step registration wizard |
| `auth-forgot-password-basic.html` / `*-cover.html` | Forgot password flows |
| `auth-reset-password-basic.html` / `*-cover.html` | Password reset flows |
| `auth-two-steps-basic.html` / `*-cover.html` | Two-factor authentication |
| `auth-verify-email-basic.html` / `*-cover.html` | Email verification |

##### Profile & Account Settings

| File | Description |
|------|-------------|
| `pages-profile-user.html` | Public user profile |
| `pages-profile-projects.html` | Profile — projects tab |
| `pages-profile-teams.html` | Profile — teams tab |
| `pages-profile-connections.html` | Profile — connections tab |
| `pages-account-settings-account.html` | Settings — account tab |
| `pages-account-settings-billing.html` | Settings — billing tab |
| `pages-account-settings-security.html` | Settings — security tab |
| `pages-account-settings-notifications.html` | Settings — notifications tab |
| `pages-account-settings-connections.html` | Settings — connected accounts tab |

##### Forms

| File | Description |
|------|-------------|
| `forms-basic-inputs.html` | All core HTML input types |
| `forms-input-groups.html` | Input groups and add-ons |
| `forms-custom-options.html` | Custom checkboxes and radio buttons |
| `forms-pickers.html` | Date/time/color picker components (Flatpickr, Pickr) |
| `forms-selects.html` | Select2 enhanced dropdowns |
| `forms-sliders.html` | Range sliders (NouiSlider) |
| `forms-switches.html` | Toggle switches |
| `forms-editors.html` | Rich text editors (Quill) |
| `forms-file-upload.html` | Dropzone file upload |
| `forms-tagify.html` | Tag input component |
| `forms-extras.html` | Input masks, auto-resize, clipboard |
| `form-layouts-*.html` | Horizontal, vertical, and sticky form layouts |
| `form-validation.html` | Form validation patterns (@form-validation/bundle) |
| `form-wizard-icons.html` | Icon-step multi-step wizard (bs-stepper) |
| `form-wizard-numbered.html` | Numbered-step multi-step wizard |

##### Tables

| File | Description |
|------|-------------|
| `tables-basic.html` | Standard HTML tables with Bootstrap styles |
| `tables-datatables-basic.html` | DataTables with basic init |
| `tables-datatables-advanced.html` | DataTables with responsive, fixed cols/headers |
| `tables-datatables-extensions.html` | DataTables export (PDF, Excel, CSV, Print) |

##### Charts

| File | Description |
|------|-------------|
| `charts-apex.html` | ApexCharts — all chart types |
| `charts-chartjs.html` | Chart.js — all chart types |

##### Cards

| File | Description |
|------|-------------|
| `cards-basic.html` | Basic card component variants |
| `cards-advance.html` | Advanced card layouts |
| `cards-actions.html` | Cards with action menus |
| `cards-analytics.html` | Stat/analytics cards |
| `cards-statistics.html` | KPI and statistics cards |

##### UI Components

| File | Description |
|------|-------------|
| `ui-accordion.html` | Accordion |
| `ui-alerts.html` | Alert variants |
| `ui-badges.html` | Badge variants |
| `ui-buttons.html` | Button styles and groups |
| `ui-carousel.html` | Swiper carousel component |
| `ui-modals.html` | Modal dialog patterns |
| `ui-navbar.html` | Navbar variants |
| `ui-offcanvas.html` | Offcanvas panels |
| `ui-toasts.html` | Toast notification components |
| `ui-typography.html` | Typography reference |
| *(additional ui-*.html files)* | Full Bootstrap 5 component kitchen-sink |

##### Extended UI

| File | Description |
|------|-------------|
| `extended-ui-avatar.html` | Avatar component (stacked, group, badge) |
| `extended-ui-blockui.html` | Block UI / loading overlay |
| `extended-ui-drag-and-drop.html` | Drag-and-drop (SortableJS) |
| `extended-ui-media-player.html` | HTML5 media player (Plyr) |
| `extended-ui-perfect-scrollbar.html` | Custom scrollbars |
| `extended-ui-star-ratings.html` | Star rating component |
| `extended-ui-sweetalert2.html` | SweetAlert2 modal dialogs |
| `extended-ui-timeline-*.html` | Vertical and horizontal timeline |
| `extended-ui-tour.html` | Product tour / onboarding (Shepherd.js) |
| `extended-ui-treeview.html` | Tree view (jstree) |

##### Icons, Maps, Layouts, Wizards

| File | Description |
|------|-------------|
| `icons-font-awesome.html` | Font Awesome 6 icon reference |
| `icons-tabler.html` | Tabler Icons reference |
| `maps-leaflet.html` | Leaflet.js interactive map |
| `layouts-*.html` | Layout variant demos (collapsed menu, fluid, without navbar, etc.) |
| `wizard-ex-checkout.html` | Checkout multi-step wizard |
| `wizard-ex-create-deal.html` | Create deal multi-step wizard |
| `wizard-ex-property-listing.html` | Property listing multi-step wizard |
| `modal-examples.html` | Modal dialog pattern library |

##### Misc / Error Pages

| File | Description |
|------|-------------|
| `pages-misc-error.html` | 404 / generic error page |
| `pages-misc-not-authorized.html` | 403 not-authorized page |
| `pages-misc-comingsoon.html` | Coming soon page |
| `pages-misc-under-maintenance.html` | Maintenance page |
| `pages-pricing.html` | Admin-context pricing page |
| `pages-faq.html` | FAQ page |

### 5.4 Asset Map

Vuexy has a split asset structure — per-page JS files live in `assets/js/`, while all vendor libraries live under `assets/vendor/`.

```
SiteTemplates/Vuexy-Admin-Dashboard/
├── assets/
│   ├── css/
│   │   └── demo.css                        ← Demo/preview overrides only (usually not needed)
│   ├── vendor/
│   │   └── css/
│   │       ├── core.css                    ← PRIMARY — Bootstrap 5 + Vuexy base theme (always required)
│   │       ├── theme-default.css           ← Default colour theme (always required)
│   │       ├── pages/
│   │       │   └── *.css                   ← Per-page CSS bundles (copy the one matching your page)
│   │       └── libs/
│   │           └── <library-name>/         ← Per-library vendor CSS (copy only what the page uses)
│   ├── js/
│   │   ├── config.js                       ← Global theme config (always required for admin pages)
│   │   ├── main.js                         ← Core admin template JS — menu/layout/nav (always required)
│   │   ├── front-config.js                 ← Config override for front-pages (use instead of config.js on front pages)
│   │   ├── front-main.js                   ← Core JS for front-facing pages (use instead of main.js on front pages)
│   │   └── <page-name>.js                  ← Per-page JS (always copy the file matching your page)
│   └── vendor/
│       └── js/
│           └── <library-name>/             ← Per-library vendor JS (copy only what the page uses)
├── html/
│   ├── vertical-menu-template-no-customizer/   ← ✅ USE THIS for admin pages
│   ├── front-pages-no-customizer/              ← ✅ USE THIS for front pages
│   ├── horizontal-menu-template-no-customizer/ ← ⛔ Avoid unless project requires horizontal nav
│   └── html-starter/                           ← ⛔ Avoid — minimal scaffolding only
├── assets/img/                                  ← Illustrations, backgrounds, and SVG graphics (useful for development — see §5.6)
├── fonts/                                       ← Iconify, Font Awesome, Flag Icons (copy if icons are used)
├── libs/                                        ← Source distribution of vendor libraries
└── scss/                                        ← SCSS source (requires Gulp pipeline to compile)
```

**Key rule for Vuexy assets:** Every page in Vuexy loads:
1. `assets/vendor/css/core.css`
2. `assets/vendor/css/theme-default.css`
3. The page-specific CSS from `assets/vendor/css/pages/<page>.css`
4. Specific lib CSS from `assets/vendor/css/libs/<lib>/`
5. `assets/js/config.js` (or `front-config.js`)
6. `assets/js/main.js` (or `front-main.js`)
7. The page-specific JS: `assets/js/<page-name>.js`
8. Any lib JS from `assets/vendor/js/<lib>/`

Always inspect the specific HTML file to get the exact list for that page.

### 5.5 Third-Party Library Inventory

| Library | Version | Purpose |
|---------|---------|---------|
| Bootstrap | 5.3.5 | Core layout, components, utilities |
| ApexCharts | 4.2.0 | Interactive SVG charts |
| Chart.js | 4.4.9 | Canvas-based charts |
| FullCalendar | 6.1.17 | Calendar and scheduling |
| DataTables | 2.1.8 | Advanced data table (paging, sorting, responsive, export) |
| Swiper | 11.1.15 | Touch-enabled carousels/sliders |
| Flatpickr | 4.6.13 | Date/time picker |
| Select2 | 4.0.13 | Enhanced `<select>` dropdowns |
| Tagify | 4.32.2 | Tag input fields |
| Quill | 2.0.3 | Rich text editor |
| Dropzone | 5.9.3 | Drag-and-drop file upload |
| SweetAlert2 | 11.14.5 | Modal alert dialogs |
| Shepherd.js | 14.3.0 | Product tours / onboarding |
| SortableJS | 1.15.6 | Drag-and-drop sortable lists |
| jKanban | 1.3.1 | Kanban board |
| Leaflet | 1.9.4 | Interactive maps |
| Mapbox GL | 3.8.0 | WebGL-based advanced maps |
| Perfect Scrollbar | 1.5.6 | Custom scrollbar styling |
| NouiSlider | 15.8.1 | Range slider inputs |
| Plyr | 3.7.8 | HTML5 media player |
| Highlight.js | 11.10.0 | Syntax highlighting |
| i18next | 24.1.2 | Internationalisation |
| Algolia Autocomplete | 1.18.1 | Search autocomplete |
| @form-validation/bundle | 2.4.0 | Form validation (Bootstrap 5) |
| Font Awesome | 6.7.2 | Icon font |
| Animate.css | 4.1.1 | CSS animation classes |
| AOS | 2.3.4 | Animate on scroll |
| Node Waves | 0.7.6 | Material ripple effect |
| jQuery | 3.7.1 | DOM utility (required by select2, DataTables, some plugins) |
| Masonry Layout | 4.2.2 | Cascading grid layout |
| PDFMake | 0.2.18 | Client-side PDF generation |
| JSZip | 3.10.1 | ZIP handling (DataTables export) |
| Moment.js | 2.30.1 | Date/time formatting |
| Cleave-zen | 0.0.17 | Input masking |
| Clipboard.js | 2.0.11 | Copy-to-clipboard |
| bs-stepper | 1.7.0 | Multi-step form stepper |
| KaTeX | 0.16.22 | Math equation rendering |
| @simonwep/pickr | 1.9.1 | Color picker |
| SweetAlert2 | 11.14.5 | Replacement alert dialogs |
| Notyf / Notiflix | 3.10.0 / 3.2.8 | Toast notifications / loading indicators |
| jstree | 3.3.17 | Tree view component |
| HammerJS | 2.0.8 | Touch gesture recognition |

### 5.6 Media Assets — Illustrations & Images

Vuexy ships with a rich set of illustration images, SVG graphics, and background artwork inside `assets/img/`. These are particularly useful during development:

- **Illustrations** (`assets/img/illustrations/`) — decorative illustrations used on auth pages, error pages, and empty-state screens. These can be reused directly in the project as placeholders or final artwork.
- **Backgrounds** — background patterns and shapes used for section decoration.
- **Icons / misc** — miscellaneous graphic assets used across dashboard and front pages.

When building out pages, check `assets/img/` for ready-made visuals before creating custom graphics. Copy any used images into the project's own assets directory following the same rules as CSS/JS (§1) — do not hot-link into `SiteTemplates/`.

---

## 6. Extensibility — Adding a New Template

When a new template is added to `SiteTemplates/`, add an entry to the [Template Registry](#2-template-registry) table and create a new section in this file following the schema below. Replace every `[placeholder]` with actual values from the template.

```markdown
## [N]. Template: [Template Name]

**Root path:** `SiteTemplates/[Template Directory Name]/`

### [N].1 Overview

| Attribute | Value |
|-----------|-------|
| **Type** | [Public-facing / Admin / Email / Other] |
| **Bootstrap version** | [x.x.x or N/A] |
| **Dark/Light mode** | [Yes/No — describe mechanism if yes] |
| **Icon set** | [Library name(s)] |
| **SCSS source** | [Path or "None — pre-compiled only"] |
| **Build system** | [None / Gulp / Webpack / Vite / Other] |
| **Special notes** | [Any important usage restrictions or caveats] |

### [N].2 Approved Usage

[Describe what this template is appropriate for. List what agents should and should not use from it.]

### [N].3 Page Catalogue

[List all HTML pages grouped by category. Include file name and one-line description for each.]

### [N].4 Asset Map

[Provide a directory tree showing where CSS and JS assets live. Annotate which files are always required vs. conditional.]

### [N].5 Third-Party Library Inventory

| Library | Version | Purpose |
|---------|---------|---------|
| [Name] | [x.x.x] | [What it does] |

### [N].6 Media Assets (if applicable)

[List any image, illustration, SVG, or other media directories included with the template that may be useful during development. Note subdirectories of interest (e.g., illustrations, backgrounds).]
```

**Also update:**
- The [Template Registry](#2-template-registry) table in §2 — add a new row.
- The `copilot-instructions.md` **Site Templates & Design References** section — add the new template name, path, and one-line description.

---

*Last updated: 2026-02-17 — Initial guide created from Nuron NFT Marketplace and Vuexy Admin Dashboard analysis.*
