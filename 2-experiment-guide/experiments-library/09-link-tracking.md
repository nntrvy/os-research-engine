# Link Tracking

Theo dõi liên kết

## Purpose

A unique, trackable hyperlink to get more detailed insights about your value proposition.

**✅ Ideal for:** Validating customer actions to collect quantitative data

**Example combinations:** Interviews, Online Ads, Landing Pages

## Preparation

1. **Identify where** you'll place the link
2. **Create a clear call-to-action** for the link
3. **Integrate analytics** to track views and clicks
4. **Create landing page** customers are directed to after clicking

## Execution

1. **Activate your link** and provide to customers
2. **Run for several days or weeks** to give people time to click

## Analysis

1. Calculate conversion on link click rate
2. Compare it with behavior on your landing page
3. Use learnings to refine and A/B test your link content

## Cost

💰 **Very Low** (1/5)

Most online web analytics, advertising, and email software provide the ability to track unique URL links.

## Time

| Phase | Duration |
|-------|----------|
| Setup | Short (if using existing software) |
| Running | Few weeks |

People need time to see and decide whether to click.

## Evidence Strength

⚡ **Medium** (3/5)

### Unique Views
- Number of people who saw your link

### Clicks
- Number of people who clicked your link

### Click-Through Rate (CTR)
- CTR = percentage of people who saw your link ÷ people who clicked your link
- CTR varies by industry - use industry guidelines to determine what's average for your experiment
- Reference: Perplexity Search for industry CTR benchmarks

Link clicks are medium evidence. You'll know what people do, but not why - unless you talk to them.

## Skills Required

- Technology / Data

Tracking a link doesn't require deep expertise since most software has built-in functionality. The ability you need is to create trackable links and interpret results afterward.

## Requirements

**Call-to-Action (CTA)**

Link tracking experiments won't truly succeed without a clear call-to-action and value proposition. You'll want to communicate this clearly in your content and visuals, while providing a link that takes customers to your website.

## Link Tracking Setup

```
┌─────────────────────────────────────────────────────┐
│                LINK TRACKING FLOW                   │
├─────────────────────────────────────────────────────┤
│                                                     │
│  ┌─────────────┐                                   │
│  │   SOURCE    │  Email, Social, Ad, Interview     │
│  └──────┬──────┘                                   │
│         │                                           │
│         ▼                                           │
│  ┌─────────────┐                                   │
│  │ TRACKED     │  Unique URL with UTM parameters   │
│  │ LINK        │  bit.ly/your-link                 │
│  └──────┬──────┘                                   │
│         │                                           │
│         ▼                                           │
│  ┌─────────────┐                                   │
│  │ LANDING     │  Page with next step CTA          │
│  │ PAGE        │                                   │
│  └──────┬──────┘                                   │
│         │                                           │
│         ▼                                           │
│  ┌─────────────┐                                   │
│  │ CONVERSION  │  Sign-up, Purchase, etc.          │
│  └─────────────┘                                   │
│                                                     │
└─────────────────────────────────────────────────────┘
```

## UTM Parameters

Use UTM parameters to track link sources:

```
https://yoursite.com/landing?
  utm_source=facebook
  &utm_medium=social
  &utm_campaign=launch
  &utm_content=video-ad
```

| Parameter | Purpose | Example |
|-----------|---------|---------|
| utm_source | Traffic source | facebook, email, interview |
| utm_medium | Marketing medium | social, email, cpc |
| utm_campaign | Campaign name | launch, test-a, spring |
| utm_content | Content variation | video-ad, text-ad |

## Link Tracking Tools

| Tool | Type | Cost |
|------|------|------|
| Bit.ly | Link shortener + analytics | Freemium |
| Google Analytics | UTM tracking | Free |
| Rebrandly | Branded short links | Freemium |
| ClickMeter | Advanced tracking | Paid |
| Pretty Links (WP) | WordPress plugin | Freemium |

## Metrics to Track

| Metric | Formula | Benchmark |
|--------|---------|-----------|
| Click-Through Rate | Clicks ÷ Views × 100 | Varies by channel |
| Conversion Rate | Conversions ÷ Clicks × 100 | 2-5% typical |
| Bounce Rate | Single-page sessions ÷ Total sessions | <50% good |
| Time on Page | Avg. time spent | >30s good |

## Best Practices

### ✅ Do:
- Use consistent UTM naming conventions
- Create unique links for each channel/experiment
- Set up goals in analytics before starting
- Test links before distributing
- Document all links in a tracking spreadsheet

### ❌ Don't:
- Use the same link across different channels
- Forget to track the landing page behavior
- Ignore mobile vs. desktop differences
- Assume clicks equal interest - follow up to learn why
