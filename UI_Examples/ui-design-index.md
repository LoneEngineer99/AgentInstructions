# UI Design Reference Index

> **Purpose:** This document catalogs the UI example images in `UI_Examples/` by component type, layout pattern, and visual style. Agents designing UI elements **must** consult this index to produce interfaces that match the visual quality and design language demonstrated in these examples.
>
> **How to use:** Identify the type of UI element you need to build → find the matching category below → review the listed reference images → apply the extracted design principles to your implementation.

---

## Table of Contents

1. [Image Catalog by Category](#1-image-catalog-by-category)
   - [Dashboards & Analytics](#dashboards--analytics)
   - [Data Tables & List Views](#data-tables--list-views)
   - [Cards & Content Panels](#cards--content-panels)
   - [Navigation & Sidebars](#navigation--sidebars)
   - [Forms, Inputs & Settings](#forms-inputs--settings)
   - [Charts & Data Visualization](#charts--data-visualization)
   - [Modals, Dropdowns & Overlays](#modals-dropdowns--overlays)
   - [Landing Pages & Marketing Sections](#landing-pages--marketing-sections)
   - [Pricing & Feature Comparison](#pricing--feature-comparison)
   - [Profile, User & Social Components](#profile-user--social-components)
2. [Cross-Cutting Design Principles](#2-cross-cutting-design-principles)
   - [Color System](#color-system)
   - [Typography](#typography)
   - [Spacing & Layout](#spacing--layout)
   - [Depth & Elevation](#depth--elevation)
   - [Border & Radius](#border--radius)
   - [Iconography & Visual Indicators](#iconography--visual-indicators)
   - [Motion & Interaction](#motion--interaction)
3. [Component-Level Design Patterns](#3-component-level-design-patterns)
   - [Metric / KPI Cards](#metric--kpi-cards)
   - [Stat Badges & Trend Indicators](#stat-badges--trend-indicators)
   - [Progress Indicators](#progress-indicators)
   - [Action Buttons & CTAs](#action-buttons--ctas)
   - [Toggle Switches & Controls](#toggle-switches--controls)
   - [Status Dots & Badges](#status-dots--badges)
   - [Notification & Alert Elements](#notification--alert-elements)
4. [Dark Mode Design Rules](#4-dark-mode-design-rules)
5. [Quick Reference — Design Tokens](#5-quick-reference--design-tokens)

---

## 1. Image Catalog by Category

### Dashboards & Analytics

Full-page dashboard layouts combining multiple data panels, metrics, and visualizations into cohesive admin/analytics views.

| Image File | Key Elements | Standout Techniques |
|---|---|---|
| `071dab652eb02198202b260e2b180a4e.jpg` | Database dashboard with usage stats, circular progress rings, branch/table/backup sections, dropdown panel with Hide/Show toggles | Dark charcoal background, colored progress rings (amber, teal), card grouping with subtle separators, inline dropdown with branch selector |
| `0f6d816e9125e593eacad5aaccdeec32.jpg` | Analytics dashboard with stat cards and area/line charts | Gradient area fills under chart lines, muted card backgrounds elevated from page background, top-bar with filter controls |
| `20d7bceeb2433ae74ebbbe26c4adaec8.jpg` | Metrics dashboard with KPI cards and chart panels | Grid-based card layout, bold primary metric value with secondary subtitle, colored trend arrows |
| `64bd4f480775ba0c39d2e18b9f526d2a.jpg` | Dashboard analytics with mixed chart types and metrics | Multi-chart grid layout, donut chart with centered label, sparkline mini charts in stat cards |
| `781ffd8eb2910ead95686177860b4f4e.jpg` | Dashboard with sidebar navigation and content panels | Collapsible sidebar with icon + text nav items, main content area with consistent card padding |
| `81799ba740883ee7e1334beb097ce50a.jpg` | Analytics metrics display with data summaries | Bold metric typography, secondary text at reduced opacity, icon-prefixed labels |
| `9ed259c8935ae852ed281a80477b8c98.jpg` | Dashboard layout with organized metric panels | Two-column layout with cards of equal height, clean internal card structure with header/body/footer regions |
| `c1992ca9099252cecede4a5833b83fb5.jpg` | Dashboard with data visualization panels | Layered chart components, hover tooltips on data points, responsive grid |
| `f7609afd0e579199e7108cde058b4955.jpg` | Dashboard layout with summary metrics and charts | Top-bar stat row followed by full-width chart area, left-aligned metric labels |

### Data Tables & List Views

Tabular data presentation, list-based content displays, and structured data grids.

| Image File | Key Elements | Standout Techniques |
|---|---|---|
| `640d3bcd43ea126ba2d198d3e3340fa5.jpg` | Data table with structured rows and columns | Alternating row backgrounds at low opacity, sticky header row, column-aligned content, action buttons per row |
| `d507e6b2adc89e0ba77ce3b2bc92f6c7.jpg` | List/table interface with actions | Clean row hover state (subtle background change), inline status badges, icon-based action column, search/filter bar above table |
| `491046c32fd4d846d4d2b41f596bae02.jpg` | Panel layout with list components | Left panel list with selected-item highlight, right detail panel, split-view layout pattern |
| `95219b34c3302862f23810c5e47cec3b.jpg` | Dark themed data display with list items | Monospaced data values, muted separators between rows, compact information density |

### Cards & Content Panels

Standalone card components used for displaying content blocks, features, summaries, or grouped information.

| Image File | Key Elements | Standout Techniques |
|---|---|---|
| `504b11c175a5dc04753769936121e5b7.jpg` | Feature/content cards in grid layout | Consistent card height with flexbox alignment, icon or illustration header, title + description + action link structure |
| `7c7b783fa505d0eab3e81be1ba56d3ae.jpg` | Card or grid layout for content display | Uniform border-radius on all cards, consistent internal padding (16-24px), hover elevation effect |
| `b7ccb1420701278e8c08a47c7aef019d.jpg` | Card layout with clean styling | Soft shadow (0 2px 8px rgba(0,0,0,0.08)), white or dark card surface, clear header/body separation |
| `f8185a6e1b891cb43b9ac9a1e8b0ae1a.jpg` | Content card layout with structured elements | Image + text card composition, consistent aspect ratios on image slots, ellipsis truncation on long text |
| `34b0a2b18b1e9cee1f9329bacf261af1.jpg` | Dark themed card interface | Glassmorphism card surfaces (semi-transparent with backdrop blur), neon/gradient accent borders |
| `d3996fe7e7535a55cc12c40ba84c78c5.jpg` | Layered card elements with dark theme | Multiple elevation layers creating depth, card-within-card nesting for grouped info |
| `c91d91c50b950c09fe86c7cddf99f332.jpg` | Feature showcase cards | Icon + heading + description pattern, even 3-column grid, generous card padding (24-32px) |

### Navigation & Sidebars

Sidebar menus, top navigation bars, breadcrumbs, and tab navigation components.

| Image File | Key Elements | Standout Techniques |
|---|---|---|
| `96098a9f49ce6bea3bc326bf816de0a7.jpg` | Sidebar navigation layout | Active nav item highlighted with accent background or left border indicator, icon + label + optional badge count, collapsible section groups |
| `e88a48cd3b4fff7679c9d670ec39ab2f.jpg` | Navigation/menu interface | Clean menu items with hover backgrounds, grouped sections with subtle dividers, compact icon-only collapsed state |
| `8b4414da8a030e8c3f0ea96fcf898151.jpg` | Content management interface with navigation | Tab-based sub-navigation within content area, breadcrumb trail above, clear active tab indicator |

### Forms, Inputs & Settings

Form layouts, input fields, configuration panels, settings pages, and multi-step forms.

| Image File | Key Elements | Standout Techniques |
|---|---|---|
| `11d1381f35e87850ddb72cc4ecf712a4.jpg` | Settings/configuration UI with toggle panels | Section groupings with header labels, toggle switches with ON/OFF states, descriptive helper text below inputs |
| `1f216654df6e22149b9a262fad47188d.jpg` | Form interface with input fields | Bordered input fields (1px solid at 20% opacity), floating or top-aligned labels, clear focus ring on active field (2px accent color) |
| `88e240feedef75bd187439da9d729c35.jpg` | Form with various input elements | Mix of text inputs, dropdowns, and checkboxes, two-column form layout, action buttons right-aligned at form bottom |
| `9c146257e3c0bac3b3042b615c4e8d0a.jpg` | Settings panel with structured controls | Card-based settings sections, inline description + control on same row, save/cancel button pair |
| `dc9fab3bb96edd2c15faaecffd6c5946.jpg` | Configuration/settings panel | Vertical settings list with description and control aligned right, section headers with dividers, secondary text at reduced opacity |
| `6ee22923ed309a714ddce138bb92efb3.jpg` | Input-focused interface | Clean input group with label + field + validation message stack, error state with red border and helper text |

### Charts & Data Visualization

Chart components, graphs, and visual data representation elements.

| Image File | Key Elements | Standout Techniques |
|---|---|---|
| `6f80a15d0cd0a58a39037b8a6e37c67c.jpg` | Chart-focused data visualization UI | Smooth bezier curve lines, gradient fill under area charts, grid lines at low opacity (5-10%), interactive tooltip on hover |
| `e2ef9c557e3df8cd2a6b5d27cb59aff7.jpg` | Analytics with charts | Multi-series line chart with color-coded legend, time-range selector buttons (7d, 30d, 90d), chart container with rounded corners |
| `80b2159ea980399c013effb5e634023a.jpg` | Dark themed chart panels | Dark chart background making data lines pop, dot markers on data points, Y-axis labels at reduced opacity |

### Modals, Dropdowns & Overlays

Dialog boxes, dropdown menus, popover panels, and overlay components.

| Image File | Key Elements | Standout Techniques |
|---|---|---|
| `e058750654de06e16b60405e8edcafe7.jpg` | Modal/dialog overlay | Backdrop blur + dark overlay (rgba(0,0,0,0.5)), centered modal with rounded corners (12-16px), clear close button (X) top-right, header/body/footer sections |
| `22ec65f1ebdbf2b6463a9511c4aed084.jpg` | Dropdown/popover component | Smooth shadow around dropdown container, max-height with scroll, search field at top of dropdown list, selected item checkmark |
| `1e414d9e8ad4009f9f056d266ed6a56e.jpg` | Panel overlay or expanded card detail | Slide-in panel from right, overlay backdrop, detail view with close action |

### Landing Pages & Marketing Sections

Hero sections, feature grids, call-to-action areas, and marketing-oriented layouts.

| Image File | Key Elements | Standout Techniques |
|---|---|---|
| `66f6d85d3b999acac056236ffc68942a.jpg` | Landing/marketing page section | Bold hero typography (48-72px), gradient text or gradient background, centered CTA button with high-contrast color, supporting illustration or graphic |
| `b1feb803a5518712de4a11736720145c.jpg` | Landing page section with features | Feature grid with icon + title + description, alternating layout (image left/right), generous vertical section spacing (80-120px) |
| `1ef7fca74856d66653599e994c10fcc9.jpg` | Dark themed product/landing page | Full-bleed dark background, glowing accent elements, product screenshot or mockup centerpiece, trust badges or logos row |

### Pricing & Feature Comparison

Pricing tables, plan comparison cards, and feature tier displays.

| Image File | Key Elements | Standout Techniques |
|---|---|---|
| `8cc017b0515cffb355e834fa2492bb5e.jpg` | Pricing or feature comparison cards | Highlighted "recommended" card with accent border or gradient, consistent card structure (plan name, price, feature list, CTA), check/cross icons for feature availability |
| `67c3b301cfcc2cadff1325e3f0e90d51.jpg` | Feature/plan comparison layout | Column-based comparison, sticky header row for plan names, alternating row backgrounds in feature list |

### Profile, User & Social Components

User profiles, avatars, social elements, and person-oriented components.

| Image File | Key Elements | Standout Techniques |
|---|---|---|
| `65376a8dde434c9dc706b9bf8408f779.jpg` | Profile or user-facing content | Circular avatar with status indicator dot, name + role text hierarchy, action buttons below profile info |
| `666fdd81ae4329416521da72e9551371.jpg` | Dark themed user/social interface | User list with avatar + name + meta info, online/offline status indicators, compact list density with 8-12px row gaps |

---

## 2. Cross-Cutting Design Principles

These principles are consistently applied across **all** reference images and should be treated as mandatory design rules when generating UI.

### Color System

| Principle | Implementation Details |
|---|---|
| **Dark mode as default** | Primary background: `#0f1117` to `#1a1d23` (near-black with slight blue/purple tint). Secondary surface: `#1e2028` to `#2a2d35`. Tertiary/card surface: `#252830` to `#32353e` |
| **Muted base palette** | Text and structural elements use desaturated, low-contrast tones. Primary text: `rgba(255,255,255,0.87)`. Secondary text: `rgba(255,255,255,0.60)`. Tertiary/disabled text: `rgba(255,255,255,0.38)` |
| **Vibrant accent colors** | Accent colors are fully saturated and used sparingly for emphasis: Primary accent blue `#3b82f6`, success green `#22c55e`, warning amber `#f59e0b`, error red `#ef4444`, info purple `#8b5cf6` |
| **Semantic color coding** | Colors convey meaning: green = positive/success/growth, red = negative/error/decline, amber = warning/pending, blue = primary action/info, purple = premium/special |
| **Gradient accents** | Used on CTAs, highlights, decorative elements. Common gradients: blue-to-purple (`#3b82f6` → `#8b5cf6`), teal-to-blue (`#06b6d4` → `#3b82f6`), amber-to-orange (`#f59e0b` → `#f97316`) |
| **Light mode alternative** | Background: `#f8f9fa` to `#ffffff`. Card surface: `#ffffff`. Primary text: `#1a1d23`. Secondary text: `#6b7280`. Border: `rgba(0,0,0,0.08)` |

### Typography

| Principle | Implementation Details |
|---|---|
| **Font family** | Sans-serif system stack: `Inter`, `-apple-system`, `BlinkMacSystemFont`, `Segoe UI`, or equivalent clean geometric sans-serif |
| **Clear size hierarchy** | Page title: 24-32px / 600-700 weight. Section heading: 18-20px / 600 weight. Card title: 16px / 600 weight. Body text: 14px / 400 weight. Caption/meta: 12px / 400 weight. Metric value: 28-36px / 700 weight |
| **Weight contrast** | Bold (600-700) for headings, values, and emphasis. Regular (400) for body text and descriptions. Medium (500) for labels and sub-headings |
| **Line height** | Headings: 1.2-1.3. Body text: 1.5-1.6. Compact elements (badges, buttons): 1.0-1.2 |
| **Letter spacing** | Slight positive tracking on uppercase labels: `0.5-1px`. Normal tracking on body text. Tight tracking on large display numbers: `-0.5px` |
| **Text opacity for hierarchy** | Instead of multiple gray shades, use single white/black color with varying opacity levels for text hierarchy |

### Spacing & Layout

| Principle | Implementation Details |
|---|---|
| **Consistent spacing scale** | Base unit: 4px. Common values: 4, 8, 12, 16, 20, 24, 32, 40, 48, 64px. All spacing values should be multiples of 4 |
| **Generous internal padding** | Cards: 20-24px padding. Modals: 24-32px padding. Page margins: 24-32px. Section gaps: 24-48px |
| **Grid systems** | 12-column grid for dashboards. Common layouts: 1-col (mobile), 2-col, 3-col, 4-col. Gap between grid items: 16-24px |
| **Content density** | Comfortable mode: 12-16px between list items. Compact mode: 8-12px. Always at least 8px between distinct elements |
| **Sidebar width** | Expanded: 240-280px. Collapsed (icon-only): 60-72px. Sidebar uses fixed position with main content offset |
| **Max content width** | Content areas cap at 1200-1440px with auto margins for centering on ultra-wide screens |

### Depth & Elevation

| Principle | Implementation Details |
|---|---|
| **Layered surface model** | Base layer (page background) → Surface layer (cards, panels) → Elevated layer (dropdowns, modals). Each layer is slightly lighter in dark mode |
| **Box shadows** | Low elevation: `0 1px 3px rgba(0,0,0,0.12)`. Medium: `0 4px 12px rgba(0,0,0,0.15)`. High (modals): `0 12px 40px rgba(0,0,0,0.25)`. Dark mode shadows are more subtle |
| **Glassmorphism** | Semi-transparent backgrounds: `rgba(255,255,255,0.05)` to `rgba(255,255,255,0.10)`. Backdrop blur: `backdrop-filter: blur(12-20px)`. Use on overlays and elevated panels |
| **Backdrop overlays** | Modals: `rgba(0,0,0,0.50)` to `rgba(0,0,0,0.70)` with `backdrop-filter: blur(4-8px)` |

### Border & Radius

| Principle | Implementation Details |
|---|---|
| **Border radius consistency** | Small elements (badges, tags): 4-6px. Medium elements (buttons, inputs): 8px. Cards and panels: 12px. Modals and large containers: 16px. Full round (avatars, toggles): 9999px |
| **Subtle borders** | Dark mode: `1px solid rgba(255,255,255,0.08)` to `rgba(255,255,255,0.12)`. Light mode: `1px solid rgba(0,0,0,0.08)` to `rgba(0,0,0,0.12)`. Never use hard black or white borders |
| **Dividers** | Horizontal dividers: `1px solid rgba(255,255,255,0.06)` in dark mode. Use sparingly — prefer spacing over dividers |
| **Focus rings** | `2px solid {accent-color}` with `2px offset` for keyboard focus states. Or use `box-shadow: 0 0 0 2px {accent-color}` with alpha |

### Iconography & Visual Indicators

| Principle | Implementation Details |
|---|---|
| **Icon style** | Outline/stroke icons at 1.5-2px stroke width for navigation and UI. Filled icons for active/selected states. Consistent size: 16px (inline), 20px (nav items), 24px (feature icons) |
| **Status indicators** | Colored dots: 8px diameter circles — green (online/active), amber (warning/pending), red (error/offline), gray (inactive). Position: left of label or top-right of avatar |
| **Color-coded icons** | Icons inherit semantic colors: green checkmarks, red X marks, amber warning triangles, blue info circles |
| **Decorative illustrations** | Used in empty states and feature sections. Flat/minimal style with limited palette matching the accent color scheme |

### Motion & Interaction

| Principle | Implementation Details |
|---|---|
| **Hover states** | Cards: subtle background lightening (`+3-5%` brightness) or slight elevation increase. Buttons: slight brightness shift or scale. Table rows: background highlight at `rgba(255,255,255,0.03)` |
| **Transitions** | Duration: 150-200ms for micro-interactions (hover, toggle). 250-350ms for reveals (dropdown open, modal enter). Easing: `ease-out` for entrances, `ease-in` for exits, `ease-in-out` for state changes |
| **Loading states** | Skeleton screens with pulsing gradient animation. Spinner: small circular indicator (16-20px) using accent color. Progress bars: smooth width transition |
| **Active/pressed states** | Slight scale-down (`transform: scale(0.98)`) or darkening for tactile feedback |

---

## 3. Component-Level Design Patterns

### Metric / KPI Cards

**Seen in:** `071dab652eb02198202b260e2b180a4e.jpg`, `0f6d816e9125e593eacad5aaccdeec32.jpg`, `20d7bceeb2433ae74ebbbe26c4adaec8.jpg`, `64bd4f480775ba0c39d2e18b9f526d2a.jpg`, `81799ba740883ee7e1334beb097ce50a.jpg`, `f7609afd0e579199e7108cde058b4955.jpg`

**Structure:**
```
┌─────────────────────────────┐
│ [Icon]  Label        [Trend]│
│                             │
│   $12,450                   │
│   Primary metric value      │
│                             │
│   ↑ 12.5% vs last period   │
│   [Optional sparkline]      │
└─────────────────────────────┘
```

**Rules:**
- Metric value is the largest, boldest text (28-36px, weight 700)
- Label text above metric is small and muted (12-13px, 60% opacity)
- Trend indicator uses semantic color (green ↑ for positive, red ↓ for negative)
- Optional icon top-left with colored circular background (32-40px)
- Optional sparkline/mini chart at card bottom
- Card padding: 20-24px

### Stat Badges & Trend Indicators

**Seen in:** `071dab652eb02198202b260e2b180a4e.jpg`, `20d7bceeb2433ae74ebbbe26c4adaec8.jpg`, `81799ba740883ee7e1334beb097ce50a.jpg`

**Rules:**
- Small pill-shaped badges: `padding: 2px 8px`, `border-radius: 9999px`
- Green background for positive: `rgba(34,197,94,0.15)` with green text
- Red background for negative: `rgba(239,68,68,0.15)` with red text
- Arrow icon (↑/↓) at 12px preceding the percentage value
- Font size: 12px, weight 500

### Progress Indicators

**Seen in:** `071dab652eb02198202b260e2b180a4e.jpg`, `9ed259c8935ae852ed281a80477b8c98.jpg`

**Circular progress ring:**
- SVG circle with `stroke-dasharray` and `stroke-dashoffset` for fill percentage
- Track ring: `rgba(255,255,255,0.08)` or muted gray
- Fill ring: semantic accent color (amber for usage, green for completion)
- Ring thickness: 3-4px for small (32px), 6-8px for large (64px+)
- Center content: percentage value or icon

**Linear progress bar:**
- Track: 4-8px height, full border-radius, muted background
- Fill: accent gradient or solid color, same border-radius
- Animated transition on value change: `transition: width 500ms ease-out`

### Action Buttons & CTAs

**Seen in:** `66f6d85d3b999acac056236ffc68942a.jpg`, `8cc017b0515cffb355e834fa2492bb5e.jpg`, `b1feb803a5518712de4a11736720145c.jpg`

**Primary button:**
- Background: solid accent color or gradient
- Text: white, 14px, weight 600
- Padding: `10px 20px` to `12px 24px`
- Border-radius: 8px
- Hover: slight brightness increase or subtle shadow
- Active: slight scale-down or darkening

**Secondary button:**
- Background: transparent
- Border: `1px solid rgba(255,255,255,0.20)` (dark) or `1px solid rgba(0,0,0,0.15)` (light)
- Text: inherit color, 14px, weight 500
- Same padding and radius as primary

**Ghost/text button:**
- No background, no border
- Text only with accent color
- Hover: subtle background `rgba({accent},0.08)`

### Toggle Switches & Controls

**Seen in:** `11d1381f35e87850ddb72cc4ecf712a4.jpg`, `071dab652eb02198202b260e2b180a4e.jpg`, `dc9fab3bb96edd2c15faaecffd6c5946.jpg`

**Rules:**
- Track width: 40-44px, height: 22-24px, full border-radius
- OFF state track: `rgba(255,255,255,0.12)` (dark) or `#d1d5db` (light)
- ON state track: accent color (typically `#3b82f6` or `#22c55e`)
- Thumb: white circle, 18-20px diameter, centered vertically
- Transition: `200ms ease-in-out` for both track color and thumb position
- Drop shadow on thumb: `0 1px 3px rgba(0,0,0,0.2)`

### Status Dots & Badges

**Seen in:** `65376a8dde434c9dc706b9bf8408f779.jpg`, `666fdd81ae4329416521da72e9551371.jpg`, `d507e6b2adc89e0ba77ce3b2bc92f6c7.jpg`

**Status dot:**
- 8px circle, positioned inline-left of text or top-right of avatar
- Colors: green (`#22c55e`) = active/online, amber (`#f59e0b`) = warning/idle, red (`#ef4444`) = error/offline, gray (`#6b7280`) = inactive
- Optional pulse animation for "live" states: `@keyframes pulse { 0%, 100% { opacity: 1 } 50% { opacity: 0.5 } }`

**Text badge:**
- Pill shape: `padding: 2px 10px`, `border-radius: 9999px`
- Colored background at 15% opacity with matching text color
- Font: 11-12px, weight 500, uppercase optional for category labels

### Notification & Alert Elements

**Seen in:** `e058750654de06e16b60405e8edcafe7.jpg`

**Toast/alert pattern:**
- Left color border: 3-4px solid semantic color
- Background: surface color with slight tint of semantic color
- Icon left-aligned matching semantic color
- Title (14px, 600 weight) + description (13px, 400 weight)
- Close button top-right
- Auto-dismiss with progress bar at bottom (optional)

---

## 4. Dark Mode Design Rules

The majority of reference images use dark mode. Apply these rules when building dark-themed interfaces:

1. **Never use pure black (`#000000`)** as background — always add a slight blue, purple, or warm tint. Use `#0f1117`, `#111318`, or `#1a1d23`
2. **Never use pure white (`#ffffff`)** for text — use `rgba(255,255,255,0.87)` for primary text and lower opacities for secondary text
3. **Surfaces get lighter as they elevate** — each elevation layer is 3-5% brighter than the one beneath it
4. **Borders become more transparent** — use `rgba(255,255,255,0.06)` to `rgba(255,255,255,0.12)` instead of solid gray lines
5. **Shadows are less visible** — reduce shadow opacity by 30-50% compared to light mode equivalents
6. **Accent colors remain vibrant** — don't desaturate accent colors in dark mode; they provide the visual interest
7. **Use colored backgrounds sparingly** — colored surfaces should be at 8-15% opacity of the accent color to create tinted containers
8. **Images and illustrations may need dimming** — apply `brightness(0.85)` or `opacity: 0.9` to prevent overly bright image blocks
9. **Hover states add brightness** — instead of darkening elements on hover (as in light mode), lighten them by 3-5%
10. **Test all text for WCAG contrast** — ensure all text meets a minimum 4.5:1 contrast ratio against its background

---

## 5. Quick Reference — Design Tokens

Use these tokens as starting values when implementing UI components matching the reference images.

### Colors

```
/* Dark Mode Surfaces */
--bg-base:            #0f1117;
--bg-surface:         #1a1d23;
--bg-elevated:        #252830;
--bg-overlay:         rgba(0, 0, 0, 0.60);

/* Light Mode Surfaces */
--bg-base-light:      #f8f9fa;
--bg-surface-light:   #ffffff;
--bg-elevated-light:  #ffffff;

/* Text (Dark Mode) */
--text-primary:       rgba(255, 255, 255, 0.87);
--text-secondary:     rgba(255, 255, 255, 0.60);
--text-tertiary:      rgba(255, 255, 255, 0.38);
--text-disabled:      rgba(255, 255, 255, 0.20);

/* Text (Light Mode) */
--text-primary-light:   #1a1d23;
--text-secondary-light: #6b7280;
--text-tertiary-light:  #9ca3af;

/* Accent Colors */
--accent-blue:        #3b82f6;
--accent-purple:      #8b5cf6;
--accent-green:       #22c55e;
--accent-amber:       #f59e0b;
--accent-red:         #ef4444;
--accent-teal:        #06b6d4;

/* Borders (Dark Mode) */
--border-subtle:      rgba(255, 255, 255, 0.06);
--border-default:     rgba(255, 255, 255, 0.10);
--border-strong:      rgba(255, 255, 255, 0.16);

/* Borders (Light Mode) */
--border-subtle-light:  rgba(0, 0, 0, 0.06);
--border-default-light: rgba(0, 0, 0, 0.10);
--border-strong-light:  rgba(0, 0, 0, 0.16);
```

### Spacing

```
--space-1:  4px;
--space-2:  8px;
--space-3:  12px;
--space-4:  16px;
--space-5:  20px;
--space-6:  24px;
--space-8:  32px;
--space-10: 40px;
--space-12: 48px;
--space-16: 64px;
```

### Border Radius

```
--radius-sm:    4px;   /* badges, tags */
--radius-md:    8px;   /* buttons, inputs */
--radius-lg:    12px;  /* cards, panels */
--radius-xl:    16px;  /* modals, large containers */
--radius-full:  9999px; /* pills, avatars, toggles */
```

### Shadows (Dark Mode)

```
--shadow-sm:    0 1px 2px rgba(0, 0, 0, 0.20);
--shadow-md:    0 4px 12px rgba(0, 0, 0, 0.25);
--shadow-lg:    0 12px 40px rgba(0, 0, 0, 0.35);
--shadow-inner: inset 0 1px 2px rgba(0, 0, 0, 0.20);
```

### Shadows (Light Mode)

```
--shadow-sm-light:    0 1px 3px rgba(0, 0, 0, 0.08);
--shadow-md-light:    0 4px 12px rgba(0, 0, 0, 0.10);
--shadow-lg-light:    0 12px 40px rgba(0, 0, 0, 0.15);
```

### Typography

```
--font-family:        'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;

--text-xs:   12px;  /* captions, meta */
--text-sm:   13px;  /* secondary text */
--text-base: 14px;  /* body text */
--text-lg:   16px;  /* card titles */
--text-xl:   18px;  /* section headings */
--text-2xl:  24px;  /* page titles */
--text-3xl:  32px;  /* hero headings */
--text-4xl:  48px;  /* display text */

--font-regular:  400;
--font-medium:   500;
--font-semibold: 600;
--font-bold:     700;

--leading-tight:   1.25;
--leading-normal:  1.5;
--leading-relaxed: 1.625;
```

### Transitions

```
--transition-fast:   150ms ease-out;  /* hover, toggle */
--transition-normal: 250ms ease-out;  /* dropdown open, tab switch */
--transition-slow:   350ms ease-out;  /* modal enter, page transition */
```

---

> **Maintenance:** When new images are added to `UI_Examples/`, update this index by adding the new image file(s) to the appropriate category table and extracting any new design patterns not already covered above.
