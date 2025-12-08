# Feature Stub

Tính năng giả lập / sơ khai

## Purpose

A small test of an upcoming feature, including the beginning of the experience, usually in the form of a button.

**✅ Ideal for:** Quickly validating the desirability of a new feature for an existing product

**❌ Not ideal for:** Testing critical core functionality for your product

## Preparation

1. **Decide where to integrate** the feature stub - best placed in a part of your product where customers need it most in their workflow
2. **Define duration and schedule** for the feature stub
3. **Create the feature stub** using visual styling consistent with the rest of the product
4. **When clicked:** Launch a popup indicating the feature isn't complete
5. **Include "Learn More" link** to see if people are interested enough to click further
   - You can optionally display a survey about interest level and include an email signup form
6. **Integrate analytics** to track views and clicks
7. **Create a feature toggle** allowing you to quickly turn it on and off - **This is very important!**

## Execution

1. **Turn on** your feature stub
2. **Monitor** link usage closely, hourly
3. **Turn off** feature stub when you end the schedule

## Analysis

Calculate conversion rate on your button, as well as conversion rate through the Learn More link and survey.

Did these meet your success criteria?

Review findings with your team to determine if this feature is still worth pursuing.

## Cost

💰 **Very Low** (1/5)

Usually very cheap since you're not building the entire feature - just the entry point.

## Time

| Phase | Duration |
|-------|----------|
| Setup | A few hours |
| Running | Never more than 1-3 days |

If setup takes longer than a few hours, you may need to rethink your architecture when running experiments.

**Running time must be short** - designed as a quick experiment to rapidly collect evidence. Anything longer will frustrate customers who will keep expecting it to work.

## Evidence Strength

### Button Views & Clicks - Weak (2/5)
- **Unique Views:** Number of people who saw the button
- **Clicks:** Number of people who clicked
- **CTR Target:** 15%

Button views and clicks are relatively weak evidence, though they show signs of interest in the feature.

### Learn More Clicks - Medium (3/5)
- **Conversion Rate** = clicks on link ÷ unique views on "Learn More" button
- **CTR Target:** 15%

Clicking "Learn More" is slightly stronger evidence than simply closing the popup when it appears.

### Survey Completions - Strong (4/5)
- **Conversion Rate** = completions ÷ unique Learn More clicks
- **Target:** 3%

You'll gain valuable lessons from people who voluntarily click through and fill out a survey about a feature they want to see in the product.

## Skills Required

- Design / Product / Technology

You need to be able to design a button that fits the existing product. You also need the button to launch a popup indicating the feature isn't ready and optionally inviting customers to fill out a survey.

Analytics are critical - you need to measure performance.

## Requirements

### Existing Product
Feature stubs require a product that already has daily active users. Without a stable user base, it's hard to gauge customer interest. They must see it in the context of the product for reliable evidence.

### Integration and Analytics
Feature stubs need to be turned on and off immediately. Make sure you have this capability and it works before launching.

You also need analytics to measure feature interest.

## Feature Stub Flow

```
┌─────────────────────────────────────────────────────┐
│               FEATURE STUB FLOW                     │
├─────────────────────────────────────────────────────┤
│                                                     │
│  ┌─────────────────────────────────────────────┐   │
│  │           EXISTING PRODUCT UI               │   │
│  │                                              │   │
│  │   ┌──────────────────┐                      │   │
│  │   │  NEW FEATURE ✨  │  ◄── Feature Stub    │   │
│  │   └────────┬─────────┘                      │   │
│  └────────────┼─────────────────────────────────┘   │
│               │                                     │
│               ▼ Click                               │
│  ┌─────────────────────────────────────────────┐   │
│  │              POPUP                          │   │
│  │                                              │   │
│  │  "This feature is coming soon!"             │   │
│  │                                              │   │
│  │  ┌────────────────┐                         │   │
│  │  │  Learn More    │  ◄── Track clicks       │   │
│  │  └────────────────┘                         │   │
│  │                                              │   │
│  │  [X] Close                                  │   │
│  └────────────────────────────────────────────┘   │
│               │                                     │
│               ▼ Click Learn More                    │
│  ┌─────────────────────────────────────────────┐   │
│  │           INTEREST SURVEY                   │   │
│  │                                              │   │
│  │  How important is this feature to you?      │   │
│  │  ○ Critical  ○ Nice to have  ○ Not needed   │   │
│  │                                              │   │
│  │  Email (optional): [________________]       │   │
│  │                                              │   │
│  │  ┌────────────────┐                         │   │
│  │  │    Submit      │                         │   │
│  │  └────────────────┘                         │   │
│  └─────────────────────────────────────────────┘   │
│                                                     │
└─────────────────────────────────────────────────────┘
```

## Implementation Checklist

### Before Launch
- [ ] Feature stub designed to match existing UI
- [ ] Popup message written
- [ ] Learn More link functional
- [ ] Survey created (optional)
- [ ] Analytics integrated
- [ ] Feature toggle working
- [ ] Start/end dates defined
- [ ] Success criteria defined

### During Test
- [ ] Monitor hourly
- [ ] Document unexpected behavior
- [ ] Note qualitative feedback

### After Test
- [ ] Disable feature stub
- [ ] Calculate conversion rates
- [ ] Review with team
- [ ] Decide: build, iterate, or abandon

## Success Criteria Example

| Metric | Target | Actual | Result |
|--------|--------|--------|--------|
| Button CTR | >15% | | |
| Learn More CTR | >15% | | |
| Survey Completion | >3% | | |
| Positive Interest | >70% | | |

## Best Practices

### ✅ Do:
- Place in high-traffic, relevant area
- Make it look like a real feature
- Have a kill switch ready
- Monitor closely during test
- Set clear time limits

### ❌ Don't:
- Run for more than a few days
- Test during low-traffic periods
- Ignore frustrated user feedback
- Forget to communicate it's a test internally
- Leave the stub active after testing
