# Supabase Database Setup

## Quick Start

### 1. Create Supabase Project

1. Go to [supabase.com](https://supabase.com) and sign up/login
2. Click "New Project"
3. Configure:
   - **Name:** `os-research-engine`
   - **Database Password:** Generate a strong password (save it!)
   - **Region:** Singapore (closest to Vietnam)
4. Wait for project to provision (~2 minutes)

### 2. Run Schema Migration

1. In Supabase Dashboard, go to **SQL Editor**
2. Click **New Query**
3. Copy contents of `schema.sql` and paste
4. Click **Run** (or Cmd+Enter)

### 3. Get API Credentials

Go to **Settings → API** and note:
- **Project URL:** `https://xxxxx.supabase.co`
- **anon public key:** `eyJhbGciOiJIUzI1NiIs...`
- **service_role key:** `eyJhbGciOiJIUzI1NiIs...` (keep secret!)

### 4. Configure Environment

Add to your shell profile (`~/.zshrc` or `~/.bashrc`):

```bash
export SUPABASE_URL="https://your-project.supabase.co"
export SUPABASE_ANON_KEY="your-anon-key"
export SUPABASE_SERVICE_KEY="your-service-role-key"
```

Then reload: `source ~/.zshrc`

---

## Schema Overview

```
┌─────────────────────────────────────────────────────────────────────────┐
│                              PROJECTS                                    │
│  (name, value_proposition, status, metrics)                             │
└────────────────────────────────┬────────────────────────────────────────┘
                                 │
          ┌──────────────────────┼──────────────────────┐
          │                      │                      │
          ▼                      ▼                      ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│      VPC        │    │      BMC        │    │   HYPOTHESES    │
│ (jobs, pains,   │    │ (9 building     │    │ (statement,     │
│  gains, map)    │    │  blocks)        │    │  type, quadrant)│
└─────────────────┘    └─────────────────┘    └────────┬────────┘
                                                       │
                                              ┌────────▼────────┐
                                              │   EXPERIMENTS   │
                                              │ (test card,     │
                                              │  status, cost)  │
                                              └────────┬────────┘
                                                       │
                                              ┌────────▼────────┐
                                              │    EVIDENCE     │
                                              │ (data, strength,│
                                              │  supports?)     │
                                              └────────┬────────┘
                                                       │
                                              ┌────────▼────────┐
                                              │   LEARNINGS     │
                                              │ (insight,       │
                                              │  next steps)    │
                                              └─────────────────┘

Additional tables:
├── sessions (daily work logs)
├── market_research (TAM/SAM/SOM, competitors)
└── social_listening (discovered jobs/pains/gains)
```

---

## Tables Reference

| Table | Purpose | Key Fields |
|-------|---------|------------|
| `projects` | Top-level ventures | name, value_proposition, status |
| `hypotheses` | Testable assumptions | statement, type, quadrant, status |
| `experiments` | Test cards | description, metric, criteria, status |
| `evidence` | Data from experiments | description, strength, supports_hypothesis |
| `learnings` | Insights from evidence | insight, action_required, next_steps |
| `value_proposition_canvas` | VPC data | jobs, pains, gains, products, relievers |
| `business_model_canvas` | BMC data | 9 building blocks as JSON arrays |
| `market_research` | Market sizing | TAM, SAM, SOM, competitors |
| `social_listening` | Research findings | topics, discovered jobs/pains/gains |
| `sessions` | Work logs | date, summary, next_steps |

---

## Key Enums

### hypothesis_type
- `desirability` — Market Risk: "Do they want this?"
- `feasibility` — Infrastructure Risk: "Can we do this?"
- `viability` — Financial Risk: "Should we do this?"

### hypothesis_quadrant
- `experiment` — Important + No Evidence → Test immediately
- `share` — Important + Have Evidence → Validate evidence
- `defer` — Unimportant + No Evidence → Address later
- `monitor` — Unimportant + Have Evidence → Keep on radar

### experiment_type
33 types from the experiment library (customer_interview, landing_page, presale, etc.)

### evidence_strength
- `very_weak` → `weak` → `medium` → `strong` → `very_strong`

---

## Example Queries

### Get all hypotheses to test for a project
```sql
SELECT * FROM hypotheses
WHERE project_id = 'uuid-here'
AND quadrant = 'experiment'
ORDER BY priority DESC;
```

### Get project dashboard
```sql
SELECT * FROM project_dashboard
WHERE slug = 'xanhsm-programmatic-taxi-ads';
```

### Get hypothesis with evidence counts
```sql
SELECT * FROM hypothesis_priority
WHERE project_id = 'uuid-here';
```

### Insert a new hypothesis
```sql
INSERT INTO hypotheses (project_id, statement, type, quadrant, priority)
VALUES (
    'project-uuid',
    'We believe that FMCG brands will allocate 10% of OOH budget to a pilot',
    'desirability',
    'experiment',
    1
);
```

---

## Using with Claude Code

Once the MCP server is configured (see `/database/mcp-server/`), you can:

```
/db query "SELECT * FROM projects"
/db insert hypotheses {...}
/db update experiments SET status = 'completed' WHERE id = '...'
```

---

## Backup & Export

### Export all data
```sql
-- In Supabase SQL Editor
COPY (SELECT * FROM projects) TO '/tmp/projects.csv' CSV HEADER;
```

### Via CLI
```bash
# Install Supabase CLI
brew install supabase/tap/supabase

# Login
supabase login

# Dump database
supabase db dump -p your-password > backup.sql
```

---

## Troubleshooting

### RLS blocking queries
If you're getting empty results, check Row Level Security:
```sql
-- Temporarily disable for testing
ALTER TABLE projects DISABLE ROW LEVEL SECURITY;
```

### Reset database
```sql
-- Drop all tables (careful!)
DROP SCHEMA public CASCADE;
CREATE SCHEMA public;
-- Then re-run schema.sql
```
