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
├── 0-market-research/             # Business design playbooks
│   ├── blue-ocean-playbook.md     # Blue Ocean Strategy (Value Innovation, 4-Actions Framework)
│   ├── value-proposition-design.md # Value Proposition Canvas (Customer Profile, Value Map)
│   ├── business-model-design.md   # Business Model Canvas (9 building blocks)
│   └── business-pitch.md          # Complete pitch report guide (Market Research + VPC + BMC + Hypotheses)
├── 1-hypotheses-guide/            # Hypothesis creation and prioritization
│   └── hypotheses-guide.md        # Testable/Precise/Discrete framework, Assumptions Map
├── 2-experiment-guide/            # Experiment design and execution
│   └── experiment-guide.md        # Test Cards, experiment types, validation methods
├── 3-learn-guide/                 # Evidence collection and learning
│   └── learn-guide.md             # Learning Cards, evidence strength, confidence levels
├── 4-decide-guide/                # Decision-making framework
│   └── decide-guide.md            # Innovation loop, pivot/persevere decisions
└── 5-manage-guide/                # Team coordination (images only, no markdown yet)
```

## Methodology Flow

The playbooks follow a specific learning progression:

1. **Market Research** (`0-market-research/`) — Blue Ocean → VPC → BMC → Business Pitch
2. **Hypothesize** (`1-hypotheses-guide/`) — Create testable assumptions using "We believe that..."
3. **Experiment** (`2-experiment-guide/`) — Design and run experiments with Test Cards
4. **Learn** (`3-learn-guide/`) — Capture evidence and insights with Learning Cards
5. **Decide** (`4-decide-guide/`) — Pivot, persevere, or kill based on evidence

## Document Conventions

- **Numbered folders** (`0-`, `1-`, etc.) indicate learning/process order
- **ASCII diagrams** are used for canvas representations — preserve these when editing
- **✅ Good / ❌ Bad** format shows examples of proper vs improper usage
- **Sticky note examples** should be 3-7 words — this is intentional for canvas clarity
- Each guide folder contains `.png` images as visual references alongside markdown
- Cross-references between documents (VPC → BMC → Business Pitch) should remain accurate

## Key Frameworks

### Hypothesis Format
All hypotheses use: `"We believe that [specific, testable assumption]"`

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
┌─────────────────┐     ┌─────────────────┐     ┌─────────────────┐
│                 │     │                 │     │                 │
│  /social-listen │────▶│  osr-researcher │────▶│  Value Prop     │
│                 │     │                 │     │  Canvas         │
│  Discover       │     │  Validate &     │     │  Business Model │
│  Jobs/Pains     │     │  Structure      │     │  Hypotheses     │
│                 │     │                 │     │                 │
└─────────────────┘     └─────────────────┘     └─────────────────┘
```

**Data Sources for Vietnam:**
- Tinhte.vn, VozForums, Webtretho (via Bright Data)
- Facebook public pages/groups (via Bright Data)
- Reddit r/VietNam, r/vietnam (via Reddit MCP)
- Google Search Vietnam (via Bright Data)

## When Updating Playbooks

- Keep sticky note examples short (3-7 words)
- Maintain ASCII diagrams — avoid embedded images in markdown unless essential
- Preserve ✅/❌ example format for clarity
- When adding new templates, validate cross-references remain accurate
- Use clear, imperative commit subjects (e.g., "Add pricing hypothesis examples")
