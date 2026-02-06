# Experiment Series by Business Model

Chuỗi thí nghiệm theo mô hình kinh doanh

This guide provides recommended experiment sequences for different business types. Each series builds evidence progressively, from discovery to validation.

**For agents:** When you identify a business model type, use the matching experiment series below. Each experiment step is tagged with the responsible department so you can assign work correctly.

---

## Department Color Legend & Team Structure

### Color Legend (Chú thích về màu)

Each experiment step is tagged with the department that owns it:

| Tag | Department | Color | Mission |
|-----|-----------|-------|---------|
| `[PH]` | **Problem Hunting** | RED | Find real problems to solve |
| `[RP]` | **Rapid Prototyping & Testing** | BLUE | Turn ideas into prototypes fast, collect user feedback early and continuously |
| `[ST]` | **Branding & Storytelling** | GREEN | Turn learnings & insights into compelling stories for the community |

### Team Structure (Sơ đồ Tổ chức Tối giản)

```
OS Research - Minimal Organization Chart
=========================================

1. PROBLEM HUNTING DEPARTMENT [PH] (RED)
   Mission: Find real problems to solve
   ├── AI Research Agents ................. Vy Nguyen
   │   Secondary research (automated/semi-automated),
   │   market scanning, trends, behavior, digital signals
   └── Primary Research Team .............. [Hiring Soon]
       Interviews, real conversations, field questions,
       observation, direct insight collection from real people

2. RAPID PROTOTYPING & TESTING DEPARTMENT [RP] (BLUE)
   Mission: Turn ideas into prototypes fast, collect early user feedback
   ├── VPC & BMC Generator ................ Vy Nguyen
   │   Rapid value proposition & business model design
   ├── Prototype Builder .................. Vy Nguyen + [Hiring: Product Designer]
   │   Fake startups, landing pages, clickable prototypes,
   │   simulated flows, single-function MVPs
   │   Goal: measure market demand, feasibility, profitability
   └── Test Runner ........................ Vy Nguyen + [Hiring Later]
       Conversion ads, direct marketing, simulations,
       commitment & willingness-to-pay tests via payment CTAs

3. BRANDING & STORYTELLING DEPARTMENT [ST] (GREEN)
   Mission: Turn learnings & insights into compelling stories
   ├── Brand Design ....................... Johann
   │   Brand development, visual identity, brand system
   ├── Social Media Management ............ [Hiring Soon]
   │   Knowledge synthesis, content on social platforms
   │   Focus: Awareness & Consideration
   └── Multimedia Producer ................ [Hiring Later]
       Video, photo, editing, motion, visual storytelling
```

---

## 1. B2C Physical Products (Hardware)

**Chuỗi phần cứng B2C**

Consumer hardware companies have more options than ever. They can create explainer videos about how their new product solves existing problems, then quickly build products using standard components. Finally, they can crowdfund to build and distribute to customers through retail or direct-to-consumer.

```
┌─────────────────────────────────────────────────────────────────────────┐
│                    B2C PHYSICAL PRODUCTS SERIES                         │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                         │
│  PHASE 1: DISCOVERY                                                     │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Customer           │────▶│  Search Trend       │                   │
│  │  Interviews         │     │  Analysis           │                   │
│  │                     │     │                     │                   │
│  │  Jobs, Pains, Gains │     │  Problem Size       │                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│           │                           │                                 │
│           └───────────┬───────────────┘                                 │
│                       ▼                                                 │
│  PHASE 2: PROTOTYPING                                                   │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Paper              │────▶│  3D Print           │                   │
│  │  Prototype          │     │  Prototype          │                   │
│  │                     │     │                     │                   │
│  │  Form & Interface   │     │  Form, Fit, Function│                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│                                       │                                 │
│                                       ▼                                 │
│  PHASE 3: VALIDATION                                                    │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Explainer          │────▶│  Crowdfunding       │                   │
│  │  Video              │     │                     │                   │
│  │                     │     │                     │                   │
│  │  Value Proposition  │     │  Demand & Funding   │                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│                                       │                                 │
│                                       ▼                                 │
│  PHASE 4: LAUNCH                                                        │
│  ┌─────────────────────┐                                               │
│  │  Pop-up Store       │                                               │
│  │                     │                                               │
│  │  Real-world Sales   │                                               │
│  └─────────────────────┘                                               │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

### Experiment Sequence

| Phase | Experiment | Dept | Purpose | Evidence |
|-------|------------|------|---------|----------|
| 1 | [Customer Interviews](./06-customer-interviews.md) | `[PH]` | Discover jobs, pains, gains | Weak-Medium |
| 1 | [Search Trend Analysis](./02-search-trend-analysis.md) | `[PH]` | Validate problem size | Medium |
| 2 | [Pretend to Own](./20-pretend-to-own.md) / Paper Prototype | `[RP]` | Test form factor | Weak |
| 2 | [3D Print](./31-3d-print.md) | `[RP]` | Test physical prototype | Medium |
| 3 | [Explainer Video](./24-explainer-video.md) | `[ST]` | Communicate value proposition | Medium |
| 3 | [Crowdfunding](./18-crowdfunding.md) | `[ST]` | Validate demand + raise funds | Very Strong |
| 4 | [Pop-up Store](./28-popup-store.md) | `[ST]` | Test real-world sales | Strong |

### Key Insights for Hardware

- **Start cheap:** Paper prototypes before 3D printing
- **Use standard components:** Reduce time and cost
- **Video is essential:** Crowdfunding rarely works without video
- **Test in person:** Pop-ups reveal issues photos can't show

---

## 2. B2C Software (SaaS / AI SaaS)

**Chuỗi Phần mềm B2C**

The growth of the Internet, open-source software, and tools has brought new software companies into the global market. Smart B2C companies use customer language in their marketing content to increase conversions. They quickly experiment with prototypes and even deliver value manually before building the product.

```
┌─────────────────────────────────────────────────────────────────────────┐
│                    B2C SOFTWARE SERIES                                  │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                         │
│  PHASE 1: DISCOVERY                                                     │
│  ┌─────────────────────┐                                               │
│  │  Customer           │                                               │
│  │  Interviews         │                                               │
│  │                     │                                               │
│  │  Language & Pain    │                                               │
│  └─────────┬───────────┘                                               │
│            │                                                            │
│            ▼                                                            │
│  PHASE 2: ACQUISITION TEST                                              │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Online Ads         │────▶│  Simple Landing     │                   │
│  │  (Fake Door)        │     │  Page               │                   │
│  │                     │     │                     │                   │
│  │  CTR & Messaging    │     │  Sign-up Rate       │                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│                                       │                                 │
│                                       ▼                                 │
│  PHASE 3: ENGAGEMENT                                                    │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Email / Social     │────▶│  Clickable          │                   │
│  │  Campaign           │     │  Prototype          │                   │
│  │                     │     │                     │                   │
│  │  Nurture & Educate  │     │  UX Validation      │                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│                                       │                                 │
│                                       ▼                                 │
│  PHASE 4: MONETIZATION                                                  │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Mock Sale /        │────▶│  Wizard of Oz       │                   │
│  │  Pre-sale           │     │                     │                   │
│  │                     │     │                     │                   │
│  │  Willingness to Pay │     │  Manual Delivery    │                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

### Experiment Sequence

| Phase | Experiment | Dept | Purpose | Evidence |
|-------|------------|------|---------|----------|
| 1 | [Customer Interviews](./06-customer-interviews.md) | `[PH]` | Capture customer language | Weak-Medium |
| 2 | [Fake Door Ad](./10-fake-door-ad.md) | `[RP]` | Test messaging at scale | Medium |
| 2 | [Simple Landing Page](./26-simple-landing-page.md) | `[RP]` | Capture sign-ups | Medium |
| 3 | [Email/Social Campaign](./13-email-campaign.md) | `[PH]` | Nurture and educate | Medium |
| 3 | Clickable Prototype (Figma) | `[RP]` | Test UX without code | Medium |
| 4 | [Mock Sale](./27-mock-sale.md) / [Pre-sale](./16-pre-sale.md) | `[RP]` | Validate willingness to pay | Strong |
| 4 | [Wizard of Oz](./30-wizard-of-oz.md) | `[ST]` | Deliver value manually | Very Strong |

### Key Insights for SaaS

- **Use customer words:** Headlines from interviews convert better
- **Test before building:** Wizard of Oz validates before development
- **Combine ads + landing page:** Measure full funnel, not just clicks
- **Manual first:** Many successful SaaS started with manual processes

---

## 3. B2C Services

**Chuỗi Dịch vụ B2C**

B2C service companies start with a specific area by interviewing customers and searching for search volume to determine customer preferences. Companies can quickly launch ads to bring customers from that set to their landing page, then follow up with an email campaign. After conducting a few pre-sales, B2C services can deliver value manually to refine before scaling.

```
┌─────────────────────────────────────────────────────────────────────────┐
│                    B2C SERVICES SERIES                                  │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                         │
│  PHASE 1: DISCOVERY                                                     │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Customer           │────▶│  Search Trend       │                   │
│  │  Interviews         │     │  Analysis           │                   │
│  │                     │     │                     │                   │
│  │  Local Needs        │     │  Demand Volume      │                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│           │                           │                                 │
│           └───────────┬───────────────┘                                 │
│                       ▼                                                 │
│  PHASE 2: ACQUISITION                                                   │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Online Ads         │────▶│  Simple Landing     │                   │
│  │                     │     │  Page               │                   │
│  │                     │     │                     │                   │
│  │  Local Targeting    │     │  Lead Capture       │                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│                                       │                                 │
│                                       ▼                                 │
│  PHASE 3: NURTURE                                                       │
│  ┌─────────────────────┐                                               │
│  │  Email / Social     │                                               │
│  │  Campaign           │                                               │
│  │                     │                                               │
│  │  Build Trust        │                                               │
│  └─────────┬───────────┘                                               │
│            │                                                            │
│            ▼                                                            │
│  PHASE 4: VALIDATION                                                    │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Pre-sale           │────▶│  Concierge          │                   │
│  │                     │     │                     │                   │
│  │                     │     │                     │                   │
│  │  Willingness to Pay │     │  Manual Delivery    │                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

### Experiment Sequence

| Phase | Experiment | Dept | Purpose | Evidence |
|-------|------------|------|---------|----------|
| 1 | [Customer Interviews](./06-customer-interviews.md) | `[PH]` | Understand local needs | Weak-Medium |
| 1 | [Search Trend Analysis](./02-search-trend-analysis.md) | `[PH]` | Validate demand volume | Medium |
| 2 | [Online Ads](./10-fake-door-ad.md) | `[RP]` | Drive local traffic | Medium |
| 2 | [Simple Landing Page](./26-simple-landing-page.md) | `[RP]` | Capture leads | Medium |
| 3 | [Email/Social Campaign](./12-social-media-campaign.md) | `[PH]` | Build trust over time | Medium |
| 4 | [Pre-sale](./16-pre-sale.md) | `[ST]` | Validate payment intent | Very Strong |
| 4 | [Concierge](./29-concierge.md) | `[ST]` | Manual service delivery | Very Strong |

### Key Insights for Services

- **Start local:** Geographic focus reduces complexity
- **Search trends reveal demand:** Know what people search for
- **Trust matters:** Services need more nurturing than products
- **Manual delivery first:** Refine the service before scaling

---

## 4. B2B2C (Intermediary)

**Chuỗi B2B2C**

B2B2C companies are in a unique position to use experiments to inform the supply chain. Many companies approach consumers directly with their experiments, create evidence, and then use it in negotiations with B2B partners. The presence of evidence provides leverage, rather than circular conversations based only on opinions.

```
┌─────────────────────────────────────────────────────────────────────────┐
│                    B2B2C INTERMEDIARY SERIES                            │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                         │
│  PHASE 1: CONSUMER DISCOVERY                                            │
│  ┌─────────────────────┐                                               │
│  │  Customer           │                                               │
│  │  Interviews         │                                               │
│  │                     │                                               │
│  │  End-user Needs     │                                               │
│  └─────────┬───────────┘                                               │
│            │                                                            │
│            ▼                                                            │
│  PHASE 2: CONSUMER VALIDATION                                           │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Simple Landing     │────▶│  Explainer          │                   │
│  │  Page               │     │  Video              │                   │
│  │                     │     │                     │                   │
│  │  Consumer Interest  │     │  Value Proposition  │                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│                                       │                                 │
│                                       ▼                                 │
│  PHASE 3: DEMAND PROOF                                                  │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Pre-sale           │────▶│  Concierge          │                   │
│  │                     │     │                     │                   │
│  │                     │     │                     │                   │
│  │  Payment Evidence   │     │  Delivery Proof     │                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│           │                           │                                 │
│           └───────────┬───────────────┘                                 │
│                       ▼                                                 │
│  PHASE 4: PARTNER ACQUISITION                                           │
│  ┌─────────────────────┐     ┌─────────────────────┐                   │
│  │  Single Feature     │────▶│  Data Sheet         │                   │
│  │  MVP                │     │                     │                   │
│  │                     │     │                     │                   │
│  │  Prove Capability   │     │  Technical Specs    │                   │
│  └─────────────────────┘     └─────────────────────┘                   │
│                                       │                                 │
│                                       ▼                                 │
│  PHASE 5: PARTNER VALIDATION                                            │
│  ┌─────────────────────┐                                               │
│  │  Partner &          │                                               │
│  │  Supplier Interviews│                                               │
│  │                     │                                               │
│  │  Negotiate with     │                                               │
│  │  Evidence           │                                               │
│  └─────────────────────┘                                               │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

### Experiment Sequence

| Phase | Experiment | Dept | Purpose | Evidence |
|-------|------------|------|---------|----------|
| 1 | [Customer Interviews](./06-customer-interviews.md) | `[PH]` | Understand end-user needs | Weak-Medium |
| 2 | [Simple Landing Page](./26-simple-landing-page.md) | `[RP]` | Prove consumer interest | Medium |
| 2 | [Explainer Video](./24-explainer-video.md) | `[PH]` | Gather consumer response as evidence | Medium |
| 3 | [Pre-sale](./16-pre-sale.md) | `[ST]` | Prove consumers will pay | Very Strong |
| 3 | [Concierge](./29-concierge.md) | `[ST]` | Prove you can deliver | Very Strong |
| 4 | [Single Feature MVP](./32-single-feature-mvp.md) | `[ST]` | Prove technical capability | Very Strong |
| 4 | [Data Sheet](./22-data-sheet.md) | `[ST]` | Professional specifications | Medium |
| 5 | [Partner & Supplier Interviews](./07-partner-supplier-interviews.md) | `[PH]` | Negotiate with evidence | Strong |

### Key Insights for B2B2C

- **Consumer evidence is leverage:** Partners respect proven demand
- **Prove both sides:** Validate consumers AND your delivery capability
- **Data sheets matter:** B2B partners expect professional documentation
- **Evidence beats opinions:** Don't negotiate without proof

---

## Choosing Your Series

| Business Type | Start With | Critical Experiment | End Goal | Dept Flow |
|---------------|------------|---------------------|----------|-----------|
| **B2C Hardware** | Interviews | Crowdfunding | Funded product | `[PH]` → `[RP]` → `[ST]` |
| **B2C Software** | Interviews | Wizard of Oz | Validated MVP | `[PH]` → `[RP]` → `[PH]` → `[RP]` → `[ST]` |
| **B2C Services** | Interviews + Search | Concierge | Refined service | `[PH]` → `[RP]` → `[PH]` → `[ST]` |
| **B2B2C** | Consumer validation | Partner interviews | Partnership deals | `[PH]` → `[RP]` → `[ST]` → `[PH]` |

## Evidence Progression

All series follow this evidence progression:

```
Weak Evidence ──────────────────────────────────▶ Strong Evidence

 Opinions    Interest     Actions     Payment    Revenue
    │           │            │           │          │
    ▼           ▼            ▼           ▼          ▼
 Surveys    Sign-ups    Mock Sales   Pre-sales   Sales
Interviews  Clicks     Add to Cart  Deposits    Subscriptions
            Views      Downloads    Pledges     Repeat Purchases
```

## Tips for Planning Your Series

1. **Don't skip discovery:** Interviews inform everything else
2. **Match evidence to risk:** Higher stakes = stronger evidence needed
3. **Iterate, don't waterfall:** Learn and adjust between experiments
4. **Combine experiments:** Landing page + ads work better together
5. **Manual before automated:** Concierge/Wizard of Oz before building

---

*See individual experiment files for detailed preparation, execution, and analysis guidance.*
