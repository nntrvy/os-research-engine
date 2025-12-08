# Wizard of Oz

Phù thủy xứ Oz

## Purpose

Create what appears to be an automated product, but perform the work manually behind the scenes. Customers don't know a human is doing the work.

**✅ Ideal for:** Testing if customers value the output before investing in building the automation

## How It Differs from Concierge

| Aspect | Concierge | Wizard of Oz |
|--------|-----------|--------------|
| Customer knows | Yes, it's manual | No, appears automated |
| Transparency | High | Low (by design) |
| Best for | Service testing | Product testing |
| Feedback type | Direct service feedback | Product experience feedback |

## Preparation

1. **Design the user interface** that appears automated
2. **Set up backend processes** for manual fulfillment
3. **Create monitoring system** to catch incoming requests
4. **Train your "wizard"** (person behind the curtain)
5. **Set response time expectations** you can actually meet manually

## Execution

1. **Launch the "product"**
2. **Monitor incoming requests** constantly
3. **Manually fulfill** each request behind the scenes
4. **Track everything:**
   - Time to fulfill
   - Accuracy
   - Customer satisfaction
5. **Maintain the illusion** while collecting data

## Analysis

- Can you deliver acceptable quality manually?
- What's the true time/cost per request?
- What patterns emerge in customer requests?
- What would need to be automated first?
- Is this worth building for real?

## Cost

💰 **Medium** (3/5)

- Frontend development
- Manual labor time
- May need multiple "wizards" for coverage

## Time

| Phase | Duration |
|-------|----------|
| Setup | 2-4 weeks |
| Running | 4-8 weeks |

## Evidence Strength

⚡ **Very Strong** (5/5)

### Product Usage - Very Strong Evidence
- Customers using what they think is a product
- Validates the experience and value

### Payment - Very Strong Evidence
- Customers paying for automated-seeming service
- Validates willingness to pay for convenience

### Engagement Patterns - Strong Evidence
- How customers actually use the product
- Informs what to build

## Skills Required

- Product Design / Development / Operations / Speed

## Requirements

- Functioning frontend/interface
- Backend manual fulfillment capability
- Fast response times
- Attention to detail

## Wizard of Oz Architecture

```
┌─────────────────────────────────────────────────────┐
│            WIZARD OF OZ ARCHITECTURE                │
├─────────────────────────────────────────────────────┤
│                                                     │
│  CUSTOMER VIEW (Front Stage)                        │
│  ┌─────────────────────────────────────────────┐   │
│  │                                              │   │
│  │  ┌──────────────────────────────────────┐   │   │
│  │  │        "AUTOMATED" INTERFACE          │   │   │
│  │  │                                       │   │   │
│  │  │  [Upload]  [Process]  [Results]       │   │   │
│  │  │                                       │   │   │
│  │  │  "Your request is being processed..." │   │   │
│  │  │                                       │   │   │
│  │  └──────────────────────────────────────┘   │   │
│  │                                              │   │
│  │  Customer sees: Professional, automated     │   │
│  │                                              │   │
│  └─────────────────────────────────────────────┘   │
│                                                     │
│  ───────────────── THE CURTAIN ─────────────────   │
│                                                     │
│  WIZARD VIEW (Back Stage)                          │
│  ┌─────────────────────────────────────────────┐   │
│  │                                              │   │
│  │  📱 Alert! New request from customer        │   │
│  │                                              │   │
│  │  Wizard manually:                           │   │
│  │  • Reviews the request                      │   │
│  │  • Does the work by hand                    │   │
│  │  • Pushes result to customer                │   │
│  │                                              │   │
│  │  Tracking: Time, quality, patterns          │   │
│  │                                              │   │
│  └─────────────────────────────────────────────┘   │
│                                                     │
└─────────────────────────────────────────────────────┘
```

## Famous Wizard of Oz Examples

| Company | The Illusion | Behind the Curtain |
|---------|--------------|-------------------|
| Aardvark (Google) | AI Q&A service | Humans answering questions |
| CardMunch | Business card scanning | People typing info manually |
| x.ai | AI scheduling assistant | Human assistants scheduling |
| Early Zappos | E-commerce site | Founder buying shoes at store |

## What to Track

| Metric | Purpose |
|--------|---------|
| Time per request | Automation feasibility |
| Error rate | Quality requirements |
| Request types | Feature prioritization |
| Customer complaints | UX issues |
| Conversion rate | Value validation |

## Response Time Guidelines

| Product Type | Expected Response | Manual Reality Check |
|--------------|-------------------|---------------------|
| Real-time | Seconds | Very hard manually |
| Near-time | Minutes | Possible with alerts |
| Batch | Hours | Manageable |
| Async | Day+ | Easy |

## Best Practices

### ✅ Do:
- Set realistic expectations for response time
- Have backup wizards for coverage
- Automate monitoring/alerts
- Document every manual step
- Maintain quality consistently

### ❌ Don't:
- Promise instant results you can't deliver
- Burn out your wizards
- Forget time zones and availability
- Let quality slip
- Run too long without learning
