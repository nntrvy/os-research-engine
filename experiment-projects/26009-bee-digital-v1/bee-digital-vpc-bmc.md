# bee-digital: VPC & BMC

**Version:** 1.0
**Last Updated:** 03.02.26
**Core Functions:** (1) Sell Insurance (2) Manage Claim SLA
**Customer:** BeeVN → serving Vingroup ecosystem

---

## Value Proposition Canvas

### Customer Profile: BeeVN

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                           CUSTOMER PROFILE: BEEVN                               │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│  JOBS TO BE DONE                                                                │
│  ──────────────────────────────────────────────────────────────────────────     │
│                                                                                 │
│  1. SELL INSURANCE                                                              │
│     • Distribute insurance products at every Vingroup touchpoint                │
│     • Offer car, trip, travel, home insurance to Vin ecosystem customers        │
│     • Maximize commission revenue from 7 insurer partners                       │
│     • Track policies sold and commissions owed                                  │
│                                                                                 │
│  2. MANAGE CLAIM SLA                                                            │
│     • Ensure insurers meet SLA commitments signed in Dec 2024                   │
│     • Oversee every claim from FNOL to settlement                               │
│     • Hold insurers accountable with data                                       │
│     • Protect Vingroup customer experience during claims                        │
│                                                                                 │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│  PAINS                                                                          │
│  ──────────────────────────────────────────────────────────────────────────     │
│                                                                                 │
│  SELLING INSURANCE                                                              │
│  • No unified platform to sell across all Vingroup apps                         │
│  • Manual commission reconciliation with each insurer                           │
│  • Lost GSM trip insurance revenue (47% drop) due to no tech control            │
│  • Can't see which products/insurers perform best                               │
│  • Dependent on insurer systems for policy issuance                             │
│                                                                                 │
│  MANAGING CLAIM SLA                                                             │
│  • Zero visibility into claim status                                            │
│  • No way to prove SLA violations                                               │
│  • Insurers signed SLAs but BeeVN can't enforce                                 │
│  • When claims go badly, Vingroup brand suffers                                 │
│  • No leverage in insurer negotiations                                          │
│                                                                                 │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│  GAINS                                                                          │
│  ──────────────────────────────────────────────────────────────────────────     │
│                                                                                 │
│  SELLING INSURANCE                                                              │
│  • Single platform for all Vingroup distribution channels                       │
│  • Automated commission calculation and reconciliation                          │
│  • Real-time sales dashboard (by product, insurer, channel)                     │
│  • Control over customer journey and opt-in flows                               │
│                                                                                 │
│  MANAGING CLAIM SLA                                                             │
│  • Real-time visibility for every claim                                         │
│  • Automated SLA violation detection with timestamps                            │
│  • Monthly compliance scorecards per insurer                                    │
│  • Leverage: "PTI is 94% compliant, VNI is 70% - reallocating volume"           │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
```

### Value Map: bee-digital

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                           VALUE MAP: BEE-DIGITAL                                │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│  PRODUCTS & SERVICES                                                            │
│  ──────────────────────────────────────────────────────────────────────────     │
│                                                                                 │
│  1. INSURANCE DISTRIBUTION ENGINE                                               │
│     ┌─────────────────────────────────────────────────────────────────────┐    │
│     │ • API integration with all Vingroup apps                            │    │
│     │   (VinFast, GSM, Vinpearl, VinHomes)                                │    │
│     │ • Multi-product catalog (car, trip, travel, home, health)           │    │
│     │ • Multi-insurer routing (7 insurers)                                │    │
│     │ • Policy issuance tracking                                          │    │
│     │ • Commission calculation per policy                                 │    │
│     │ • Automated reconciliation with insurers                            │    │
│     │ • Sales analytics dashboard                                         │    │
│     └─────────────────────────────────────────────────────────────────────┘    │
│                                                                                 │
│  2. CLAIM SLA MANAGEMENT SYSTEM                                                 │
│     ┌─────────────────────────────────────────────────────────────────────┐    │
│     │ • End-to-end claim visibility (FNOL → Settlement)                   │    │
│     │ • SLA rule configuration per insurer                                │    │
│     │ • Real-time SLA monitoring                                          │    │
│     │ • Automated violation alerts                                        │    │
│     │ • Insurer compliance dashboard                                      │    │
│     │ • Monthly/quarterly compliance reports                              │    │
│     │ • Evidence export for negotiations                                  │    │
│     └─────────────────────────────────────────────────────────────────────┘    │
│                                                                                 │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│  PAIN RELIEVERS                                                                 │
│  ──────────────────────────────────────────────────────────────────────────     │
│                                                                                 │
│  SELLING INSURANCE                                                              │
│  ┌────────────────────────────────┬────────────────────────────────────────┐   │
│  │ Pain                           │ How bee-digital solves it              │   │
│  ├────────────────────────────────┼────────────────────────────────────────┤   │
│  │ No unified platform            │ Single API for all Vingroup apps       │   │
│  │ Manual commission tracking     │ Auto-calculated per policy, per insurer│   │
│  │ Lost control (GSM crash)       │ BeeVN owns the integration layer       │   │
│  │ Can't compare performance      │ Dashboard shows insurer/product/channel│   │
│  │ Dependent on insurer tech      │ bee-digital is the system of record    │   │
│  └────────────────────────────────┴────────────────────────────────────────┘   │
│                                                                                 │
│  MANAGING CLAIM SLA                                                             │
│  ┌────────────────────────────────┬────────────────────────────────────────┐   │
│  │ Pain                           │ How bee-digital solves it              │   │
│  ├────────────────────────────────┼────────────────────────────────────────┤   │
│  │ Zero visibility                │ Every claim tracked in real-time       │   │
│  │ Can't prove violations         │ Timestamped evidence, auto-generated   │   │
│  │ SLAs unenforceable             │ Violation alerts + compliance reports  │   │
│  │ Vingroup brand suffers         │ Catch issues before customers complain │   │
│  │ No leverage                    │ Data-driven volume reallocation        │   │
│  └────────────────────────────────┴────────────────────────────────────────┘   │
│                                                                                 │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│  GAIN CREATORS                                                                  │
│  ──────────────────────────────────────────────────────────────────────────     │
│                                                                                 │
│  SELLING INSURANCE                                                              │
│  • Increase distribution revenue by capturing all Vingroup touchpoints          │
│  • Reduce commission leakage with automated reconciliation                      │
│  • Optimize insurer mix based on performance data                               │
│  • Launch new products in days, not months                                      │
│                                                                                 │
│  MANAGING CLAIM SLA                                                             │
│  • "PTI: 94% | BSH: 89% | VNI: 70%" - visible at a glance                       │
│  • Negotiate from strength: "Improve or lose volume"                            │
│  • Protect Vingroup brand with proactive issue detection                        │
│  • Build reputation as broker who holds insurers accountable                    │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
```

### VPC Fit Summary

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                              VPC FIT                                            │
├─────────────────────────────────────────────────────────────────────────────────┤
│                                                                                 │
│   CUSTOMER JOB              →    PRODUCT/SERVICE                                │
│   ───────────────────────────────────────────────────────────────────────────   │
│   Sell insurance            →    Insurance Distribution Engine                  │
│   Manage claim SLA          →    Claim SLA Management System                    │
│                                                                                 │
│   CUSTOMER PAIN             →    PAIN RELIEVER                                  │
│   ───────────────────────────────────────────────────────────────────────────   │
│   No unified platform       →    Single API for all Vingroup apps              │
│   Manual commission work    →    Auto-calculation & reconciliation             │
│   Zero claim visibility     →    Real-time end-to-end tracking                 │
│   Can't enforce SLAs        →    Violation alerts + evidence reports           │
│                                                                                 │
│   CUSTOMER GAIN             →    GAIN CREATOR                                   │
│   ───────────────────────────────────────────────────────────────────────────   │
│   More revenue              →    Capture all Vingroup distribution channels    │
│   Control over tech         →    BeeVN owns the platform                       │
│   Insurer leverage          →    Compliance scorecards drive negotiations      │
│   Vingroup brand protected  →    Proactive SLA monitoring                      │
│                                                                                 │
└─────────────────────────────────────────────────────────────────────────────────┘
```

---

## Business Model Canvas

```
┌──────────────────────────────────────────────────────────────────────────────────────────┐
│                                    bee-digital BMC                                       │
│                         (1) Sell Insurance  (2) Manage Claim SLA                         │
├───────────────────┬───────────────────┬───────────────────┬──────────────────────────────┤
│  KEY PARTNERS     │  KEY ACTIVITIES   │ VALUE PROPOSITION │     CUSTOMER SEGMENT         │
│                   │                   │                   │                              │
│  Vingroup Apps    │  SELL INSURANCE   │                   │                              │
│  • VinFast        │  • Integrate APIs │  "bee-digital     │  BeeVN                       │
│  • GSM            │    with Vin apps  │   gives you:      │  (Vingroup Insurance Broker) │
│  • Vinpearl       │  • Route policies │                   │                              │
│  • VinHomes       │    to insurers    │   1. A single     │  Serving:                    │
│                   │  • Track sales &  │      platform to  │  • VinFast owners (175K+)    │
│  7 Insurers       │    commissions    │      sell any     │  • GSM riders                │
│  • PVI            │  • Reconcile      │      insurance    │  • Vinpearl guests           │
│  • Bảo Việt       │    monthly        │      across all   │  • VinHomes residents        │
│  • BIC            │                   │      Vingroup     │                              │
│  • VBI            │  MANAGE CLAIM SLA │      apps         │                              │
│  • PTI            │  • Collect claim  │                   │                              │
│  • BSH            │    data from      │   2. Complete     │                              │
│  • VNI            │    insurers       │      visibility   │                              │
│                   │  • Monitor SLA    │      and control  │                              │
│  OSR (Tech)       │    compliance     │      over insurer │                              │
│  • Platform dev   │  • Generate       │      claim SLA    │                              │
│  • Operations     │    alerts &       │      compliance"  │                              │
│                   │    reports        │                   │                              │
├───────────────────┼───────────────────┴───────────────────┼──────────────────────────────┤
│  KEY RESOURCES    │        CUSTOMER RELATIONSHIPS         │         CHANNELS             │
│                   │                                       │                              │
│  • Platform       │  • Strategic partnership              │  Direct relationship         │
│  • Insurer APIs   │  • Monthly business reviews           │  with BeeVN leadership       │
│  • Vingroup app   │  • Quarterly roadmap planning         │                              │
│    integrations   │  • On-call support                    │  (Single customer =          │
│  • SLA configs    │                                       │   no sales/marketing)        │
│                   │                                       │                              │
├───────────────────┴───────────────────────────────────────┴──────────────────────────────┤
│                                    COST STRUCTURE                                        │
│                                                                                          │
│  Development                              Operations                                     │
│  • Platform build: 500M-1B VND           • Tech team: 100-150M VND/month                │
│  • Insurer integrations: 50-100M each    • Cloud/infra: 20-50M VND/month                │
│                                          • Support: 30-50M VND/month                    │
│                                                                                          │
│  Total monthly ops: 150-250M VND                                                         │
├──────────────────────────────────────────────────────────────────────────────────────────┤
│                                    REVENUE STREAMS                                       │
│                                                                                          │
│  ┌────────────────────────────────────────────────────────────────────────────────────┐ │
│  │  1. INSURANCE DISTRIBUTION COMMISSION (Primary)                                    │ │
│  │                                                                                    │ │
│  │  BeeVN earns commission on every policy sold through bee-digital.                  │ │
│  │  OSR earns share of platform-enabled revenue.                                      │ │
│  │                                                                                    │ │
│  │  Product             │ Volume/Year    │ Avg Premium │ Commission │ Revenue         │ │
│  │  ────────────────────┼────────────────┼─────────────┼────────────┼───────────────  │ │
│  │  Car insurance       │ 26,000 policies│ 8M VND      │ 12%        │ 25B VND         │ │
│  │  Trip insurance      │ 10M trips      │ 2K VND      │ 30%        │ 6B VND          │ │
│  │  Travel insurance    │ 500K bookings  │ 200K VND    │ 25%        │ 25B VND         │ │
│  │  Home insurance      │ 50K units      │ 1M VND      │ 20%        │ 10B VND         │ │
│  │  ────────────────────┴────────────────┴─────────────┴────────────┴───────────────  │ │
│  │  TOTAL COMMISSION POTENTIAL: ~65B VND/year                                         │ │
│  │                                                                                    │ │
│  │  OSR Revenue Model Options:                                                        │ │
│  │  • Option A: Platform fee (200M VND/month) = 2.4B VND/year                         │ │
│  │  • Option B: Revenue share (3-5% of commissions) = 2-3B VND/year                   │ │
│  │  • Option C: Hybrid (100M/month + 2% share) = 2.5B VND/year                        │ │
│  └────────────────────────────────────────────────────────────────────────────────────┘ │
│                                                                                          │
│  ┌────────────────────────────────────────────────────────────────────────────────────┐ │
│  │  2. SLA MANAGEMENT SYSTEM (Secondary)                                              │ │
│  │                                                                                    │ │
│  │  BeeVN uses SLA data to negotiate better terms and reallocate volume.              │ │
│  │  Value = leverage, not direct revenue.                                             │ │
│  │                                                                                    │ │
│  │  Indirect value:                                                                   │ │
│  │  • Better commission rates from accountable insurers                               │ │
│  │  • Reduced customer complaints (brand protection)                                  │ │
│  │  • Justification for premium positioning                                           │ │
│  │                                                                                    │ │
│  │  OSR Revenue: Included in platform fee (not separate charge)                       │ │
│  └────────────────────────────────────────────────────────────────────────────────────┘ │
│                                                                                          │
│  ══════════════════════════════════════════════════════════════════════════════════════ │
│                                                                                          │
│  OSR CASH ENGINE SUMMARY                                                                 │
│  ───────────────────────────────────────────────────────────────────────────────────    │
│  Year 1: Development fee (800M) + 6mo ops (900M) = 1.7B VND                             │
│  Year 2+: Platform fee/rev share = 2.4-3B VND/year recurring                            │
│                                                                                          │
└──────────────────────────────────────────────────────────────────────────────────────────┘
```

---

## SLA Configuration (Reference)

The 7 insurers signed SLAs with VinFast in December 2024. bee-digital enforces these:

| SLA Metric | Target | Monitoring |
|------------|--------|------------|
| Claim acknowledgment | < 2 hours | Auto-alert if breached |
| Adjuster assignment | < 24 hours | Dashboard flag |
| Simple claim approval | < 48 hours | Red status |
| Complex claim resolution | < 7 days | Weekly report |
| Payment to garage | < 14 days | Escalation trigger |

### Compliance Dashboard (Sample)

```
┌──────────────────────────────────────────────────────────────┐
│  INSURER SLA COMPLIANCE - JANUARY 2026                       │
├──────────────┬──────────┬───────────┬────────────────────────┤
│ Insurer      │ Claims   │ Compliant │ Action                 │
├──────────────┼──────────┼───────────┼────────────────────────┤
│ PTI          │ 245      │ 94.3%     │ Increase volume        │
│ BSH          │ 189      │ 92.1%     │ Maintain               │
│ Bảo Việt     │ 312      │ 89.1%     │ Maintain               │
│ PVI          │ 287      │ 84.0%     │ Review meeting         │
│ VBI          │ 156      │ 80.1%     │ Warning                │
│ BIC          │ 198      │ 76.8%     │ Reduce volume          │
│ VNI          │ 134      │ 70.1%     │ Final warning          │
└──────────────┴──────────┴───────────┴────────────────────────┘
```

---

## Summary

**bee-digital does two things:**

| Function | What it does | Value to BeeVN |
|----------|--------------|----------------|
| **Sell Insurance** | Single platform to distribute any insurance product across all Vingroup apps | Maximize commission revenue (~65B VND/year potential) |
| **Manage Claim SLA** | Real-time monitoring and enforcement of insurer SLA compliance | Leverage to negotiate better terms, protect Vin brand |

**For OSR (Cash Engine):**
- Year 1: ~1.7B VND (dev + initial ops)
- Year 2+: ~2.4-3B VND/year recurring

---

## Changelog

| Date | Version | Changes |
|------|---------|---------|
| 03.02.26 | 1.0 | Initial VPC & BMC - focused on two core functions: (1) Sell Insurance via Distribution Engine (2) Manage Claim SLA via SLA Management System. Partnership with BeeVN-Digital, OSR as tech partner. |

---

*bee-digital: Sell insurance. Enforce SLAs. Protect Vingroup.*
