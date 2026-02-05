# 03 - Embedded Insurance Research

**Date**: Aug 6, 2025

**Sources**:
- https://openkoda.com/embedded-insurance-products-and-solutions/
- https://openkoda.com/embedded-car-insurance/

---

## Market Context

- Embedded insurance market projected to reach **$703.44 billion by 2029**
- CAGR: **35.14%**
- 70% of consumers prefer insurance integrated into daily-use digital platforms
- 45% of e-commerce and fintech companies have already deployed embedded solutions

---

## Key Integration Touchpoints

| Touchpoint | Description | Relevance to Electrik |
|------------|-------------|----------------------|
| Delivery/Purchase Coverage | Protection against transit loss/damage | Trip insurance for GSM |
| Extended Warranties | One-click coverage extensions | VinFast vehicle warranty+ |
| Refund Protection | Financial security for plan changes | GF rental cancellation |
| Travel/Event Insurance | Risk reduction for bookings | MyVinpearl travel |
| Bill Protection | Income replacement coverage | Driver protection |

**Key stat**: 65% of shoppers more likely to complete purchases with included shipping insurance

---

## Real-World Implementation Models

| Company | Approach | Lesson for Electrik |
|---------|----------|---------------------|
| **Tesla** | Behavioral data integration - adjusts premiums using real-time driving metrics | VinFast telemetry opportunity |
| **Stellantis + Bolt** | Multi-carrier network - offers insurance from multiple providers | Don't lock to one insurer |
| **Airbnb AirCover** | Automatic protection without additional cost | Consider bundled/included model |
| **FirstVet** | In-app integration within telehealth | Vinmec integration parallel |

---

## Embedded Car Insurance Specifics

### Integration Steps (Openkoda approach)

1. Create essential form fields (vehicle registration, first registration date, model)
2. Add database-connected dropdown selections
3. Implement dynamic premium calculations
4. Establish form validation rules
5. Secure customer data storage
6. Automate confirmation emails
7. Finalize and embed the form

### Dynamic Pricing Factors

- First registration date
- Driver's age
- Selected coverage type
- Location

Real-time price updates increase transparency and customer trust.

---

## Key Benefits of Embedded Approach

1. **Reduced friction** - insurance at point of decision
2. **Improved conversion** - contextual, relevant offers
3. **Operational efficiency** - automation reduces manual work
4. **Personalization** - adapt instantly to market demands

---

## Implications for Electrik

1. **Telemetry opportunity**: VinFast/GSM driving data could enable Tesla-like dynamic pricing
2. **Multi-carrier strategy**: Build for multiple insurers, not just PVI
3. **Bundled models**: Consider "included" insurance as competitive differentiator
4. **Quick wins**: Form-based integration can deploy fast while building deeper SDK
