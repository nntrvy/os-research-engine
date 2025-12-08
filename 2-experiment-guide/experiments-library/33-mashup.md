# Mash-up

Kết hợp công cụ

## Purpose

Combine existing tools, services, and no-code platforms to create a functional product without building custom technology.

**✅ Ideal for:** Testing product viability before investing in development

## Preparation

1. **Map your required functionality**
2. **Identify existing tools** that can handle each function
3. **Design the integration** between tools
4. **Set up automation** (Zapier, Make, etc.)
5. **Create user-facing layer** (landing page, form, etc.)

## Execution

1. **Launch to initial users**
2. **Monitor the mash-up** for issues
3. **Manually intervene** when integrations break
4. **Collect usage data** and feedback

## Analysis

- Does the mash-up deliver the value?
- Where does it break down?
- What's the manual work required?
- What would need to be built custom?
- Is it worth building a real product?

## Cost

💰 **Low** (2/5)

- Subscription fees for tools
- Automation platform costs
- Minimal development

## Time

| Phase | Duration |
|-------|----------|
| Setup | 1-2 weeks |
| Running | 4-8 weeks |

## Evidence Strength

⚡ **Strong** (4/5)

### Usage - Strong Evidence
- Customers using the mash-up
- Validates the workflow

### Payment - Very Strong Evidence
- Customers paying for mash-up service
- Validates willingness to pay

### Friction Points - Medium Evidence
- Where users struggle
- Informs what to build

## Skills Required

- No-Code / Automation / Product Design

Understanding of available tools and how to connect them.

## Requirements

- Access to various SaaS tools
- Automation platform (Zapier, Make, etc.)
- User-facing interface

## Mash-up Architecture

```
┌─────────────────────────────────────────────────────┐
│              MASH-UP ARCHITECTURE                   │
├─────────────────────────────────────────────────────┤
│                                                     │
│  USER-FACING LAYER                                  │
│  ┌─────────────────────────────────────────────┐   │
│  │  Landing Page (Carrd, Webflow)              │   │
│  │  OR                                          │   │
│  │  Form (Typeform, Google Forms)              │   │
│  │  OR                                          │   │
│  │  Chatbot (Intercom, Crisp)                  │   │
│  └──────────────────────┬──────────────────────┘   │
│                         │                           │
│  ─────────────────────────────────────────────────  │
│                         │                           │
│  AUTOMATION LAYER       │                           │
│  ┌──────────────────────┴──────────────────────┐   │
│  │            Zapier / Make / n8n              │   │
│  │                                              │   │
│  │  Triggers → Actions → Conditions            │   │
│  └──────────────────────┬──────────────────────┘   │
│                         │                           │
│  ─────────────────────────────────────────────────  │
│                         │                           │
│  TOOL LAYER             │                           │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐         │
│  │ Database │  │ Payment  │  │  Email   │         │
│  │ Airtable │  │ Stripe   │  │ Mailchimp│         │
│  │ Notion   │  │ PayPal   │  │ SendGrid │         │
│  └──────────┘  └──────────┘  └──────────┘         │
│                                                     │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐         │
│  │Scheduling│  │  Files   │  │  Chat    │         │
│  │Calendly  │  │Dropbox   │  │ Slack    │         │
│  │ Cal.com  │  │ Drive    │  │ Discord  │         │
│  └──────────┘  └──────────┘  └──────────┘         │
│                                                     │
└─────────────────────────────────────────────────────┘
```

## Common Mash-up Components

| Function | Tools |
|----------|-------|
| Frontend | Carrd, Webflow, Framer, Softr |
| Database | Airtable, Notion, Google Sheets |
| Forms | Typeform, Tally, JotForm |
| Payment | Stripe, Gumroad, Lemon Squeezy |
| Email | Mailchimp, ConvertKit, SendGrid |
| Automation | Zapier, Make, n8n |
| Scheduling | Calendly, Cal.com |
| Files | Dropbox, Google Drive |
| Chat | Slack, Discord, Intercom |

## Example Mash-ups

### Coaching Business
- Carrd (landing page)
- Calendly (scheduling)
- Stripe (payment)
- Zoom (delivery)
- Notion (client tracking)
- Zapier (connecting everything)

### Marketplace
- Webflow (frontend)
- Airtable (listings database)
- Stripe (payments)
- Mailchimp (notifications)
- Make (automation)

### SaaS MVP
- Softr (frontend from Airtable)
- Airtable (database + logic)
- Stripe (billing)
- Zapier (integrations)

## When to Move from Mash-up to Custom

| Signal | What It Means |
|--------|---------------|
| Automation limits hit | Scale requires custom code |
| Too much manual work | Automation gaps need filling |
| Users hitting friction | UX needs improvement |
| Costs adding up | Tool fees exceeding dev cost |
| Unique features needed | No tools do what you need |

## Best Practices

### ✅ Do:
- Start with the simplest possible stack
- Document all automations
- Have manual fallbacks
- Monitor for failures
- Track costs carefully

### ❌ Don't:
- Over-complicate the mash-up
- Ignore automation failures
- Forget to test end-to-end
- Skip user feedback
- Stay on mash-up too long
