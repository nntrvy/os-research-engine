# Meeting Minutes: VinFast x BeeVN - Claims SLA Implementation

**Date:** 06.02.2026
**Type:** Cross-functional alignment meeting
**Evidence Strength:** Medium-Strong (multi-stakeholder meeting with commitments and action owners)

---

## Participants

| Name | Organization | Role |
|------|-------------|------|
| Ms. LA ("Me LA") | BeeVN | Meeting chair, senior leadership |
| Ms. Noi ("Chi Noi") | VinFast | Senior stakeholder, requirements clarification |
| Lam | BeeVN Technology | Tech lead |
| Bao | VinFast IT (VinSF) | IT contact point |
| Hon | VinFast Aftersales | Project lead (assigned) |
| Tien | TBH (Insurance Broker) | Contact point (assigned) |
| + Operations team | VinFast | Service workshop operations |

**Also referenced:** 10 insurance companies (already partnered with BeeVN)

---

## Agenda

Implementation of SLA tracking in the insurance claims process for VinFast vehicles.

---

## 1. Opening - Ms. LA (BeeVN)

### Context
- 10 insurance companies are participating in the partnership
- Current SLA timelines (1 hour, 2 hours, 5 hours) are vague and unenforceable

### Problem Statement: Why SLA hasn't been achieved yet

1. **Operations teams lack standardized guidance** - Drivers don't receive proper instructions on what to do, how to communicate, or what steps to follow when an incident occurs
2. **No accompaniment during claims recovery** - Drivers are left alone during the insurance claims process

### Example cited
- A VF5 was flooded (water damage)
- Aftersales and Legal departments failed to provide timely advisory to the customer
- Gap: no coordinated consultation workflow exists

### Meeting objective
- Improve claims recovery outcomes for VinFast customers
- Review SLA timelines set for insurance companies
- Clarify: VinFast still needs to ensure proper documentation and information flow on their side
- Request from Ms. LA to Bao: Define what VinFast IT wants to do, and clarify **each party's role (RACI/MATRIX)**

---

## 2. Clarification - Ms. Noi (VinFast)

Ms. Noi stepped in to articulate VinFast's core need clearly:

### VinFast's Core Need

> **Track the service workshop repair process for insurance-related vehicles - quickly and accurately.**

### Requirements

1. **Automated status updates** - When did the car enter the workshop? When did the workshop send info to the insurer? When did the insurer respond?
2. **Standardized document checklist** - Auto-tracked, not manual
3. **Blocker identification** - At any point, know who is the bottleneck: the insurer? VinFast internal? The workshop?
4. **End-to-end process scope** - From vehicle entry to vehicle exit (not just the insurance-related portion)

---

## 3. Technical Response - Lam (BeeVN Technology)

### Prerequisites for an end-to-end system

1. **Asset management database** - Centralized data on vehicles, parts, accessories, and insurance policies
2. **Standardized end-to-end flow** - From incident occurrence to vehicle back on the road
3. **System audit** - Map current systems across all parties (VinFast, BeeVN, insurers) to identify what's already covered and what gaps remain

### Two Non-Negotiable Principles

> **Principle 1:** Asset data and insurance data MUST be managed centrally. Distributed data makes improvement impossible.

> **Principle 2:** There must be ONE single accountable party for the entire end-to-end process. This party is the sole entity that can define and enforce SLAs.

---

## 4. Q&A and Key Exchanges

### Bao (VinFast IT) asked:
> "Has Bee ever deployed this before, or is this the first time?"

### Ms. LA (BeeVN) responded:

| Capability | Status |
|-----------|--------|
| Insurance company connections | 10 companies already connected |
| Vehicle tracking | Already monitoring all GSM vehicles |
| Legal agreements | NDAs signed with insurers for integration |
| Process understanding | Insurers have shared their internal workflows |

### Bao (VinFast IT) shared:
- VinFast (via VinSF) has a strategic initiative to **standardize everything into DMS** (Dealer Management System)
- All dealer, service, and insurance information will consolidate into DMS

### Key conclusion:
> **Connecting DMS to Bee-Digital is feasible.**

---

## 5. Action Items & Ownership

| Party | Contact Point | Role |
|-------|--------------|------|
| VinFast Aftersales | **Mr. Hon** | Project lead |
| TBH (Insurance Broker) | **Mr. Tien** | Insurance liaison |
| VinFast IT (VinSF) | **Mr. Bao** | IT/systems integration |
| Bee-Digital | **TBD** | Not yet assigned |

---

## 6. Additional Insight - Mr. Hon

Service workshops (XDV) currently use **two separate internal software systems**. VinFast has an ongoing project to **consolidate all secondary workshop software into DMS**. VinFast Aftersales wants workshops to operate exclusively on DMS.

**Implication for Bee-Digital:** Once DMS consolidation is complete, a single integration point (DMS → Bee-Digital) covers all workshop data.

---

## Key Takeaways for Bee-Digital Project

### Validated (New Evidence)

| Finding | Evidence Type | Strength |
|---------|-------------|----------|
| VinFast has real pain with claims SLA | Multi-stakeholder meeting, concrete examples (VF5 flood) | Medium-Strong |
| 10 insurers already connected to BeeVN | Stated by Ms. LA in meeting | Strong |
| DMS consolidation is a VinFast strategic priority | Stated by Bao (VinFast IT) | Medium-Strong |
| DMS → Bee-Digital integration is feasible | Confirmed by VinFast IT in meeting | Medium-Strong |
| Single accountability for E2E process is recognized as necessary | Proposed by Lam, not challenged | Medium |
| Centralized data management is a prerequisite | Proposed by Lam, not challenged | Medium |

### Risks & Open Items

| Risk | Detail |
|------|--------|
| Bee-Digital contact point not assigned | No single owner from Bee side yet |
| DMS consolidation timeline unknown | Dependency on VinFast internal project |
| Scope creep | Ms. Noi expanded scope to full E2E (not just insurance), which is larger |
| Workshop adoption | Forcing XDV onto single DMS may face resistance |

---

## Observer Notes

- Ms. Noi demonstrated strong facilitation skills: listening, synthesizing, clarifying, and asking incisive questions. A valuable ally for getting requirements right.
- The meeting signals that VinFast is moving from "talking about claims" to "assigning project owners" - a concrete commitment signal.
- Lam's two principles (centralized data + single accountability) align perfectly with Bee-Digital's positioning as the E2E orchestrator.
