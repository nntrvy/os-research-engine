# 13 - Product Concept (Sep 5, 2025)

**Date**: Sep 5, 2025

**Status**: Historical reference - some assumptions later invalidated by customer interviews

---

## Core Value Proposition

> Electrik creates an AI-powered EV insurance ecosystem that benefits all stakeholders.

---

## Value by Stakeholder

### 1. EV Owners (Primary)

| Benefit | Description |
|---------|-------------|
| 10x faster claims | Simple app integrated with VinFast ecosystem |
| No paperwork | All documents digitized and auto-filled |
| Transparency | Instant updates, faster payouts, stress-free |

### 2. Garages / Repair Shops (Secondary)

| Benefit | Description |
|---------|-------------|
| No manual paperwork | Automated claim data transfer |
| Less negotiation | Pre-approved repair estimates |
| Faster payment | Direct insurer settlement (bảo lãnh) |

### 3. Insurers (Primary)

| Benefit | Description |
|---------|-------------|
| AI triage | Fast-track low-risk claims |
| Fraud detection | Car data + video analysis |
| Efficiency | Reduced loss ratio, improved customer trust |

**Fraud detection approach**:
- Compare repair requests with VinFast official parts catalog & labor database
- Cross-check with vehicle telemetry from VF app (speed, braking, impact data)

### 4. Fleet Managers (Optional)

| Benefit | Description |
|---------|-------------|
| Unified dashboard | Real-time claim monitoring |
| Reduced downtime | Up to 50% with proactive coordination |

---

## How It Works

```
1. ACCIDENT REPORTING
   Customer records video → uploads via VF app
   Policy + car data auto-attached (no forms)
              ↓
2. AI ANALYSIS
   Video + telemetry data → instant repair estimate
   Detect inconsistencies (damage vs sensor data) → fraud flag
              ↓
3. SMART TRIAGE
   Low-risk → automatic approval
   High-risk → flagged for insurer review (Zalo to adjuster)
              ↓
4. SEAMLESS WORKFLOW
   Digital flow: customer ↔ insurer ↔ garage ↔ fleet
   Single shared claim timeline for all stakeholders
```

---

## Development Stages

### Stage 1: Prototype (Ultra-Narrow MVP)

**Single feature**: AI accident video → instant repair estimate

- No policy upload yet
- Just proof-of-speed + accuracy demo
- **Goal**: Convince insurers/garages this works

### Stage 2: Single Feature MVP

**Add**: Policy upload + car data connection

- Promise: "Connect today → claim 10x faster tomorrow"
- Test adoption incentive: instant insurance verification or rewards

### Stage 3: Full Platform

- Insurer integration for auto-triage
- Garage integration for instant job routing & payment
- Fraud detection with telemetry + official VF repair data
- Fleet dashboard for enterprise customers

---

## Later Validation Notes

**From Sep 24-25 customer interviews, some assumptions were challenged:**

| Assumption (Sep 5) | Reality (Sep 24-25) |
|--------------------|---------------------|
| EV Owners as primary target | Car buyers are well-served, low pain |
| Fraud detection is valuable to insurers | NOT a priority - "luật ngầm" (unwritten rule) |
| VinFast integration is key | VinFast won't co-develop, low priority for them |
| Focus on triage automation | AI Call Center emerged as faster entry point |

**What held up**:
- Garage pain points confirmed (paperwork, slow approvals)
- Insurer digitization pressure confirmed (40% AI KPI)
- Need for faster claims workflow confirmed

---

## Relevance Assessment

**Still relevant**:
- Overall flow architecture (video → AI → triage → workflow)
- Garage value proposition
- Development staging approach (start narrow, expand)

**Needs revision**:
- De-emphasize fraud detection in pitch
- Target insurers first, not OEMs
- Consider AI Call Center as entry point
- Garage may be more important than EV owners
