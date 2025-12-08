# A/B Testing

Kiểm chứng phân tách - A/B Test

## Purpose

A method of comparing two versions, where we control variable A and change B, to determine which version performs better.

**✅ Ideal for:** Testing different versions of value propositions, prices, and features to see what works best with customers

## Preparation

1. **Identify customer behavior** you want to improve (e.g., progression through a funnel)
2. **Create Control A** (your baseline)
3. **Identify baseline** for Control A and document it
4. **Create Variation B** (your test)
5. **Determine measurable improvement** you want to observe in Variation B
6. **Determine sample size** and confidence percentage

**Tool:** Framer A/B Testing Tool

## Execution

- Run your A/B test by directing 50% of traffic to Control A and 50% to Variation B, randomly

## Analysis

1. Review results once sample size is met and confidence level achieved
2. Did you meet your confidence level?
   - **If yes:** Consider replacing Control A with Variation B (B becomes the new control)
   - **If no:** Run another A/B test with a different Variation B

## Do's and Don'ts

### ✅ Do:
- Use quotes from customer interviews to A/B test your Value Proposition
- Contact people who converted to understand why
- Use an A/B Test calculator to determine required sample size for your confidence level
- Test completely different ideas, especially early on (yields deeper insights than incremental tests)

### ❌ Don't:
- Stop your A/B test early because you like or dislike preliminary results
- Forget to maintain KPI measurements you don't want to decline
- Run too many A/B tests simultaneously or combined with other experiments
- Give up if your first A/B test doesn't yield notable results

## Cost

💰 **Low** (2/5)

- Digital online tools allow A/B testing without much programming knowledge
- Copy and paste a script into your page or app, then configure in the product
- Similar to using a word processor - drag, drop, and type
- Cost increases if you plan to build custom hardware or print materials (need to create two different physical versions)

## Time

| Phase | Duration |
|-------|----------|
| Setup | Short (especially with digital products using existing tools) |
| Running | Days to weeks for statistically significant data |

Longer setup if you need to physically create two different experiment versions.

## Evidence Strength

⚡ **Medium** (3/5)

### Control A Metrics
- **Traffic** directed to Control A
- **Control A Behavior** (specific actions)
- **Control A Conversion Rate** = people directed to Control A ÷ number of actions

Use historical data if possible to predict baseline conversion rate.

### Variation B Metrics
- **Variation B Behavior** (specific actions)
- **Variation B Conversion Rate** = people directed to Variation B ÷ number of actions

Determine measurable impact you want Variation B to have on conversion percentage.

### Evidence Quality
- Medium strength - customers don't realize they're participating in an A/B test
- Target minimum 80% confidence, ideally 98% (varies depending on what you're testing)
- Use an online A/B test calculator for guidance throughout the process

## Skills Required

- Design / Product / Technology / Data

You need capabilities to:
- Identify what to test
- Establish expected baseline for Control A
- Determine needed improvements for Variation B
- Design experiments visually consistent with overall theme
- Technical integration for software products
- Analyze results to inform next experiment

## Requirements

**High Traffic**

A/B testing requires significant traffic to generate reliable evidence.

- Traffic is randomly selected to show Control A or Variation B
- With little or no traffic, it takes a long time to conclude which version performs better

## Sample Size Calculator

```
┌─────────────────────────────────────────────────────┐
│             A/B TEST SAMPLE SIZE                    │
├─────────────────────────────────────────────────────┤
│                                                     │
│  Baseline Conversion Rate: ____%                    │
│  Minimum Detectable Effect: ____%                   │
│  Statistical Significance: 95% (recommended)        │
│  Power: 80% (recommended)                           │
│                                                     │
│  ═══════════════════════════════════════════════   │
│                                                     │
│  Required Sample Size: _____ per variation          │
│                                                     │
│  Online calculators:                                │
│  • Optimizely Sample Size Calculator               │
│  • VWO Sample Size Calculator                      │
│  • Evan Miller's Sample Size Calculator            │
│                                                     │
└─────────────────────────────────────────────────────┘
```

## Test Prioritization Framework

| Test Idea | Impact (1-5) | Confidence (1-5) | Ease (1-5) | ICE Score |
|-----------|--------------|------------------|------------|-----------|
| New headline | 4 | 3 | 5 | 12 |
| Different price | 5 | 2 | 4 | 11 |
| CTA button color | 2 | 4 | 5 | 11 |
| New hero image | 3 | 3 | 4 | 10 |

*ICE Score = Impact + Confidence + Ease (higher is better)*

## What to A/B Test

### High Impact Tests
- Headlines and value propositions
- Pricing and offers
- Call-to-action buttons (text, color, placement)
- Page layout and structure
- Form fields (number, order)

### Medium Impact Tests
- Images and visuals
- Social proof placement
- Feature descriptions
- Navigation options

### Low Impact Tests (often not worth testing)
- Minor copy changes
- Font sizes
- Button corner radius
- Icon styles

## Common Mistakes

| Mistake | Problem | Solution |
|---------|---------|----------|
| Stopping early | Invalid results | Wait for full sample size |
| Testing too many things | Can't attribute results | One change per test |
| Ignoring segments | Missing insights | Analyze by user segment |
| No hypothesis | Random testing | Start with clear hypothesis |
| Wrong metric | Misleading results | Focus on business metric |
