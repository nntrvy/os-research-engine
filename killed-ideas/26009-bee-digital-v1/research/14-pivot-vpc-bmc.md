# 14 - Pivot VPC & BMC

**Date**: Aug 22, 2025

**Status**: Historical - pivot day documentation. Some hypotheses later tested.

---

## The Pivot Decision

> "We learnt that embedded insurance platform simply won't work."
>
> **New direction: Build a claim platform for EV.**

---

## Competitors Identified

| Company | Focus |
|---------|-------|
| [Tractable.ai](https://tractable.ai/) | AI for claims & disaster recovery |
| [CCC](https://www.cccis.com/) | Auto claims platform (US market) |

---

## Value Proposition Canvas (VPC)

### Customer Segments

1. EV Owners (VinFast, GSM drivers, early adopters)
2. Garages chính hãng & được ủy quyền
3. Insurers (auto insurance providers)

### Customer Jobs

| Segment | Job |
|---------|-----|
| EV Owners | Claim nhanh, minh bạch, ít giấy tờ |
| Garages | Thanh toán nhanh, giảm thủ tục với insurer |
| Insurers | Giảm chi phí bồi thường, chống gian lận, giữ khách hài lòng |

### Pains

| Segment | Pain |
|---------|------|
| EV Owners | Claims chậm 15-30 ngày, giấy tờ phức tạp, thiếu minh bạch |
| Garages | Phải ứng tiền sửa, chờ insurer thanh toán lâu |
| Insurers | Chi phí vận hành cao, gian lận claims, thiếu dữ liệu EV để định phí |

### Gains

| Segment | Gain |
|---------|------|
| EV Owners | Nhận tiền nhanh, biết rõ tiến độ, tin tưởng insurer |
| Garages | Dòng tiền nhanh, ít tranh cãi |
| Insurers | Tiết kiệm 20-30% chi phí claims, sản phẩm EV insurance hấp dẫn hơn |

### Electrik Value Proposition

- Claims EV nhanh trong ngày, không phải hàng tuần
- App minh bạch tiến độ & coverage
- Garage portal + milestone payment
- AI ước lượng chi phí + fraud detection
- Tích hợp dữ liệu VinFast/GSM

---

## Business Model Canvas (BMC)

### Key Partners
- VinFast, GSM (data + distribution)
- Garage EV (service & parts)
- Insurers (Bảo Việt, PTI, BSH…)
- AI tech providers (FPT.AI, Google Vision…)

### Key Activities
- Build claims app & portal
- Develop AI for estimate & fraud check
- Manage insurer & garage integrations
- Provide customer support (case owner)

### Value Propositions
- **EV Owners**: Claims easy, fast, transparent
- **Garages**: Get paid faster, less paperwork
- **Insurers**: Lower cost, less fraud, better retention

### Customer Relationships
- B2C app for EV owners (self-service, transparent)
- B2B2C partnership with insurers (Electrik as infra/TPA)

### Channels
- Integrated into VinFast & GSM apps
- Direct mobile/web app
- Insurer portals
- Garage portals

### Customer Segments
- EV Owners
- Garages
- Insurers (non-life, auto)

### Revenue Streams
- SaaS subscription (insurers)
- Transaction fee per claim
- Data analytics services
- Future: commission from embedded insurance sales

### Key Resources
- EV data access (VinFast, garages)
- AI/ML models
- Core dev/product team
- Regulatory compliance

### Cost Structure
- Product development
- AI & cloud infrastructure
- Partnerships & licensing
- Operations & customer support

---

## 5 Critical Hypotheses to Test

### Desirability (Do customers want this?)

| # | Hypothesis | Test Method |
|---|------------|-------------|
| 1 | EV Owners consider claims a major pain, willing to use Electrik if integrated in VinFast/GSM | Survey + interview VinFast/GSM driver communities |
| 2 | Insurers willing to partner with third party for EV claims if it saves cost & retains customers | Interview 2-3 small insurers (PTI, BSH) about pilot willingness |
| 3 | Garages want a portal for faster milestone payments instead of current insurer process | Interview 3-5 authorized garages |

### Viability (Can we make money?)

| # | Hypothesis | Test Method |
|---|------------|-------------|
| 4 | Insurers will pay SaaS or transaction fee for claims processed via Electrik | Pricing model discussion with pilot insurer (e.g., 50-100K VND/claim) |
| 5 | EV data (battery, repair history, telematics) from VinFast/GSM is sufficient to create useful Risk Score for pricing & fraud detection | POC with small dataset (100-200 claim files + service logs) |

---

## Competitive Landscape Map

```
                    HIGH AUTOMATION
                         ↑
                         |
         Fermion/        |      ★ ELECTRIK
         Merimen         |      (Blue Ocean)
                         |
    ←--------------------+-------------------→
    LOW CX               |              HIGH CX
                         |
         Traditional     |      Insurtech Apps
         Loss Adjusters  |      (Saladin, Inso, OPES)
                         |
         Garage/Manual   |      FPT.AI
                         ↓
                    LOW AUTOMATION
```

### Positioning Analysis

| Player | Automation | Customer Experience |
|--------|------------|---------------------|
| **Electrik** | High | High (EV-first) |
| Fermion/Merimen | High | Medium (insurer-centric) |
| FPT.AI | Medium-High (OCR/NLP) | Low (not customer-facing) |
| Traditional Adjusters | Low | Low |
| Insurtech apps (Saladin, Inso, OPES) | Low-Medium | High |
| Garage/Manual | Low | Low |

**Blue Ocean**: Electrik targets the upper-right quadrant - customer-first + automation-first, specifically for EV ecosystem.

---

## Validation Status (from later interviews)

| Hypothesis | Result |
|------------|--------|
| H1: EV owners see claims as major pain | **Weak** - actually well-served by global standards |
| H2: Insurers willing to partner | **Confirmed** - digitization pressure is real |
| H3: Garages want faster payment | **Confirmed** - identified as power player |
| H4: Insurers pay per claim | **To be tested** |
| H5: EV data useful for Risk Score | **To be tested** |

---

## Market Opportunity & Competitive Advantage

### Current Vietnam Car Claims Market Problems

| Problem | Description |
|---------|-------------|
| **Slow & expensive** | Most claims still rely on in-person adjusters, many manual steps, paperwork |
| **No transparency** | Customers, garages, insurers have no unified system. Weeks to get payment. |
| **No data standards** | Each insurer manages differently, brokers must "run manually" across systems |
| **No EV solution** | VinFast, Tesla imports, BYD - no specialized claims solution. External garages lack capability, parts/repair data not synchronized. |

**Gap**: No centralized platform connecting customer – garage – broker – insurer, especially for EV.

---

### Competitive Advantage: Data Access

#### VinFast Ecosystem Data

| Data Type | Value |
|-----------|-------|
| **Driving behavior** (VinFast app / Smart Driving) | Risk profile scoring: distance, speed, hard braking, usage frequency |
| **Service logs** (authorized garage system) | Improve underwriting & claims accuracy |

#### Garage & EV Parts Data

| Data Type | Value |
|-----------|-------|
| Parts cost, repair time, availability | Help insurers price risk more accurately (e.g., EV battery damage = very expensive) |
| Direct integration with VinFast garages | Streamlined claims processing |

#### Broker Advantage

- Provide insurers with **exclusive risk scoring model** based on data
- Become **"data-powered broker/TPA"** not just a policy seller

---

### Market Gap Analysis

| Gap | Current State | Opportunity |
|-----|---------------|-------------|
| **Claims** | Fermion/Merimen, FPT.AI focus on big insurer B2B. No EV-focused claims stack. | Build EV-specialized claims platform |
| **Data** | Insurers are "blind" to driving behavior. Price based on traditional factors (year, value, driver age). | Provide behavior-based risk data |
| **Broker** | No broker has turned data advantage into pricing/claims product | Be the data-powered broker/TPA |

---

### Strategic Position

> **Build "Claims + Risk Data Layer" specialized for EV (especially VinFast)**

1. **For Insurers**: Risk scoring & claims automation tools
   - Reduce claims costs
   - Launch EV insurance products that fit actual needs

2. **Data Platform**: Sell insights/data services to insurers

```
ELECTRIK POSITION:

   VinFast/GSM ←→ ELECTRIK ←→ Insurers
   (data source)   (Claims + Risk    (buyers of
                    Data Layer)       data & automation)
         ↑
       Garages
   (service data)
```
