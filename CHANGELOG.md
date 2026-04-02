# Changelog

All notable changes to OS Research Engine, in reverse chronological order.

---

## 2026-03-30 — Landing Page Redesign (v2 through v4.1)

### Created
- **landing-v2-en.html / landing-v2-vi.html** — Clean rewrite of v1 landing page. Plain language, email signup CTA, 4-step process, two audience cards (entrepreneurs + investors)
- **landing-v3-en.html / landing-v3-vi.html** — Blue ocean community variant. Cirque du Soleil / Nintendo Wii examples, persona cards, philosophy quote section
- **landing-v4-en.html / landing-v4-vi.html** — Middle ground between v2 and v3. Manifesto section, honest tone, dual CTAs (follow journey + join team), hiring section with trait cards
- **landing-v4.1-en.html / landing-v4.1-vi.html** — Iterated from v4 with:
  - Manifesto broken into 4 sub-headed blocks: "Ask the right questions (and listen)", "Fail cheap, learn fast", "Build what the world needs", "Share everything we learn"
  - Vision card (blue gradient): "Build 20 blue-ocean companies in Vietnam over 10 years" with footnote defining blue-ocean company
  - 5-stage vertical pipeline (Raw idea → Shaped → Problem fit → Solution fit → PMF) with R&D budget unlocking and kill branches at each stage
  - Expanded sector descriptions (Education, Urban, Health, Insurance, Culture) with positive framing
  - Hiring section: "We're hiring innovators" with 2 stacked CTAs (Explore open roles + Benefits of working here)

### Updated
- **landing-v4.1-en.html** — Applied OS Research Lean Visual Style Guide:
  - Font: Inter → IBM Plex Sans
  - Colors: Carbon Matrix (#181818), Sterile White (#FFFFFF), Spectral Blue (#0248F6)
  - Nav join button uses Spectral Blue
- **landing-v2.1-en.html** — Updated join copy ("meaningful work that also pays well"), reordered sectors (Insurance moved after Health)

### Strategic Docs
- **Created** `docs/osr-strategic-overview-v2.md` — Complete rewrite for team alignment. Simplified structure: mission/vision, beliefs, sectors with positive framing, TRR pipeline, revenue model, 10-year target. VPC/BMC detail moved out.
- **Created** `docs/osr-business-model-canvas.md` — Standalone living document for VPC and BMC. Two customer segments (Entrepreneurs, Innovation Backers), full Value Map, ASCII BMC, and an Evolution Log to track how our model changes over time with evidence.

### Design Decisions
- v1 (osresearch.vn) used buzzy language and dark tech aesthetic. v4.1 uses simple, direct language anyone can understand
- Blue ocean concept explained inline via vision card footnote instead of dedicated section
- Pipeline shows kill branches to emphasize "cheap failures with significant learnings"
- Vietnamese versions use formal "chúng tôi" throughout, no slang, accessible to general audience

---

## 2026-03-24 — Repo Reorganization: Research Moved to ideas-pipeline

### Moved to `/osr-company/ideas-pipeline/`
- **research-outputs/** — All 13 research projects (25001–26013)
- **experiment-projects/** — XanhSM AdTech project (25003)
- **killed-ideas/** — Bee Digital (26009), Content Strategies (26003), MVNO Vietnam (26012)
- **validated-projects/** — BeeOS App (26012)

### Removed
- `Context MDs for LLMs/` — Consolidated into `:init/`
- `os-research-business-model-canvas.md` — Superseded by `docs/osr-strategic-overview.md`
- `docs/content-strategy/` — Moved to ideas-pipeline
- `hiring/` — Moved out of repo
- `docs/templates/` — Removed
- `docs/Quy_che_tai_chinh_noi_bo_OSR_v1.docx` — Removed
- `docs/new-hire-welcome.md` — Removed
- Misc files: daily reading list, KHCN laws spreadsheet

### Updated
- `:init/CLAUDE.md` — Updated repo structure, redirected research paths to ideas-pipeline
- `CHANGELOG.md` — Added reorganization entry
- `docs/osr-strategic-overview.md` — v1.2 with new CPs, unified Value Map, TRR model

### Result
- **os-research-engine** is now purely: playbooks + strategic docs + platform code
- **ideas-pipeline** holds all project-specific research and outputs

---

## 2026-03-23 — Major Cleanup + Pipeline Tracker + Hiring Tools Research

### Research
- **Created** `26013-founder-hiring-tools/` — Competitive landscape (20+ tools analyzed)
- **Created** `research-outputs/pipeline-tracker.md` — Full portfolio categorization: Idea → Project → Venture → Spin-off
- **Discovery** No hiring tool treats solo founders as core persona; per-hire pricing gap in Vietnam/SEA

### Reorganized
- **Moved** `content-strategy/` → `docs/content-strategy/` (manifesto, OKR, basecamp post)
- **Killed** `26009-bee-digital-v1` → `killed-ideas/` (full research archive, 18 files + VPC/BMC)
- **Killed** `26003-startup-studio-content-strategies` → `killed-ideas/` (content strategist scope + research)
- **Killed** `26012-mvno-vietnam` → `killed-ideas/` (market research, no clear OSR angle)

### Cleaned up
- **Consolidated** 14 changelog files (4 locations) into single `CHANGELOG.md`
- **Removed** `SESSION-CHANGELOG.md`, `SESSION-SUMMARIES.md`, `change-log/` folder (8 session files), `session-summaries/` folder
- **Removed** `OKR-2026.md` (moved to docs)
- **Removed** `scripts/generate_quy_che_tai_chinh.py`
- **Removed** `xanhsm-programmatic-taxi-ads-research.md` (duplicate of 25003)
- **Added** `hiring/` — Content strategist trial contract (docx + md) + generation script
- **Updated** `hiring/senior-product-designer-jd.md`
- **Updated** `research-outputs/README.md` — Added pipeline tracker reference

### Stats
- **Deleted**: ~9,900 lines of redundant/duplicate content
- **Net result**: 14 changelog files → 1, 3 killed ideas archived, content strategy relocated

---

## 2026-03-14 — Founder Hiring Tools Research + Pipeline Tracker

- **Created** `26013-founder-hiring-tools/` — Competitive landscape analysis (20+ tools)
- **Created** `research-outputs/pipeline-tracker.md` — Portfolio categorization: Idea → Project → Venture → Spin-off
- **Discovery** No hiring tool treats solo founders as core persona; per-hire pricing gap in Vietnam/SEA
- **Updated** `research-outputs/README.md` — Added pipeline tracker reference

## 2026-03-13 — Strategic Docs + Investment Memo + Confidence Levels

- **Created** `docs/osr-strategic-overview.md` — OSR strategic overview with VPC for founders + angels
- **Created** IC investment memo (YC/SV standard format)
- **Updated** Validation criteria to Confidence Level framework (v1.1)

## 2026-03-12 — OSR Docs, OKRs, Scripts + MVNO Research

- **Created** `26012-mvno-vietnam/` — Vietnam MVNO market research (TAM $5.2B, 6 licensed operators)
- **Created** OSR Studio landing page prototype (`app/landing/index.html`)
- **Added** OSR docs, OKRs, and IC memo writer agent
- **Added** Experiment series department color coding and team structure

## 2026-03-10 — OSR Studio Landing Page Prototype

- **Created** Landing page prototype — dark theme, 5 modules showcase, $500M goal tracker
- **Designed** 4-month Basecamp project plan for OSR Studio platform
- **Created** Lovable.dev prompt for AI-assisted prototype generation
- **Tech** Single HTML file, vanilla JS, no dependencies

## 2026-02-11 — Dad Bonding Research Committed

- **Committed** 26010 millennial dad bonding platform research to repo

## 2026-02-08 — Senior Product Designer JD

- **Created** `hiring/senior-product-designer-jd.md` — 30M VND, AI-native, 4 products
- **Updated** JD with refined requirements

## 2026-02-06 — Content OKRs + BeeOS Contracts + Bee-Digital Updates

- **Added** 2026 Content OKR: 1,000 loyal fans + Blue Ocean focus
- **Added** OS Research Manifesto
- **Added** Basecamp post: 2026 content goal
- **Added** Daily reading list + 10 KHCN laws reference
- **Reorganized** BeeOS contracts (renamed files, added appendices 04-06)
- **Renamed** XanhSM project → `25003-XanhSM-AdTech-project`
- **Added** Bee-Digital meeting minutes, customer profile, concept v2

## 2026-02-05 — Project Lifecycle + BeeOS Validated + Knowledge Infrastructure

- **Created** `validated-projects/` — LIVE revenue-generating projects
- **Moved** BeeOS (`26012-beeos-app`) to validated-projects (LIVE, $90K revenue)
- **Created** `experiment-projects/` — Projects testing solutions post-validation
- **Moved** 25003-XanhSM + 26009-bee-digital to experiment-projects
- **Defined** 3-stage lifecycle: research-outputs → experiment-projects → validated-projects
- **Created** BeeOS training video guide (10 Vietnamese scripts + production checklist)
- **Added** README.md for 12 research projects (standardized format)
- **Standardized** Research session management across CLAUDE.md, GEMINI.md, AGENTS.md

## 2026-02-04 — Millennial Dad Bonding Platform (26010)

- **Created** `26010-millennial-dad-bonding/` — VPC/BMC v2, competitive analysis, hypotheses
- **Discovery** Pivot: dad-as-buyer → mom-as-buyer (controls 85% household spending)
- **Discovery** TAM expanded $50M → $6B (Vietnam dads → SEA parents 0-5)
- **Discovery** Business model: D2C → B2B2C hybrid (60% corporate, 30% D2C, 10% data)
- **Analyzed** 5 competitors (City Dads Group, Cooper & Kid, Rad Dad Box, ThreeSixFiveDad, Boot Camp)
- **Generated** 9 hypotheses (3 desirability, 2 feasibility, 3 viability, 1 risk)

## 2026-02-03 — BeeVN-Digital Partnership + Agent Development

- **Created** `26009-bee-digital-v1/` — VPC/BMC, 18 research files, partnership docs
- **Added** `existing-solutions-analyst` agent for competitive analysis
- **Added** `the-mom-test.md` — Customer interview framework
- **Renamed** Project from "electrik" to "bee-digital"
- **Reorganized** Context MDs into dedicated directory

## 2026-02-02 — Mom Test Framework + Change-log System

- **Added** The Mom Test customer interview methodology (3 core rules)
- **Created** `change-log/` system with sessions subfolder
- **Updated** Customer interview guides with Mom Test cross-references

## 2026-02-01 — Child Development Platform (26007) + Content Strategist

- **Created** `26007-children-age-2-10/` — AI platform for developmental disorders
- **Created** Market research + business pitch with VPC/BMC
- **Updated** `26003/` — Content strategist work scope (20/20/30/30 allocation)
- **Discovery** 18-month gap where no solutions exist for worried parents
- **Discovery** TAM 2.5M → 12M children; LTV:CAC improved 11.25x → 72x

## 2026-01-25 — Vietnam Top Problems + AVEP Analysis + Content Strategy

- **Created** `26001-vietnam-top-problems/` — 5 problem domains, market research
- **Created** `26002-avep-vs-osr-analysis/` — Antler Vietnam vs OSR comparison
- **Created** `content-strategy/` — Content strategy v1.0 → v1.1 → v1.2
- **Generated** 5 critical hypotheses for embedded micro-insurance
- **Discovery** Insurance trust crisis = #1 Blue Ocean opportunity (90/100)
- **Discovery** 67% informal workers without social protection
- **Decision** Focus on embedded micro-insurance via e-wallet distribution

---

## 2025

## 2025-12-08 — XanhSM Programmatic Taxi Ads (25003)

- **Created** `25003-xanhsm-programmatic-taxi-ads/` — Full research pipeline (6 docs + pitch deck)
- **Created** `experiments-library/` — 33 detailed experiment guides
- **Created** `experiment-series.md` — 4 business model experiment sequences
- **Added** `/hypothesizer` slash command
- **Discovery** Vietnam has ZERO programmatic taxi advertising
- **Discovery** XanhSM: 40% market share, 30K+ electric taxis, greenfield opportunity

## 2025-12-04 — Vietnam Life Insurance Social Listening (25001)

- **Created** `25001-social-listening/` — Life insurance pain points research
- **Discovery** 3M+ contracts voided in 2023, 19% market decline
- **Discovery** 6 high-severity pain points; Facebook groups 50K-123K members

## 2025-12-03 — Repository Initialization

- **Initialized** Git repository + GitHub CLI
- **Created** `0-market-research-guide/` — Blue Ocean, VPC, BMC playbooks
- **Created** `1-hypotheses-guide/` — Hypothesis creation framework
- **Created** `2-experiment-guide/` — Experiment design methodology
- **Created** `3-learn-guide/` — Evidence collection framework
- **Created** `4-decide-guide/` — Decision-making framework

---

## Stats (as of 30.03.26)

| Metric | Count |
|--------|-------|
| Research Projects | 13 |
| Killed Ideas | 3 |
| Experiment Projects | 1 |
| Validated Projects | 1 (BeeOS, $90K) |
| Hypotheses Generated | 40+ |
| Experiments Designed | 15+ |
| Landing Page Versions | 8 (v1–v4.1, EN/VI) |
| Strategic Docs (public) | 4 (overview, BMC, manifesto, memo) |
| Pipeline Stage: Idea | 4 |
| Pipeline Stage: Project | 4 |
| Pipeline Stage: Venture | 2 |
| Pipeline Stage: Spin-off | 1 |
