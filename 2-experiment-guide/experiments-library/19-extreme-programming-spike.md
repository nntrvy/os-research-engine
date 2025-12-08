# Extreme Programming Spike

## Purpose

A simple program to explore potential technical or design solutions.

The term "Spike" originates from mountain climbing and railroads. It's a task that requires you to stop other tasks and do it, so you can continue making viable progress.

**✅ Ideal for:** Quickly assessing whether your solution is feasible, typically used for software products

**❌ Not ideal for:** Scaling your solution, as it's often thrown away and recreated afterward

## Preparation

1. **Define acceptance criteria**
2. **Define timeframe** for the spike
3. **Plan start and end dates**

## Execution

1. **Write code** to achieve acceptance criteria
2. **Consider pair programming** with someone else to help navigate code and create any necessary tests

## Analysis

Share findings related to:
- Performance
- Complexity
- Output

Determine whether acceptance criteria were successfully met.

Use learnings to create, borrow, or buy the necessary solution.

## Cost

💰 **Low** (2/5)

Relatively cheap and much cheaper than building an entire solution - only to find out at the end whether it's feasible.

## Time

| Phase | Duration |
|-------|----------|
| Setup | About a day |
| Running | 1 day to 2 weeks |

Setup time is needed to research available methods and is typically done by someone with technical expertise.

Running is a time-boxed, all-out effort for a reason - you're focusing on validating feasibility for a specific solution.

## Evidence Strength

⚡ **Very Strong** (5/5)

### Acceptance Criteria
- The acceptance criteria defined for the spike have been clarified
- Did the code perform the task and create the necessary output?

### Recommendation
- People working on the spike provide their recommendation about learning curve when using the software and whether it's suitable for your purpose in creating the solution

Spikes create strong evidence: you're working with code, and they represent a larger solution.

## Skills Required

- Product / Technology / Data

**Product:** Ability to clearly communicate how the solution creates the Value Proposition. This includes answering questions from the team and customer expectations related to speed and quality.

**Data:** Helpful if there are aspects related to visualization or analysis for the spike.

**Technology/Software:** The most important capability - spikes typically work with code to create a signal for the next course of action.

## Requirements

### Acceptance Criteria
Before performing a spike, clearly define acceptance criteria and timeframe so everyone is clear on the goal before starting.

If not controlled, spikes can turn into endless research projects.

## Spike Process

```
┌─────────────────────────────────────────────────────┐
│               XP SPIKE PROCESS                      │
├─────────────────────────────────────────────────────┤
│                                                     │
│  1. DEFINE                                          │
│     └── What question are we answering?            │
│     └── What are acceptance criteria?              │
│     └── What's the time box?                       │
│                                                     │
│          │                                          │
│          ▼                                          │
│                                                     │
│  2. RESEARCH                                        │
│     └── Explore options                            │
│     └── Read documentation                         │
│     └── Look at examples                           │
│                                                     │
│          │                                          │
│          ▼                                          │
│                                                     │
│  3. PROTOTYPE                                       │
│     └── Write minimal code                         │
│     └── Focus on proving/disproving feasibility    │
│     └── Don't worry about production quality       │
│                                                     │
│          │                                          │
│          ▼                                          │
│                                                     │
│  4. EVALUATE                                        │
│     └── Did it meet acceptance criteria?           │
│     └── What did we learn?                         │
│     └── What are the risks?                        │
│                                                     │
│          │                                          │
│          ▼                                          │
│                                                     │
│  5. RECOMMEND                                       │
│     └── Build (we can do it)                       │
│     └── Buy (use existing solution)               │
│     └── Abandon (not feasible)                    │
│                                                     │
└─────────────────────────────────────────────────────┘
```

## Spike Types

| Type | Purpose | Duration |
|------|---------|----------|
| Technical | Can we build this? | 1-3 days |
| Architectural | How should we structure this? | 2-5 days |
| Integration | Can these systems work together? | 1-3 days |
| Performance | Can we meet speed requirements? | 1-5 days |
| Algorithm | Can we solve this problem? | 1-7 days |

## Spike Card Template

```
┌─────────────────────────────────────────────────────┐
│                   SPIKE CARD                        │
├─────────────────────────────────────────────────────┤
│                                                     │
│  QUESTION:                                          │
│  Can we [technical/design challenge]?               │
│                                                     │
│  ACCEPTANCE CRITERIA:                               │
│  □ Criteria 1                                       │
│  □ Criteria 2                                       │
│  □ Criteria 3                                       │
│                                                     │
│  TIME BOX: ___ days                                 │
│                                                     │
│  ASSIGNED TO: _______________                       │
│                                                     │
│  ─────────────────────────────────────────────────  │
│                                                     │
│  RESULT: □ Feasible  □ Not Feasible  □ Needs More  │
│                                                     │
│  RECOMMENDATION:                                    │
│  □ Build   □ Buy   □ Abandon   □ More Research     │
│                                                     │
│  KEY LEARNINGS:                                     │
│  •                                                  │
│  •                                                  │
│  •                                                  │
│                                                     │
│  NEXT STEPS:                                        │
│  •                                                  │
│                                                     │
└─────────────────────────────────────────────────────┘
```

## Example Spike Questions

| Domain | Spike Question |
|--------|----------------|
| AI/ML | Can we achieve 90% accuracy with this model? |
| API | Can we integrate with their API in real-time? |
| Performance | Can we process 10k requests per second? |
| Mobile | Does this library work on both iOS and Android? |
| Security | Can we meet compliance requirements? |
| Database | Can this query run under 100ms at scale? |

## Spike vs. Prototype

| Aspect | Spike | Prototype |
|--------|-------|-----------|
| Purpose | Answer technical question | Validate design/UX |
| Output | Knowledge + recommendation | Functional demo |
| Quality | Throwaway code | May evolve into product |
| Duration | Days | Weeks |
| Audience | Dev team | Stakeholders/users |

## Best Practices

### ✅ Do:
- Time-box strictly
- Document learnings
- Pair program when possible
- Focus on the specific question
- Accept that code will be thrown away

### ❌ Don't:
- Let it become a full implementation
- Skip the research phase
- Work in isolation
- Forget to share results
- Gold-plate spike code

## Red Flags

| Warning Sign | What It Means |
|--------------|---------------|
| Spike exceeds time box | Scope too large or unclear |
| "Just a few more days" | Turning into implementation |
| No clear answer | Question was too vague |
| Perfect code | Over-engineering for a spike |
| No documentation | Learnings will be lost |
