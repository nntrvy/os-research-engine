# Experiment Charters: Programmatic Taxi Screen Advertising

**Research Date:** December 8, 2025
**Total Experiments:** 5
**Timeline:** 9 weeks
**Budget:** $3,500 - $4,800

---

## Experiment Summary

| # | Experiment | Type | Duration | Cost | Evidence |
|---|------------|------|----------|------|----------|
| 1 | Media Buyer Feature Priority Survey | Discovery Survey | 2 weeks | $0 | Weak |
| 2 | Agency Decision-Maker Interviews | Customer Interviews | 3 weeks | $500 | Medium |
| 3 | XanhSM Partnership LOI | Letter of Intent | 4 weeks | $0 | Very Strong |
| 4 | CPM Pricing Pre-Sale Test | Pre-sale | 3 weeks | $1,200 | Very Strong |
| 5 | DSP Integration Feasibility Spike | XP Spike | 4 weeks | $2,000 | Strong |

---

## Experiment Sequencing

```
WEEK 1-2: Foundation (Run in Parallel)
├─ Experiment #1: Media Buyer Survey (FREE, 2 weeks)
├─ Experiment #3: XanhSM LOI Negotiation ($0, 4 weeks starts Week 1)

WEEK 3-4: Demand Validation (Sequential)
└─ Experiment #2: Agency Interviews ($500, 3 weeks) [depends on #1]

WEEK 5-7: Monetization Proof (Sequential)
└─ Experiment #4: Pre-Sales ($1,200, 3 weeks) [depends on #2 + #3]

WEEK 6-9: Technical Feasibility (Parallel with #4)
└─ Experiment #5: DSP Integration Spike ($2,000, 4 weeks)

TOTAL TIMELINE: 9 weeks (2.25 months) if parallelized
TOTAL COST: $3,700 - $4,800
```

---

## Experiment #1: Media Buyer Feature Priority Survey

### Test Card

```
┌─────────────────────────────────────────────────────────────┐
│ HYPOTHESIS                                                  │
│ We believe that 70% of media buyers at the top 5 agencies   │
│ will rank "real-time performance data" as #1 must-have      │
├─────────────────────────────────────────────────────────────┤
│ TEST: Send 5-question survey to 50 media buyers at          │
│       GroupM, Dentsu, Publicis, Omnicom, IPG Vietnam        │
│                                                              │
│ METRIC: % who rank real-time data as #1 or #2 priority      │
│                                                              │
│ CRITERIA: ≥70% rank it #1, or ≥85% rank it in top 2         │
└─────────────────────────────────────────────────────────────┘
```

| Attribute | Value |
|-----------|-------|
| **Type** | Discovery Survey (05) |
| **Evidence Strength** | Weak |
| **Owner** | Growth/Marketing Lead |
| **Duration** | 2 weeks |
| **Cost** | $0 |

### Execution Steps

1. **Build contact list (Days 1-2)**
   - LinkedIn: 10 media buyers per agency (50 total)
   - Target: Media Planner, Media Buyer, Digital Planning Manager

2. **Design survey (Day 3)**
   - Q1: Agency [dropdown]
   - Q2: Years experience [range]
   - Q3: Rank 6 features by importance [drag-to-rank]
   - Q4: Quarterly OOH budget [range]
   - Q5: Open to follow-up call? [yes/no]

3. **Outreach campaign (Days 4-10)**
   - LinkedIn connection + message (10/day)
   - Email follow-up Day 7
   - Incentive: Free market research report

4. **Analysis (Days 13-14)**
   - Calculate % ranking feature #1
   - Identify follow-up leads for Experiment #2

### Success/Failure Actions

**If Validated (≥70% rank real-time data #1):**
→ Prioritize real-time dashboard as MVP core feature
→ Use data in XanhSM pitch

**If Invalidated (<70%):**
→ Analyze winning feature
→ Pivot interview script for Experiment #2

---

## Experiment #2: Agency Decision-Maker Interviews

### Test Card

```
┌─────────────────────────────────────────────────────────────┐
│ HYPOTHESIS                                                  │
│ We believe FMCG/retail brands will allocate ≥10% of         │
│ quarterly OOH budget ($50K+) to a 3-month pilot             │
├─────────────────────────────────────────────────────────────┤
│ TEST: Conduct 12 in-depth interviews with media buyers/     │
│       brand managers, presenting detailed pilot proposal     │
│                                                              │
│ METRIC: % who verbally commit to $50K+ pilot                │
│                                                              │
│ CRITERIA: ≥50% commit to $50K+ pilot, median budget ≥$75K   │
└─────────────────────────────────────────────────────────────┘
```

| Attribute | Value |
|-----------|-------|
| **Type** | Customer Interviews (06) |
| **Evidence Strength** | Medium |
| **Owner** | Co-founder/CEO |
| **Duration** | 3 weeks |
| **Cost** | $500 (12 × $40 Grab vouchers) |

### Execution Steps

1. **Prepare materials (Days 1-3)**
   - 1-page pilot proposal PDF
   - Interview script (Mom Test questions)
   - Calendly scheduling

2. **Recruit participants (Days 3-7)**
   - Source A: Survey opt-ins from Experiment #1 (6 participants)
   - Source B: Direct outreach to FMCG/retail brand managers (6 participants)

3. **Conduct interviews (Days 8-17)**
   - 30-min structure:
     - Min 0-5: Rapport, confirm OOH budget
     - Min 5-10: Present pilot proposal
     - Min 10-20: Probe objections (Mom Test)
     - Min 20-25: Budget commitment test
     - Min 25-30: Next steps

4. **Data synthesis (Days 18-21)**
   - Score: Strong Yes / Weak Yes / Maybe / No
   - Calculate conversion rate
   - Identify common objections

### Interview Script Template

**Budget Commitment Questions:**
- "If we launched this pilot next quarter, what percentage of your OOH budget would you allocate?"
- "What specific pilot budget amount would you propose to your CMO?"

**Mom Test Questions:**
- "Walk me through how you currently evaluate new OOH channels."
- "What would need to be true for you to reallocate budget from billboards to taxi screens?"

### Success/Failure Actions

**If Validated (≥50% commit $50K+):**
→ Move to Experiment #4 (Pre-sale) with qualified leads
→ Use commitments in XanhSM negotiation

**If Invalidated (<50% or <$50K median):**
→ Analyze objections (pricing? proof? timing?)
→ Pivot: Smaller pilot ($20K) or free case study pilot

---

## Experiment #3: XanhSM Partnership LOI

### Test Card

```
┌─────────────────────────────────────────────────────────────┐
│ HYPOTHESIS                                                  │
│ We believe XanhSM will grant exclusive rights for 1,000     │
│ taxis, ≤$200/vehicle install cost, within 90 days           │
├─────────────────────────────────────────────────────────────┤
│ TEST: Negotiate Letter of Intent with XanhSM partnerships   │
│       team covering exclusivity, fleet access, cost-sharing │
│                                                              │
│ METRIC: LOI includes: (1) 1,000 taxis, (2) exclusive rights,│
│         (3) ≤$200/vehicle, (4) <90-day timeline             │
│                                                              │
│ CRITERIA: LOI contains 3 out of 4 terms minimum             │
└─────────────────────────────────────────────────────────────┘
```

| Attribute | Value |
|-----------|-------|
| **Type** | Letter of Intent (25) + Partner Interviews (07) |
| **Evidence Strength** | Very Strong |
| **Owner** | Co-founder/CEO + Technical Co-founder |
| **Duration** | 4 weeks |
| **Cost** | $0 |

### Execution Steps

1. **Research and warm intro (Days 1-5)**
   - Identify: Head of Partnerships, Chief Innovation Officer
   - Secure warm intro via investor network or EV ecosystem

2. **Initial partnership pitch (Days 6-12)**
   - 1st meeting: Present revenue-sharing model (30/70)
   - Financial model: 1,000 taxis × revenue projections
   - Hardware cost estimates ($150-200/vehicle)

3. **Technical feasibility (Days 13-18)**
   - Get hardware quotes (3 suppliers)
   - Confirm GPS data availability
   - Address installation logistics

4. **LOI negotiation (Days 19-25)**
   - Draft LOI with key terms
   - Negotiate sticking points
   - Legal review

5. **Finalize LOI (Days 26-28)**
   - Sign electronically
   - Internal celebration + investor update

### LOI Template Key Terms

```
1. PILOT SCOPE
   - Fleet size: 1,000 XanhSM taxis (500 Hanoi, 500 HCMC)
   - Duration: 90 days from installation completion
   - Exclusivity: XanhSM grants exclusive in-taxi screen advertising rights

2. COST STRUCTURE
   - Hardware cost: [Our Company] covers up to $200/vehicle
   - Installation: XanhSM provides labor at vehicle depots
   - Revenue share: 70% [Our Company], 30% XanhSM

3. TIMELINE
   - Hardware procurement: 30 days post-signing
   - Installation: Day 31-60
   - Pilot launch: Day 61-90

4. SUCCESS METRICS
   - Pilot success: $50K+ total ad revenue OR 3+ brand advertisers
   - If successful: Negotiate full-scale agreement for 10,000+ taxis
```

### Success/Failure Actions

**If Validated (LOI signed with 3-4 terms):**
→ Issue hardware RFP
→ Use LOI as proof point in pre-sales
→ Announce partnership for PR

**If Invalidated (no LOI or unacceptable terms):**
→ Diagnose: Cost? Exclusivity? Timing?
→ Pivot to Grab (35% share) or Be (6% share)

---

## Experiment #4: CPM Pricing Pre-Sale Test

### Test Card

```
┌─────────────────────────────────────────────────────────────┐
│ HYPOTHESIS                                                  │
│ We believe advertisers will pay $8-12 CPM (30-50% premium   │
│ over static billboards) when shown verified impressions     │
├─────────────────────────────────────────────────────────────┤
│ TEST: Create detailed pilot package at $10 CPM and          │
│       pre-sell to 10 advertisers from interview pool        │
│                                                              │
│ METRIC: (1) % who sign, (2) average CPM accepted,           │
│         (3) total $ committed                                │
│                                                              │
│ CRITERIA: ≥30% sign at $8-12 CPM AND ≥$150K committed       │
└─────────────────────────────────────────────────────────────┘
```

| Attribute | Value |
|-----------|-------|
| **Type** | Pre-sale (16) |
| **Evidence Strength** | Very Strong |
| **Owner** | Co-founder/CEO |
| **Duration** | 3 weeks |
| **Cost** | $1,200 ($800 legal, $400 design) |

### Execution Steps

1. **Create pre-sale package (Days 1-5)**
   - 8-page pilot package PDF
   - Screen mockups (Fiverr designer)
   - Pre-sale agreement template (lawyer)

2. **Identify top 10 prospects (Days 4-6)**
   - Tier 1 (5): Strong Yes from Experiment #2
   - Tier 2 (5): Weak Yes from Experiment #2

3. **Outreach and sales calls (Days 7-17)**
   - Week 1: Tier 1 prospects
   - Week 2: Tier 2 prospects
   - 30-min closing calls

4. **Close and collect deposits (Days 15-21)**
   - Target: 3 signed agreements (30%)
   - Collect 50% deposits ($25K each)

### Pilot Package Structure

| Page | Content |
|------|---------|
| 1 | Cover: "XanhSM Programmatic Taxi Screens — Be Our Launch Partner" |
| 2 | The Opportunity (market data, XanhSM 40% share) |
| 3 | Pilot Details (1,000 taxis, 90 days, 5M impressions, $50K) |
| 4 | Targeting Capabilities |
| 5 | Impression Verification |
| 6 | Pricing Comparison (static vs digital vs our platform) |
| 7 | Launch Partner Benefits |
| 8 | Terms & Next Steps |

### Pre-Sale Agreement Key Terms

- 50% deposit ($25K) to reserve slot
- Campaign start: Q1 2025
- Refund if pilot doesn't launch by March 31, 2025
- Minimum 4M impressions or pro-rated refund

### Success/Failure Actions

**If Validated (≥30% sign, ≥$150K committed):**
→ Wire deposits to secure hardware
→ Use pre-sale proof for seed investment pitch
→ Finalize XanhSM installation timeline

**If Invalidated (<$150K or only $5-6 CPM accepted):**
→ Diagnose: Price issue? Proof issue? Timing?
→ Pivot: $6 CPM, 2,000 taxis for volume
→ Or: 1 free pilot with top brand for case study

---

## Experiment #5: DSP Integration Feasibility Spike

### Test Card

```
┌─────────────────────────────────────────────────────────────┐
│ HYPOTHESIS                                                  │
│ We believe integrating with The Trade Desk and Google DV360 │
│ will enable 80% of advertisers to use existing workflows    │
├─────────────────────────────────────────────────────────────┤
│ TEST: Build proof-of-concept API integrations with both     │
│       DSPs, documenting complexity and timeline              │
│                                                              │
│ METRIC: (1) Days to working integration, (2) % features     │
│         supported, (3) technical blockers                    │
│                                                              │
│ CRITERIA: Both feasible within 90 days, support core        │
│           features (geo-targeting, daypart, frequency cap)   │
└─────────────────────────────────────────────────────────────┘
```

| Attribute | Value |
|-----------|-------|
| **Type** | Extreme Programming Spike (19) |
| **Evidence Strength** | Strong |
| **Owner** | Technical Co-founder |
| **Duration** | 4 weeks |
| **Cost** | $2,000 |

### Execution Steps

1. **Research DSP requirements (Days 1-3)**
   - Register for developer accounts
   - Review API documentation
   - Identify data requirements

2. **Set up dev environment (Days 3-5)**
   - AWS EC2 for mock ad server
   - PostgreSQL for inventory simulation
   - Mock data: 1,000 taxi GPS coordinates

3. **Build The Trade Desk integration (Days 6-12)**
   - Phase 1: OAuth 2.0 authentication
   - Phase 2: Inventory registration
   - Phase 3: Campaign execution
   - Phase 4: Reporting callbacks

4. **Build Google DV360 integration (Days 13-19)**
   - Decide integration path (Ad Manager required?)
   - OpenRTB implementation (real-time bidding)
   - Latency testing (<100ms response)

5. **Comparative analysis (Days 20-21)**
   - Create comparison matrix
   - Calculate weighted score
   - Make recommendation

6. **Document findings (Days 22-28)**
   - 10-page technical spec
   - 6-month development roadmap

### Integration Scorecard Template

| DSP | Auth? | Inventory Listed? | Campaign Ran? | Impressions Tracked? | Est. Production Days | Blockers |
|-----|-------|-------------------|---------------|---------------------|---------------------|----------|
| The Trade Desk | ✅ | ✅ | ✅ | ✅ | 60 days | None |
| Google DV360 | ✅ | ⚠️ | ❌ | ⚠️ | 120 days | Latency |

### Success/Failure Actions

**If Validated (both feasible in 6 months, 80%+ coverage):**
→ Hire backend engineer ($30K for 3 months)
→ Prioritize The Trade Desk for MVP
→ Apply for Google Ad Manager account

**If Invalidated (>6 months or <80% coverage):**
→ Pivot to self-serve dashboard first
→ Explore alternative DSPs (Amazon, Xandr)
→ Delay pilot launches to Q3 2025

---

## Decision Gates Summary

| After | If | Action |
|-------|-----|--------|
| Experiment #1 | <50% care about real-time data | Pivot interview script |
| Experiment #2 | <30% interested in pilots | STOP, revisit value prop |
| Experiment #3 | LOI fails | Pause pre-sales, find alternative partner |
| Experiment #4 | <$100K pre-sold | Reduce scope to 1 DSP |
| Experiment #5 | DSP infeasible | Communicate timeline change to customers |

---

## Critical Path

**Longest dependency:** Experiment #3 (XanhSM LOI) is 4 weeks but blocks nothing directly.

**True critical path:**
1. Experiment #1 (2 weeks) →
2. Experiment #2 (3 weeks) →
3. Experiment #4 (3 weeks) = **8 weeks total**

**Parallel work:** Experiments #3 and #5 can run throughout.

---

*Methodology: Based on `/2-experiment-guide/README.md` — Test Cards and Experiment Library.*
