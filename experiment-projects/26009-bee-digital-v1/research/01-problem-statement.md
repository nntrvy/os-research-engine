# 01 - Problem Statement

**Date**: Jul 31, 2025

---

## Context

Insurance distribution within Vingroup ecosystem is handled by **BeeVN** (in-house broker). They arrange commercial insurance for subsidiaries and negotiate claims with insurers.

## The GSM Case Study

BeeVN partnered with PVI Digital to sell trip insurance to GSM passengers at 2,000 VND/trip.

**Initial success**: Auto opt-in drove 15B VND/month revenue

**What happened**: CQLTT (market regulators) required explicit opt-in consent

**Result**: Revenue dropped to ~8B VND/month

## Core Issues Identified

| Issue | Description |
|-------|-------------|
| **No system control** | BeeVN depends on partners for tech |
| **Slow integration** | GSM ↔ PVI integration takes time and workarounds |
| **No demand control** | Cannot influence customer conversion |

## Current Dependencies

- PVI Digital: Trip insurance sales
- Malayan: Driver savings insurance (GSM Philippines)

---

## Opportunities Identified

**Key strategy**: Embedded where emotion is high & decision is low-friction

| App | Opportunity | Emotion Moment |
|-----|-------------|----------------|
| GF (car rental) | Protection for renters | Booking a rental |
| VF (car companion) | Protection for owners | Official VinFast insurance |
| Vinmec | Healthcare protection | Hospital visit |
| VinClub | Wealth management | VIP engagement |
| XanhSM Driver | Driver protection | Onboarding/daily use |
| MyVinpearl | Travel protection | Hotel booking |

**Lower priority**:
- Vinhomes resident: Low intent (utility booking only)
- VinID: Low usage

---

## Next Steps (as of Jul 31)

1. Design VPC & BMC
2. Research launch market
3. Sketch solutions
4. Define Critical Hypotheses
