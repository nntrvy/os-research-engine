# Bee-Digital: Business Concept v2

**Version:** 2.0
**Date:** 06.02.2026
**Perspective:** Bee-Digital as standalone company (independent BOD)
**Key Stakeholder:** BeeVN (Vingroup Insurance Broker)

---

## One-Sentence Pitch

**Bee-Digital is the operating system for insurance claims processing across the Vingroup ecosystem.**

## Value Proposition

**We help VinFast Aftersales and Service Workshops track, accelerate, and resolve insurance claims by connecting all parties (workshops, insurers, OEM) on one centralized platform with real-time SLA enforcement.**

## Problem Statement

**The insurance claims process for VinFast vehicles is broken.** When a VinFast car enters a service workshop for an insurance-related repair, nobody knows the full picture. Workshop data lives in one system, insurer data in another, VinFast Aftersales has no visibility. When a VF5 gets flooded, the customer gets no advisory. When SLA deadlines are missed, nobody can prove who the blocker was - the insurer, the workshop, or VinFast internal teams. The result: slow repairs, frustrated customers, and an unenforceable SLA that 10 insurers signed but nobody can track.

**This problem is real** (confirmed in multi-stakeholder meeting with VF Aftersales, VF IT, and BeeVN on 06.02.26), **urgent** (project owners already assigned), and **significant** (affects every insurance-related repair across VinFast's entire workshop network).

---

## Near-Term: Claims SLA Platform

> Focus: Get the claims process right first. Build trust. Prove the system works.

### Customer Profile: VinFast Aftersales

(Source: `research/19-customer-profile-vinfast-aftersales.md`)

```
┌─────────────────────────────────────────────────────────────────┐
│              CUSTOMER PROFILE: VINFAST AFTERSALES               │
│              (Insurance Claims SLA Context)                     │
│                                                                 │
│  CUSTOMER JOBS                                                  │
│  1. Theo dõi toàn bộ quá trình xử lý xe VF tại Xưởng          │
│  2. Tăng tốc quá trình xử lý bảo hiểm                         │
│  3. Mang lại trải nghiệm tốt hơn cho khách hàng               │
│                                                                 │
│  PAINS                           GAINS                          │
│  1. DMS chưa đáp ứng đầy        1. CSDL quản lý tập           │
│     đủ nhu cầu XDV                  trung tại DMS              │
│  2. Dữ liệu phân tán           2. Kết nối dễ dàng             │
│     giữa các bên                    với CTBH qua Bee           │
│  3. Chưa kết nối với            3. Quy trách nhiệm            │
│     các công ty bảo hiểm            cho đúng bên blocker       │
└─────────────────────────────────────────────────────────────────┘
```

### Value Map: Near-Term

```
┌──────────────────────────────────────────────────────────────────────┐
│                VALUE MAP: BEE-DIGITAL (NEAR-TERM)                    │
│                Claims SLA Platform                                   │
│                                                                      │
│  PRODUCTS & SERVICES                                                 │
│  ────────────────────────────────────────────────────────────────    │
│                                                                      │
│  1. Claims Tracking Hub                                              │
│     End-to-end visibility from vehicle entry                         │
│     to vehicle exit at workshop                                      │
│                                                                      │
│  2. Insurer Connection Layer                                         │
│     Pre-built integrations with 10 insurers                          │
│     (already connected via BeeVN NDAs)                               │
│                                                                      │
│  3. SLA Enforcement Engine                                           │
│     Automated timestamps, violation detection,                       │
│     compliance scorecards per insurer                                │
│                                                                      │
│  4. DMS Integration Module                                           │
│     Single connection point into VinFast DMS                         │
│     (confirmed feasible by VinFast IT)                               │
│                                                                      │
│  PAIN RELIEVERS                                                      │
│  ────────────────────────────────────────────────────────────────    │
│  ┌──────────────────────────────┬─────────────────────────────────┐  │
│  │ Pain                         │ How Bee-Digital solves it       │  │
│  ├──────────────────────────────┼─────────────────────────────────┤  │
│  │ DMS chưa đáp ứng đầy đủ     │ Plugs into DMS and extends it  │  │
│  │ nhu cầu XDV                  │ with insurance-specific        │  │
│  │                              │ workflow capabilities           │  │
│  ├──────────────────────────────┼─────────────────────────────────┤  │
│  │ Dữ liệu phân tán giữa      │ One centralized database for   │  │
│  │ các bên                      │ asset + insurance data          │  │
│  ├──────────────────────────────┼─────────────────────────────────┤  │
│  │ Chưa kết nối với các CTBH   │ 10 insurers already connected  │  │
│  │                              │ via BeeVN - ready to integrate │  │
│  └──────────────────────────────┴─────────────────────────────────┘  │
│                                                                      │
│  GAIN CREATORS                                                       │
│  ────────────────────────────────────────────────────────────────    │
│  ┌──────────────────────────────┬─────────────────────────────────┐  │
│  │ Gain                         │ How Bee-Digital enables it      │  │
│  ├──────────────────────────────┼─────────────────────────────────┤  │
│  │ CSDL quản lý tập trung      │ Single source of truth:        │  │
│  │ tại DMS                      │ DMS <-> Bee-Digital <-> Insurer │  │
│  ├──────────────────────────────┼─────────────────────────────────┤  │
│  │ Kết nối dễ dàng với CTBH    │ Pre-integrated insurer APIs,   │  │
│  │ thông qua Bee                │ no per-insurer dev needed      │  │
│  ├──────────────────────────────┼─────────────────────────────────┤  │
│  │ Quy trách nhiệm cho đúng    │ Every step timestamped:        │  │
│  │ bên blocker                  │ who's late? XDV, insurer,      │  │
│  │                              │ or VinFast internal?           │  │
│  └──────────────────────────────┴─────────────────────────────────┘  │
│                                                                      │
└──────────────────────────────────────────────────────────────────────┘
```

### BMC: Near-Term (Claims SLA Platform)

```
┌────────────────────────────────────────────────────────────────────────────────────────┐
│               BEE-DIGITAL BMC: NEAR-TERM (Claims SLA Platform)                         │
│                     "Know where every claim stands"                                     │
├──────────────────┬──────────────────┬──────────────────┬───────────────────────────────┤
│ KEY PARTNERS     │ KEY ACTIVITIES   │VALUE PROPOSITION │ CUSTOMER SEGMENTS             │
│                  │                  │                  │                               │
│ BeeVN            │ Build & operate  │ "One platform    │ PRIMARY:                      │
│ • Key stakeholder│   claims hub     │  that connects   │ VinFast Aftersales            │
│ • 10 insurer     │ Integrate with   │  workshops,      │ • Needs E2E claim visibility  │
│   relationships  │   VF DMS         │  insurers, and   │ • Needs SLA enforcement       │
│ • NDAs in place  │ Maintain insurer │  VinFast into    │ • Needs blocker attribution   │
│                  │   connections    │  one real-time    │                               │
│ VinFast IT       │ SLA monitoring   │  view - so you   │ SECONDARY:                    │
│ • DMS access     │   & reporting    │  always know     │ Service Workshops (XDV)       │
│ • Data standards │ Onboard workshops│  where every     │ • Simpler insurance paperwork │
│                  │                  │  claim stands    │ • Faster approvals & payment  │
│ 10 Insurers      │                  │  and who's       │                               │
│ • Claim data     │                  │  blocking it."   │ TERTIARY:                     │
│ • SLA compliance │                  │                  │ Insurers (via BeeVN)          │
│ • Process sharing│                  │                  │ • Digitization pressure        │
│                  │                  │                  │ • Operational efficiency       │
├──────────────────┼──────────────────┴──────────────────┼───────────────────────────────┤
│ KEY RESOURCES    │      CUSTOMER RELATIONSHIPS         │ CHANNELS                      │
│                  │                                      │                               │
│ • BeeVN insurer  │ VF Aftersales: Embedded partner      │ Direct via BeeVN              │
│   network (10)   │   (Mr. Hon leads, regular reviews)  │ relationship                  │
│ • DMS integration│ Workshops: Onboarding + support      │                               │
│   (confirmed     │ Insurers: API integration +          │ VF internal champions:        │
│    feasible)     │   compliance reporting               │ • Mr. Hon (Aftersales)        │
│ • Platform tech  │                                      │ • Mr. Bao (IT/VinSF)         │
│ • Insurance      │                                      │ • Mr. Tien (TBH)             │
│   domain         │                                      │                               │
│   expertise      │                                      │                               │
├──────────────────┴──────────────────────────────────────┴───────────────────────────────┤
│                                 COST STRUCTURE                                          │
│                                                                                         │
│ Platform development ............... 500M - 1B VND (one-time)                           │
│ Insurer integrations (10x) ........ 500M - 1B VND (one-time)                           │
│ Monthly operations ................. 150 - 250M VND/month                               │
│   (tech team, cloud, support)                                                           │
├─────────────────────────────────────────────────────────────────────────────────────────┤
│                                 REVENUE STREAMS                                         │
│                                                                                         │
│ • Platform development fee from BeeVN (one-time)                                        │
│ • Monthly platform operations & maintenance fee                                         │
│ • Per-insurer integration fee                                                           │
│                                                                                         │
└─────────────────────────────────────────────────────────────────────────────────────────┘
```

---

## Long-Term Vision: Vingroup Insurance Infrastructure

> Vision: Bee-Digital becomes the single insurance layer for the entire Vingroup
> ecosystem - linking selling and claiming seamlessly. Every Vingroup customer
> buys insurance through Bee-Digital, and when they claim, the entire journey
> from incident to resolution is already connected.

### The Flywheel

```
           SELL                          CLAIM
    ┌──────────────────┐          ┌──────────────────┐
    │ Customer buys    │          │ Customer has      │
    │ insurance at any │─────────▶│ incident, claim   │
    │ Vingroup         │          │ auto-initiated    │
    │ touchpoint       │          │ from policy data  │
    └────────┬─────────┘          └────────┬─────────┘
             │                             │
             │                             │
             ▼                             ▼
    ┌──────────────────┐          ┌──────────────────┐
    │ More policies    │          │ Claims data       │
    │ = more premium   │◀─────────│ improves risk     │
    │ = better rates   │          │ scoring & product │
    │ = more customers │          │ design            │
    └──────────────────┘          └──────────────────┘
             │                             │
             └──────────┬──────────────────┘
                        ▼
               ┌─────────────────┐
               │  DATA FLYWHEEL  │
               │  Better data =  │
               │  better products│
               │  = more sales   │
               │  = more data    │
               └─────────────────┘
```

### Customer Profile: Long-Term (Multi-Segment)

```
┌──────────────────────────────────────────────────────────────────────┐
│            CUSTOMER PROFILES: LONG-TERM VISION                       │
│                                                                      │
│  SEGMENT 1: BEEVN (Key Stakeholder / Platform Customer)              │
│  ─────────────────────────────────────────────────────               │
│  Jobs:  Maximize insurance commission revenue                        │
│         Distribute across all Vingroup touchpoints                   │
│         Enforce insurer SLA compliance                               │
│  Pains: No unified distribution platform                             │
│         Manual commission reconciliation                             │
│         Lost GSM revenue (47% drop, no tech control)                 │
│         Zero claim visibility, SLAs unenforceable                    │
│  Gains: Single platform for all channels                             │
│         Automated commissions, real-time dashboards                  │
│         Insurer leverage via compliance data                         │
│                                                                      │
│  SEGMENT 2: VINFAST AFTERSALES                                       │
│  ─────────────────────────────────────────────────────               │
│  Jobs:  Track full repair process at workshops                       │
│         Accelerate insurance claims                                  │
│         Protect VinFast customer experience                          │
│  Pains: DMS gaps, fragmented data, no insurer connection             │
│  Gains: Centralized tracking, blocker attribution, speed             │
│                                                                      │
│  SEGMENT 3: SERVICE WORKSHOPS (XDV)                                  │
│  ─────────────────────────────────────────────────────               │
│  Jobs:  Get insurance approvals fast                                 │
│         Receive payment on time                                      │
│         Minimize paperwork                                           │
│  Pains: Cash flow delays, manual MISA-DMS copy, slow approvals      │
│  Gains: Milestone payments, digital paperwork, faster cycle          │
│                                                                      │
│  SEGMENT 4: INSURERS                                                 │
│  ─────────────────────────────────────────────────────               │
│  Jobs:  Meet digitization KPIs (40% AI processing)                   │
│         Distribute to Vingroup customer base                         │
│         Reduce operational cost per claim                            │
│  Pains: No local solution, manual processes, no Vin integration      │
│  Gains: Automated claim intake, digital Vin channel, efficiency      │
│                                                                      │
│  SEGMENT 5: VINGROUP CUSTOMERS (End Users)                           │
│  ─────────────────────────────────────────────────────               │
│  Jobs:  Buy insurance easily when buying car/trip/home               │
│         Get fast claim resolution when something happens             │
│  Pains: Disconnected buying and claiming experience                  │
│  Gains: Buy at touchpoint, claim is already connected                │
│                                                                      │
└──────────────────────────────────────────────────────────────────────┘
```

### Value Map: Long-Term

```
┌──────────────────────────────────────────────────────────────────────┐
│              VALUE MAP: BEE-DIGITAL (LONG-TERM VISION)               │
│         Sell + Claim seamlessly across Vingroup ecosystem            │
│                                                                      │
│  PRODUCTS & SERVICES                                                 │
│  ────────────────────────────────────────────────────────────────    │
│                                                                      │
│  A. INSURANCE DISTRIBUTION ENGINE                                    │
│     • API integration with all Vingroup apps                         │
│       (VinFast, GSM, Vinpearl, VinHomes)                             │
│     • Multi-product catalog                                          │
│       (car, trip, travel, home, health)                               │
│     • Multi-insurer routing (10+ insurers)                           │
│     • Policy issuance & commission tracking                          │
│     • Automated reconciliation                                       │
│     • Sales analytics dashboard                                      │
│                                                                      │
│  B. CLAIMS SLA MANAGEMENT SYSTEM                                     │
│     • End-to-end claim tracking (FNOL -> settlement)                 │
│     • SLA rules per insurer, auto-violation alerts                   │
│     • Insurer compliance scorecards                                  │
│     • Blocker identification & escalation                            │
│     • Evidence export for negotiations                               │
│                                                                      │
│  C. SEAMLESS LINK: SELL <-> CLAIM                                    │
│     • Policy data auto-populates claim intake                        │
│     • Customer never re-enters information                           │
│     • Workshop knows coverage before car arrives                     │
│     • Insurer receives structured claim from day 1                   │
│                                                                      │
│  D. DATA & INTELLIGENCE LAYER                                        │
│     • Risk scoring from repair + driving data                        │
│     • Product recommendation engine                                  │
│     • Insurer performance benchmarks                                 │
│     • Predictive claim cost estimation                               │
│                                                                      │
│  PAIN RELIEVERS                                                      │
│  ────────────────────────────────────────────────────────────────    │
│  • Eliminates fragmented data across VF, XDV, insurers              │
│  • Replaces manual commission tracking with auto-reconciliation     │
│  • Turns unenforceable SLAs into timestamped, provable metrics      │
│  • Removes "no tech control" risk (BeeVN owns the layer)            │
│  • Workshops get one system instead of two                           │
│  • Customers never fall through the cracks between sell and claim    │
│                                                                      │
│  GAIN CREATORS                                                       │
│  ────────────────────────────────────────────────────────────────    │
│  • Volume reallocation leverage: "Improve SLA or lose policies"     │
│  • Data flywheel: more policies -> more claims data -> better       │
│    risk scoring -> better products -> more policies                  │
│  • Every Vingroup touchpoint becomes an insurance channel            │
│  • Insurers compete for Vingroup volume on a transparent platform   │
│  • VinFast brand protected by proactive claim management            │
│                                                                      │
└──────────────────────────────────────────────────────────────────────┘
```

### BMC: Long-Term (Full Ecosystem)

```
┌────────────────────────────────────────────────────────────────────────────────────────┐
│               BEE-DIGITAL BMC: LONG-TERM (Full Ecosystem Vision)                       │
│             "Sell insurance. Resolve claims. One platform."                             │
├──────────────────┬──────────────────┬──────────────────┬───────────────────────────────┤
│ KEY PARTNERS     │ KEY ACTIVITIES   │VALUE PROPOSITION │ CUSTOMER SEGMENTS             │
│                  │                  │                  │                               │
│ BeeVN            │ DISTRIBUTION     │                  │ 1. BeeVN                      │
│ • Stakeholder    │ • Integrate with │ "Bee-Digital is  │    (Stakeholder + Customer)   │
│ • Insurer deals  │   Vingroup apps  │  the single      │    Commission maximization,   │
│ • Regulatory     │ • Route policies │  insurance       │    insurer leverage,          │
│                  │ • Track sales &  │  layer for       │    tech control               │
│ Vingroup Apps    │   commissions    │  Vingroup.       │                               │
│ • VinFast app    │ • Reconcile      │                  │ 2. VinFast Aftersales         │
│ • GSM app        │                  │  Buy any         │    E2E claim visibility,      │
│ • MyVinpearl     │ CLAIMS           │  insurance at    │    SLA enforcement,           │
│ • VinHomes app   │ • DMS + insurer  │  any Vingroup    │    blocker attribution        │
│                  │   integration    │  touchpoint.     │                               │
│ 10+ Insurers     │ • SLA monitoring │                  │ 3. Service Workshops          │
│ • PVI, Bao Viet  │ • Blocker alerts │  When you claim, │    Faster approvals,          │
│ • BIC, VBI       │ • Compliance     │  everything is   │    faster payment,            │
│ • PTI, BSH, VNI  │   reporting      │  already         │    less paperwork             │
│ • + 3 more       │                  │  connected.      │                               │
│                  │ DATA             │                  │ 4. Insurers                   │
│ VinFast IT       │ • Risk scoring   │  No re-entering  │    Vin distribution channel,  │
│ • DMS access     │ • Product        │  info. No lost   │    digitization KPIs,         │
│ • Data standards │   recommendations│  paperwork. No   │    operational efficiency     │
│                  │ • Benchmarks     │  guessing who's  │                               │
│                  │                  │  blocking."      │ 5. Vingroup Customers         │
│                  │                  │                  │    Seamless buy + claim        │
├──────────────────┼──────────────────┴──────────────────┼───────────────────────────────┤
│ KEY RESOURCES    │      CUSTOMER RELATIONSHIPS         │ CHANNELS                      │
│                  │                                      │                               │
│ • Insurer network│ BeeVN: Strategic partner, quarterly  │ DISTRIBUTION:                 │
│   (10+ connected)│   business reviews, shared roadmap   │ • VinFast app (car insurance) │
│ • Vingroup app   │ VF Aftersales: Embedded partner,     │ • GSM app (trip insurance)    │
│   integrations   │   monthly SLA reviews                │ • MyVinpearl (travel ins.)    │
│ • DMS connection │ Workshops: Onboarding + support      │ • VinHomes (home insurance)   │
│ • Policy + claim │ Insurers: API + compliance reports   │                               │
│   data (linked)  │ End users: Self-service via          │ CLAIMS:                       │
│ • Platform tech  │   Vingroup apps                      │ • Workshop (DMS integration)  │
│ • Insurance      │                                      │ • Direct (via VinFast app)    │
│   domain experts │                                      │ • BeeVN (insurer liaison)     │
├──────────────────┴──────────────────────────────────────┴───────────────────────────────┤
│                                 COST STRUCTURE                                          │
│                                                                                         │
│ Platform (Distribution + Claims + Data)                                                 │
│ • Initial build ................... 1.5 - 3B VND                                        │
│ • Insurer integrations (10+) ..... 500M - 1B VND                                       │
│ • Vingroup app integrations ...... 500M - 1B VND                                       │
│                                                                                         │
│ Operations                                                                              │
│ • Tech team ...................... 150 - 200M VND/month                                 │
│ • Cloud / infrastructure ......... 50 - 100M VND/month                                 │
│ • Support & account mgmt ........ 50 - 100M VND/month                                  │
│ • Total monthly ops .............. 250 - 400M VND/month                                │
├─────────────────────────────────────────────────────────────────────────────────────────┤
│                                 REVENUE STREAMS                                         │
│                                                                                         │
│  1. INSURANCE DISTRIBUTION COMMISSION (Primary - Long Term)                             │
│  ┌────────────────────┬────────────────┬─────────────┬────────────┬───────────────┐     │
│  │ Product            │ Volume/Year    │ Avg Premium │ Commission │ Revenue       │     │
│  ├────────────────────┼────────────────┼─────────────┼────────────┼───────────────┤     │
│  │ Car insurance      │ 26,000 policies│ 8M VND      │ 12%        │ 25B VND       │     │
│  │ Trip insurance     │ 10M trips      │ 2K VND      │ 30%        │ 6B VND        │     │
│  │ Travel insurance   │ 500K bookings  │ 200K VND    │ 25%        │ 25B VND       │     │
│  │ Home insurance     │ 50K units      │ 1M VND      │ 20%        │ 10B VND       │     │
│  ├────────────────────┴────────────────┴─────────────┴────────────┼───────────────┤     │
│  │ TOTAL COMMISSION POTENTIAL                                     │ ~65B VND/year │     │
│  └────────────────────────────────────────────────────────────────┴───────────────┘     │
│  Bee-Digital rev share: 3-5% of commissions = 2-3B VND/year                             │
│                                                                                         │
│  2. PLATFORM FEES (Primary - Near Term)                                                 │
│  • Development fee (one-time): 800M - 1.5B VND                                         │
│  • Monthly operations fee: 150 - 250M VND/month                                        │
│  • Per-insurer integration fee: 50 - 100M VND each                                     │
│                                                                                         │
│  3. DATA & INTELLIGENCE (Future)                                                        │
│  • Claim analytics subscription for insurers                                            │
│  • Risk scoring API (per-query pricing)                                                 │
│  • Benchmark reports (insurer performance comparison)                                   │
│                                                                                         │
│  ════════════════════════════════════════════════════════════════════                    │
│  REVENUE TRAJECTORY                                                                     │
│  Year 1: Platform fees ........................... ~1.7 - 2.5B VND                      │
│  Year 2: Platform fees + early distribution ...... ~3 - 5B VND                          │
│  Year 3+: Distribution + platform + data ......... ~5 - 8B VND                          │
│                                                                                         │
└─────────────────────────────────────────────────────────────────────────────────────────┘
```

---

## Phased Roadmap

```
NEAR-TERM (Q1-Q2 2026)            MID-TERM (Q3-Q4 2026)           LONG-TERM (2027+)
Claims SLA Platform                + Distribution Engine            + Data & Intelligence
─────────────────────              ────────────────────             ─────────────────────

┌─────────────────────┐     ┌──────────────────────────┐     ┌──────────────────────────┐
│                     │     │                          │     │                          │
│  DMS Integration    │     │  Vingroup App APIs       │     │  Risk Scoring Engine     │
│  Insurer Connections│────▶│  Multi-product Catalog   │────▶│  Product Recommendations │
│  SLA Monitoring     │     │  Commission Tracking     │     │  Insurer Benchmarks      │
│  Blocker Attribution│     │  Sell <-> Claim Link     │     │  Predictive Analytics    │
│                     │     │                          │     │                          │
│  Revenue: Platform  │     │  Revenue: + Commissions  │     │  Revenue: + Data fees    │
│  fees only          │     │  (rev share)             │     │  (API + reports)         │
│                     │     │                          │     │                          │
│  Customers:         │     │  Customers:              │     │  Customers:              │
│  VF Aftersales      │     │  + BeeVN (distribution)  │     │  + Insurers (analytics)  │
│  Workshops          │     │  + Vingroup end users    │     │  + External partners     │
│                     │     │                          │     │                          │
└─────────────────────┘     └──────────────────────────┘     └──────────────────────────┘

 PROVE IT WORKS              SCALE THE PLATFORM               MONETIZE THE DATA
```

---

## Key Strategic Principles

1. **Claims first, distribution second.** The pain is validated and urgent. Build trust by solving what hurts now.
2. **Centralized data is non-negotiable.** Asset + insurance data must live in one place (Lam's Principle #1).
3. **Single accountability for E2E.** Bee-Digital is the one party accountable for the entire process (Lam's Principle #2).
4. **The sell-claim link is the moat.** Competitors can build either selling OR claiming. The power is in connecting both on one platform so the customer journey is seamless.
5. **Data flywheel creates lock-in.** More policies sold = more claims data = better risk scoring = better products = more policies sold. This compounds over time and becomes impossible to replicate.

---

*Bee-Digital: Sell insurance. Resolve claims. One platform.*
