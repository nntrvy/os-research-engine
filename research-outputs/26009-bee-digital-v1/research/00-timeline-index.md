# Electrik Project - Complete Timeline & Synthesis

**Last updated**: Feb 3, 2026

---

## Executive Summary

**Electrik** started as an embedded insurance distribution idea for VinFast EVs, but through rigorous validation over 3 months, pivoted to become a **claims processing platform for the Collision Market** (garages + insurers).

**Key learning**: Car owners in Vietnam are already well-served. The real pain is with **garages** (cash flow, paperwork) and **insurers** (digitization pressure, operational efficiency). Fraud detection sounds good but isn't actually a priority for insurer leadership.

---

## The Journey: 3 Pivots in 3 Months

```
JUL 2025          AUG 2025              SEP 2025              OCT 2025
   │                  │                     │                     │
   ▼                  ▼                     ▼                     ▼
┌──────────┐    ┌──────────────┐    ┌──────────────┐    ┌──────────────┐
│ EMBEDDED │    │   CLAIMS     │    │  COLLISION   │    │   START      │
│INSURANCE │───▶│   PLATFORM   │───▶│   MARKET     │───▶│   SMALL      │
│   SDK    │    │   FOR EVs    │    │ (Garage+Ins) │    │   POC        │
└──────────┘    └──────────────┘    └──────────────┘    └──────────────┘
   REFUTED         Hypothesis          Validated           Actionable
```

---

## Phase 1: Embedded Insurance (Jul 31 - Aug 21, 2025)

### Initial Hypothesis
> "Vingroup wants embedded insurance in their apps. BeeVN needs tech infrastructure."

### What We Did
- Identified BeeVN's dependency on partners (PVI Digital)
- Mapped 6 Vingroup apps for embedding opportunities
- Created value proposition for 3 segments (EV brands, BeeVN, Insurers)
- Built landing page (Electrik.vn) with Lovable.dev
- Researched embedded insurance market ($703B by 2029)

### Evidence Gathered
- GSM trip insurance: 15B → 8B VND/month after opt-in regulation
- VinFast 2024: 87K EVs sold (90% market share)
- Embedded insurance penetration: 8% baseline, 15% with co-branding

### Outcome: REFUTED
> "Vingroup said it's not the right time. Too early. They just didn't care about it."

**Key lesson**: Assumptions about what Vingroup wants were wrong.

---

## Phase 2: Claims Platform (Aug 22 - Sep 23, 2025)

### Pivot Trigger
Vingroup mentioned they had pain points around **claims** and later confirmed demand for:
1. B2C insurance product distribution
2. Comprehensive claims management for VinFast cars

### New Hypothesis
> "Build an EV Claims Hub connecting car owners, garages, and insurers."

### What We Did
- Competitive research: Tractable, CCC, Fermion, FPT.AI, AiCycle, Ravin.AI
- Designed claim triage system
- Created CTO pitch for MVP (3-phase roadmap)
- Built formal proposal (Đề án) for stakeholders
- Researched federated learning for fraud detection
- Analyzed 12 global/local solutions for inspiration

### Key Artifacts
- VPC & BMC for claims platform
- Competitive positioning map (Blue Ocean: High CX + High Automation)
- "Honest Score" concept (vs. Fraud Score)
- 4-hour / 48-hour claims commitment
- Market size: ~1,000B VND/year in motor claims

### Status: Hypothesis needed testing

---

## Phase 3: Customer Interviews (Sep 24-25, 2025)

### Who We Talked To
| Person | Role | Organization |
|--------|------|--------------|
| Anh Phong | Head of Claims | MIC (insurer) |
| Anh Bảo | Product Manager | XanhSM/VinFast |
| Workshop Manager | Operations | VinFast GMS Gia Lâm |
| PJICO Team | Claims | PJICO (insurer) |

### Critical Findings

#### 1. Car Owners = NOT a Big Pain Point
> "Vietnamese car owners are relatively well-served compared to foreign markets."

**Implication**: Build **vitamins**, not painkillers.

#### 2. Fraud Detection = NOT a Priority
> "Fraud at some level is an 'unwritten rule' (luật ngầm) in the industry."

Leadership doesn't care because it's hard to quantify savings.

**Implication**: Don't lead with fraud detection.

#### 3. AI Call Center = Urgent Need
> Partner immediately asked: "Can you build this for me?"

**Implication**: Best entry point for quick win.

#### 4. VinFast Won't Co-Develop
- Low priority for them
- Only care about GSM as customer
- Requires chairman approval

**Implication**: Target insurers first, not OEMs.

#### 5. Garages = High Potential, Low Politics
- Simple to work with
- Real pain: cash flow, paperwork
- Revenue data: 3.6B VND/month avg, 15% from insurance
- Most powerful party in the claims chain

**Implication**: Focus on garages.

#### 6. Insurer KPI Revealed
> "40% of claims must be processed fully by AI, without adjuster intervention."

**Implication**: Real digitization pressure exists.

---

## Phase 4: Strategic Pivot (Sep 25-30, 2025)

### New Direction: Collision Market

| Focus On | Don't Focus On |
|----------|----------------|
| Platform for garages to "do insurance work" | Sales to car owners |
| Collision Market (Repairers + Insurers) | Customer claim experience |
| Garage workflow optimization | End-consumer app |

### Reference Model: CCC (US)
- Collision repair platform connecting garages and insurers
- Not a consumer app

### "Start Small" Approach
**Before**: Build fancy platform for VinFast + 7 insurers

**After**:
- **5 garages + 1 strong insurer** for POC
- Light, fast, learnable
- Validate desirability before scaling

### CarPlay/Android Box Alternative
Instead of depending on VinFast OEM data:
- Target car owners with CarPlay or Android Box
- Gamified safe driving app
- Collect driving behavior data independently

---

## What We Validated vs. What We Invalidated

### VALIDATED ✓
| Hypothesis | Evidence |
|------------|----------|
| Insurers face digitization pressure | MIC has 40% AI KPI mandate |
| Garages have real pain | Cash flow, DMS-MISA manual copy, slow approvals |
| Market size is significant | ~1,000B VND/year claims, 175K EVs sold in 2025 |
| No good local solution exists | FPT.AI = chatbots only, Fermion = old-timer, AiCycle pivoting |
| AI Call Center is urgent need | Direct request from insurer interview |

### INVALIDATED ✗
| Hypothesis | Reality |
|------------|---------|
| VinFast wants embedded insurance | Too early, not a priority |
| Car owners have big claims pain | Well-served, any solution is "vitamins" |
| Fraud detection is valuable to insurers | "Luật ngầm" - leadership doesn't care |
| VinFast will co-develop | Won't engage until insurers prove it |

### STILL TO TEST
| Hypothesis | Test Method |
|------------|-------------|
| Insurers will pay per claim processed | Pricing discussion with pilot insurer |
| EV data useful for Risk Score | POC with 100-200 claim files |
| Garages want milestone payment portal | Pilot with 5 garages |

---

## Current Product Direction

### Target Market
**Collision Market** = Garages + Insurers (not car owners)

### Value Proposition

**For Garages**:
- Simplify insurance paperwork
- Faster approvals and payments
- Stable cash flow

**For Insurers**:
- Meet digitization KPIs (40% AI processing)
- Operational efficiency
- Quick wins for leadership (innovation, shareholder credibility)

### Entry Points (Prioritized)

1. **AI Call Center** - Explicit demand, quick win
2. **Garage Portal** - High pain, low politics
3. **Claims Triage** - Meets insurer KPI needs

### NOT Leading With
- Fraud detection (not a priority)
- Consumer claims experience (vitamins, not painkillers)
- VinFast integration (won't co-develop)

---

## Files in This Project

| # | File | Date | Content |
|---|------|------|---------|
| 00 | timeline-index.md | - | This document |
| 01 | problem-statement.md | Jul 31 | BeeVN gaps, opportunities |
| 02 | value-proposition.md | Aug 2 | Embedded insurance VP + landing page |
| 03 | embedded-insurance-research.md | Aug 6 | Market context |
| 04 | market-research.md | Aug 7 | VinFast sales, revenue sizing |
| 05 | pivot-to-claims.md | Aug 22-24 | Pivot, competitive landscape, elevator pitch |
| 06 | claims-market-research.md | Aug 26 | Market size, fraud types |
| 07 | cto-pitch-mvp.md | Aug 29 | MVP roadmap for technical partner |
| 08 | federated-learning-research.md | Sep 22 | Privacy-preserving ML |
| 09 | claim-triage-system.md | Sep 25 | Triage concept |
| 10 | customer-interviews.md | Sep 24-25 | **Critical evidence** |
| 11 | garage-interview.md | Sep 25 | Workshop manager insights |
| 12 | marketing-copy.md | Oct 10 | Positioning by audience |
| 13 | product-concept-sep5.md | Sep 5 | Historical product concept |
| 14 | pivot-vpc-bmc.md | Aug 22 | Full VPC/BMC + market opportunity |
| 15 | weekly-validation-sep30.md | Sep 30 | Synthesis + "start small" |
| 16 | formal-proposal.md | Sep 15 | Đề án for stakeholders |
| 17 | competitive-analysis.md | Sep 18 | 12 solutions analyzed |

---

## Next Steps for Client Engagement

If helping a client build this system from scratch:

### Immediate (Week 1-2)
1. Identify 1 insurer partner willing to pilot
2. Map 5 target garages (VinFast authorized + private)
3. Define MVP scope: Garage portal OR AI Call Center

### Short-term (Month 1-2)
4. Build narrow MVP for chosen entry point
5. Run POC with garage + insurer pair
6. Collect data on processing time, user satisfaction

### Medium-term (Month 3-6)
7. Iterate based on POC learnings
8. Expand to more garages
9. Add second entry point (triage or call center)

### Key Principle
> **"Solve a smaller problem first to validate desirability risk."**

Don't build the platform. Build one feature. Prove it works. Then expand.
