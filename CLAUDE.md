# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## About This Repository

OS Research Engine is a knowledge base and playbook system for OS Research, an independent startup studio focused on building validated startups in Vietnam. This repository contains strategic frameworks and guides—not application code.

**Vision:** Build a system to invest early in validated ideas through small bets
**Mission:** Empower Vietnam's startup community with knowledge, case studies, and real examples
**Ambition:** Create 50 blue oceans — bold ideas that reshape markets or create new ones

## Repository Structure

```
├── key-research-areas.md          # 5 core problem domains: Education, Insurance, Urban, Health, Culture
├── 0-market-research-guide/       # Business design playbooks
│   ├── blue-ocean-playbook.md     # Blue Ocean Strategy (Value Innovation, 4-Actions Framework)
│   ├── value-proposition-design.md # Value Proposition Canvas (Customer Profile, Value Map)
│   ├── business-model-design.md   # Business Model Canvas (9 building blocks)
│   └── business-pitch.md          # Complete pitch report guide (Market Research + VPC + BMC + Hypotheses)
├── 1-hypotheses-guide/            # Hypothesis creation and prioritization
│   ├── README.md                  # Comprehensive guide (entry point)
│   └── hypotheses-guide.md        # Testable/Precise/Discrete framework, Assumptions Map
├── 2-experiment-guide/            # Experiment design and execution
│   ├── README.md                  # Unified guide (entry point)
│   ├── experiment-guide.md        # Test Cards, experiment methodology
│   ├── experiment-series.md       # 4 business model experiment sequences
│   ├── social-listening.md        # Social listening methodology
│   └── experiments-library/       # 33 detailed experiment guides (01-33)
├── 3-learn-guide/                 # Evidence collection and learning
│   └── learn-guide.md             # Learning Cards, evidence strength, confidence levels
├── 4-decide-guide/                # Decision-making framework
│   └── decide-guide.md            # Innovation loop, pivot/persevere decisions
├── 5-manage-guide/                # Team coordination (images only, no markdown yet)
└── research-outputs/              # Generated research reports (ref-numbered folders)
    ├── 25001-social-listening/
    ├── 25002-blue-ocean-classics/
    ├── 25003-xanhsm-programmatic-taxi-ads/
    ├── 26001-vietnam-top-problems/
    ├── 26002-avep-vs-osr-analysis/
    └── 26006-reintegration-platform/
```

### Research Output Naming Convention

Folders use **ref numbers** with format: `{YY}{NNN}-{project-name}`
- First 2 digits = Year (25 = 2025, 26 = 2026)
- Next 3 digits = Sequential project number
- Examples: `25001-social-listening`, `26006-reintegration-platform`

## Methodology Flow

The playbooks follow a specific learning progression:

1. **Market Research** (`0-market-research/`) — Blue Ocean → VPC → BMC → Business Pitch
2. **Hypothesize** (`1-hypotheses-guide/`) — Create testable assumptions using "We believe that..."
3. **Experiment** (`2-experiment-guide/`) — Design and run experiments with Test Cards
4. **Learn** (`3-learn-guide/`) — Capture evidence and insights with Learning Cards
5. **Decide** (`4-decide-guide/`) — Pivot, persevere, or kill based on evidence

## Document Conventions

### File Naming Convention

**All generated files MUST start with a date prefix in `DD.MM.YY-` format.**

Examples:
- `09.12.24-blue-ocean-classics-analysis.md`
- `15.01.25-vietnam-insurance-social-listening.md`
- `22.03.25-edtech-hypotheses.md`

This ensures every output file is traceable to when it was created.

### Other Conventions

- **Default font:** IBM Plex Sans (for all generated documents)
- **Numbered folders** (`0-`, `1-`, etc.) indicate learning/process order
- **ASCII diagrams** are used for canvas representations — preserve these when editing
- **✅ Good / ❌ Bad** format shows examples of proper vs improper usage
- **Sticky note examples** should be 3-7 words — this is intentional for canvas clarity
- Each guide folder contains `.png` images as visual references alongside markdown
- Cross-references between documents (VPC → BMC → Business Pitch) should remain accurate

### Research Report Structure (V1)

All research reports follow this standardized structure:

1. **Executive Summary** — Key findings, metrics, and recommendations
2. **Social Listening** — Pain points, jobs, gains from online discussions (VozForums, Tinhte, Facebook)
3. **Web Traffic Analysis** — SimilarWeb, competitor traffic patterns
4. **Search Trend Analysis** — Google Trends, keyword demand, seasonality
5. **Google Reviews** — Customer feedback analysis from Maps/Play Store
6. **Market Size** — TAM (Total), SAM (Serviceable), SOM (Obtainable)
7. **Blue Ocean Strategy** — Four Actions Framework, Strategy Canvas, non-customers
8. **Suggested VPC** — Value Proposition Canvas (for value creation)
9. **Suggested BMC** — Business Model Canvas (for value capture)
10. **Hypotheses** — Most important questions to validate (ends V1 report)

## Key Frameworks

### Hypothesis Format

To avoid confirmation bias, hypotheses should include both positive AND negative statements:

**Positive (confirming):**
`"We believe that [specific action/feature] WILL [expected outcome]"`

**Negative (disconfirming):**
`"We believe that [specific action/feature] will NOT [expected outcome]"`

**Examples:**
- ✅ "We believe that SMEs WILL hire ex-prisoners if a trusted organization vouches for them"
- ✅ "We believe that SMEs will NOT hire ex-prisoners without a guarantee, regardless of skills"
- ✅ "We believe that users WILL pay 500K VND/month for family support services"
- ✅ "We believe that users will NOT use a mobile app if it requires government ID verification"

This dual approach forces teams to consider what would disprove their idea, not just confirm it.

### Three Hypothesis Types
- **Desirability** (Market Risk): "Do they want this?" — Test first
- **Feasibility** (Infrastructure Risk): "Can we do this?" — Test second
- **Viability** (Financial Risk): "Should we do this?" — Test third

### Test Card Structure
```
HYPOTHESIS: We believe that [assumption]
TEST: To verify that, we will [action]
METRIC: And measure [data point]
CRITERIA: We are right if [threshold]
```

### Experiment Library (33 Experiments)

Located in `2-experiment-guide/experiments-library/`:
- **Testing Ideas (01-19):** AI Deep Research, Search Trends, Social Listening, Customer Interviews, Fake Door Ads, A/B Testing, Pre-sales, Crowdfunding, etc.
- **Business Design (20-33):** Storyboard, Brochure, Explainer Video, Landing Page, Mock Sale, Concierge, Wizard of Oz, Single Feature MVP, etc.

### Four Business Model Experiment Series

Located in `2-experiment-guide/experiment-series.md`:
1. **B2C Hardware:** Interviews → 3D Print → Explainer Video → Crowdfunding → Pop-up Store
2. **B2C Software (SaaS):** Interviews → Fake Door + Landing Page → Wizard of Oz
3. **B2C Services:** Interviews + Search Trends → Ads + Landing → Pre-sale → Concierge
4. **B2B2C:** Consumer validation → Pre-sale + Concierge → Single Feature MVP → Partner Interviews

## Commands

No build pipeline required. Optional formatting:
```bash
npx prettier -w "*.md" "**/*.md"
```

## Claude Code Agents & MCP Servers

### Social Listening Agent

Use `/social-listen [topic]` to analyze online discussions and discover unmet customer needs.

**Example:**
```
/social-listen insurance pain points Vietnam
/social-listen home renovation complaints
/social-listen EdTech corporate training frustrations
```

**Output:** Structured report with Jobs, Pains, Gains, Workarounds mapped to Value Proposition Canvas.

### Hypothesizer Agent

Use `/hypothesizer [research context]` to transform research findings into 10 prioritized, testable hypotheses.

**Example:**
```
/hypothesizer [paste osr-researcher output]
/hypothesizer Based on the life insurance research above...
```

**Output:** 10 hypotheses ranked using the Assumptions Map:
- **EXPERIMENT** (Important + No Evidence) — Test immediately
- **SHARE** (Important + Have Evidence) — Validate existing evidence
- **DEFER** (Unimportant + No Evidence) — Address later
- **MONITOR** (Unimportant + Have Evidence) — Keep on radar

Each hypothesis follows the "We believe that..." format and is:
- **Testable** — Can be proven true/false
- **Precise** — Specific what, who, when
- **Discrete** — One thing per hypothesis

### Blue Ocean Strategist Agent

Use the `blue-ocean-strategist` agent when developing new business concepts or analyzing market opportunities.

**Trigger:** When you need to:
- Apply Blue Ocean Strategy frameworks to a business idea
- Create VPC/BMC with strategic differentiation
- Identify market gaps and value innovation opportunities
- Learn from proven blue ocean examples

**Output:** Strategic analysis with Four Actions Framework, Strategy Canvas, and recommendations based on 10 classic blue ocean cases.

### Canvas Refiner Agent

Use `/refine-canvas [paste VPC/BMC]` to get improvement suggestions based on 10 successful blue ocean strategies.

**Example:**
```
/refine-canvas [paste your Value Proposition Canvas]
/refine-canvas Based on the insurance BMC above...
```

**Output:** Refinement report with:
- Four Actions Framework analysis (Eliminate, Reduce, Raise, Create)
- Non-customer segments to target
- Ecosystem opportunities
- Before/After strategy canvas
- Blue Ocean parallels for each suggestion

**Blue Ocean Examples Used:**
Nintendo Wii, Cirque du Soleil, Dyson, Southwest Airlines, Yellow Tail, Curves, iTunes, Netflix, IKEA, Tesla

### Experiment Planner Agent

Use the `experiment-planner` agent to transform validated hypotheses into actionable experiment plans with project charters.

**Trigger:** When hypotheses are ready for testing (marked as EXPERIMENT in Assumptions Map)

**Output:** 5 experiment project charters with:
- Test Card (Hypothesis, Test, Metric, Criteria)
- Team assignment and timeline
- Cost and resource requirements
- Success/failure actions

### DOCX Report Generator Agent

Use the `docx-report-generator` agent to compile research findings into professional Word documents.

**Trigger:** When research is complete and needs to be exported for sharing

**Output:** Formatted .docx file with:
- Professional styling (IBM Plex Sans font)
- Tables and data visualizations
- Structured sections following the Research Report Structure
- Vietnamese language support

### Spin-off Skill

Use `/spin-off [project name]` to create a standalone project from validated research.

**Example:**
```
/spin-off vietnam life insurance research
/spin-off xanhsm taxi ads
```

**Output:**
- New project directory in `/Users/Vincent/osr-company/os-{project-name}/`
- Copied research files
- Initialized git repo
- README.md with project context
- CLAUDE.md with project-specific guidance

### MCP Servers (Configured in `.claude/settings.local.json`)

| Server | Purpose | Key Tools |
|--------|---------|-----------|
| **Bright Data** | Web scraping, Vietnam forums | `search_engine`, `scrape_as_markdown` |
| **Reddit** | Reddit analysis | `search_posts`, `get_subreddit_posts`, `get_comments` |

### Setup Required

Before using the social listening agent, set these environment variables:

```bash
# Bright Data (https://brightdata.com/cp/api_tokens)
export BRIGHTDATA_API_TOKEN="your-token"

# Reddit (https://www.reddit.com/prefs/apps)
export REDDIT_CLIENT_ID="your-client-id"
export REDDIT_CLIENT_SECRET="your-client-secret"
```

### Agent Workflow Integration

```
┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐
│                 │     │                 │     │                 │     │                 │     │                 │
│  /social-listen │────▶│  osr-researcher │────▶│  /hypothesizer  │────▶│ experiment-     │────▶│  Learning       │
│                 │     │                 │     │                 │     │ planner         │     │  Cards          │
│  Discover       │     │  Full Report:   │     │  10 Hypotheses  │     │                 │     │                 │
│  Jobs/Pains     │     │  - Social Listen│     │  (WILL + will   │     │  5 Experiment   │     │  Evidence       │
│                 │     │  - Web Traffic  │     │   NOT format)   │     │  Charters       │     │  Decisions      │
│                 │     │  - Search Trends│     │                 │     │                 │     │                 │
│                 │     │  - Google Review│     │  Assumptions    │     │                 │     │                 │
│                 │     │  - Market Size  │     │  Map Priority   │     │                 │     │                 │
│                 │     │  - Blue Ocean   │     │                 │     │                 │     │                 │
│                 │     │  - VPC + BMC    │     │                 │     │                 │     │                 │
└─────────────────┘     └─────────────────┘     └─────────────────┘     └─────────────────┘     └─────────────────┘
                               │                        │
                               ▼                        ▼
                        ┌─────────────────┐     ┌─────────────────┐
                        │                 │     │                 │
                        │ /refine-canvas  │     │ docx-report-    │
                        │                 │     │ generator       │
                        │ Blue Ocean      │     │                 │
                        │ Improvements    │     │ Export to Word  │
                        │ (4 Actions)     │     │ (IBM Plex Sans) │
                        └─────────────────┘     └─────────────────┘
                                                        │
                                                        ▼
                                                ┌─────────────────┐
                                                │                 │
                                                │  /spin-off      │
                                                │                 │
                                                │  Create new     │
                                                │  project repo   │
                                                └─────────────────┘
```

**Data Sources for Vietnam:**
- Tinhte.vn, VozForums, Webtretho (via Bright Data)
- Facebook public pages/groups (via Bright Data)
- Reddit r/VietNam, r/vietnam (via Reddit MCP)
- Google Search Vietnam (via Bright Data)

## Blue Ocean Reference Examples

When using the `blue-ocean-researcher` agent or analyzing blue ocean opportunities, reference these 10 classic examples as training data. Full analysis with VPC and BMC is available at `research-outputs/09.12.25-blue-ocean-classics-analysis.md`.

| # | Company | Blue Ocean Move | Key Insight |
|---|---------|-----------------|-------------|
| 1 | **Nintendo Wii** | Motion controls for non-gamers | Targeted families/seniors ignored by industry |
| 2 | **Cirque du Soleil** | Circus as adult theater | Eliminated animals, added theatrical storylines |
| 3 | **Dyson** | Vacuums as premium technology | Eliminated bags, created status symbol |
| 4 | **Southwest Airlines** | Flying cheaper than driving | Point-to-point, no frills, 10-min turnarounds |
| 5 | **Yellow Tail Wine** | Wine for beer drinkers | Sweet taste, $6-8 price, kangaroo branding |
| 6 | **Curves Fitness** | Women-only 30-min gyms | No mirrors, no men, simple circuit |
| 7 | **iTunes/Apple** | Legal $0.99 song downloads | Broke album bundling, iPod ecosystem |
| 8 | **Netflix** | No late fees → streaming | Eliminated physical media, enabled binge-watching |
| 9 | **IKEA** | Affordable style via flat-pack | Self-assembly + showroom experience |
| 10 | **Tesla** | EVs as performance vehicles | 0-60 in 2.3s, Supercharger network, direct sales |

### Blue Ocean Patterns to Apply

1. **Target non-customers** — Who is NOT buying because solutions don't fit them?
2. **Eliminate sacred cows** — What does industry assume is "required" but customers don't value?
3. **Create new value factors** — What would make non-customers suddenly interested?
4. **Build ecosystems** — How can infrastructure lock in competitive advantage?

## When Updating Playbooks

- Keep sticky note examples short (3-7 words)
- Maintain ASCII diagrams — avoid embedded images in markdown unless essential
- Preserve ✅/❌ example format for clarity
- When adding new templates, validate cross-references remain accurate
- Use clear, imperative commit subjects (e.g., "Add pricing hypothesis examples")
