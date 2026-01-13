-- ============================================================================
-- OS Research Engine Database Schema
-- Supabase (PostgreSQL)
-- Version: 1.0.0
-- Created: 2025-12-08
-- ============================================================================

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ============================================================================
-- ENUMS
-- ============================================================================

-- Hypothesis types based on Testing Business Ideas framework
CREATE TYPE hypothesis_type AS ENUM (
    'desirability',   -- Market Risk: "Do they want this?"
    'feasibility',    -- Infrastructure Risk: "Can we do this?"
    'viability'       -- Financial Risk: "Should we do this?"
);

-- Assumptions Map quadrants
CREATE TYPE hypothesis_quadrant AS ENUM (
    'experiment',     -- Important + No Evidence → Test immediately
    'share',          -- Important + Have Evidence → Validate evidence
    'defer',          -- Unimportant + No Evidence → Address later
    'monitor'         -- Unimportant + Have Evidence → Keep on radar
);

-- Hypothesis validation status
CREATE TYPE validation_status AS ENUM (
    'untested',
    'testing',
    'validated',
    'invalidated',
    'pivoted'
);

-- Experiment types (from experiment library)
CREATE TYPE experiment_type AS ENUM (
    -- Discovery (01-07)
    'customer_interview',
    'expert_interview',
    'partner_interview',
    'day_in_the_life',
    'discovery_survey',
    'online_research',
    'discussion_forums',
    -- Validation (08-13)
    'data_analytics',
    'feature_stub',
    'button_to_nowhere',
    '404_test',
    'landing_page',
    'email_campaign',
    -- CTA Experiments (14-19)
    'split_ab_test',
    'crowdfunding',
    'presale',
    'letter_of_intent',
    'life_sized_prototype',
    'xp_spike',
    -- Business Design (20-33)
    'paper_prototype',
    'storyboard',
    'product_box',
    'speed_boat',
    'buy_a_feature',
    'card_sorting',
    'competitor_testing',
    'concept_testing',
    'simple_prototype',
    'concierge',
    'wizard_of_oz',
    'mvp_single_feature',
    'boomerang',
    'other'
);

-- Evidence strength levels
CREATE TYPE evidence_strength AS ENUM (
    'very_weak',      -- Opinions, beliefs
    'weak',           -- Surveys, stated preferences
    'medium',         -- Interviews, observed behavior in lab
    'strong',         -- Real-world behavior, small investment
    'very_strong'     -- Pre-purchases, signed commitments
);

-- Experiment status
CREATE TYPE experiment_status AS ENUM (
    'planned',
    'in_progress',
    'completed',
    'cancelled',
    'blocked'
);

-- Project status
CREATE TYPE project_status AS ENUM (
    'ideation',
    'discovery',
    'validation',
    'scaling',
    'paused',
    'killed'
);

-- ============================================================================
-- CORE TABLES
-- ============================================================================

-- Projects: Top-level business ideas/ventures
CREATE TABLE projects (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(255) NOT NULL,
    slug VARCHAR(255) UNIQUE NOT NULL,
    description TEXT,
    value_proposition TEXT,
    status project_status DEFAULT 'ideation',

    -- Key metrics
    total_hypotheses INTEGER DEFAULT 0,
    validated_hypotheses INTEGER DEFAULT 0,
    total_experiments INTEGER DEFAULT 0,
    completed_experiments INTEGER DEFAULT 0,

    -- Metadata
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    archived_at TIMESTAMPTZ
);

-- Value Proposition Canvas
CREATE TABLE value_proposition_canvas (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE,

    -- Customer Profile
    customer_segment VARCHAR(255),
    customer_jobs JSONB DEFAULT '[]',      -- Array of jobs
    customer_pains JSONB DEFAULT '[]',     -- Array of pains
    customer_gains JSONB DEFAULT '[]',     -- Array of gains

    -- Value Map
    products_services JSONB DEFAULT '[]',  -- Array of products/services
    pain_relievers JSONB DEFAULT '[]',     -- Array of pain relievers
    gain_creators JSONB DEFAULT '[]',      -- Array of gain creators

    -- Fit assessment
    fit_score INTEGER CHECK (fit_score >= 0 AND fit_score <= 100),
    fit_notes TEXT,

    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Business Model Canvas
CREATE TABLE business_model_canvas (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE,

    -- 9 Building Blocks (each is array of sticky notes)
    customer_segments JSONB DEFAULT '[]',
    value_propositions JSONB DEFAULT '[]',
    channels JSONB DEFAULT '[]',
    customer_relationships JSONB DEFAULT '[]',
    revenue_streams JSONB DEFAULT '[]',
    key_resources JSONB DEFAULT '[]',
    key_activities JSONB DEFAULT '[]',
    key_partnerships JSONB DEFAULT '[]',
    cost_structure JSONB DEFAULT '[]',

    -- Version tracking
    version INTEGER DEFAULT 1,
    notes TEXT,

    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Hypotheses
CREATE TABLE hypotheses (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE,

    -- Core hypothesis
    statement TEXT NOT NULL,  -- "We believe that..."
    competing_statement TEXT, -- Competing hypothesis to avoid confirmation bias

    -- Classification
    type hypothesis_type NOT NULL,
    quadrant hypothesis_quadrant NOT NULL,
    priority INTEGER DEFAULT 0,  -- Higher = more important

    -- Source (where this hypothesis came from)
    source_canvas VARCHAR(50),  -- 'vpc', 'bmc', 'research'
    source_component VARCHAR(100),  -- e.g., 'customer_pains', 'key_partnerships'

    -- Validation
    status validation_status DEFAULT 'untested',
    confidence INTEGER CHECK (confidence >= 0 AND confidence <= 100),

    -- Evidence summary
    supporting_evidence_count INTEGER DEFAULT 0,
    refuting_evidence_count INTEGER DEFAULT 0,

    -- Metadata
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    validated_at TIMESTAMPTZ
);

-- Experiments (Test Cards)
CREATE TABLE experiments (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    hypothesis_id UUID REFERENCES hypotheses(id) ON DELETE CASCADE,
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE,

    -- Test Card fields
    name VARCHAR(255) NOT NULL,
    experiment_type experiment_type NOT NULL,
    description TEXT,  -- "To verify that, we will..."
    metric TEXT,       -- "And measure..."
    criteria TEXT,     -- "We are right if..."

    -- Execution details
    assigned_to VARCHAR(255),
    status experiment_status DEFAULT 'planned',

    -- Timeline
    planned_start_date DATE,
    planned_end_date DATE,
    actual_start_date DATE,
    actual_end_date DATE,
    duration_days INTEGER,

    -- Cost
    estimated_cost DECIMAL(10, 2),
    actual_cost DECIMAL(10, 2),
    currency VARCHAR(3) DEFAULT 'USD',

    -- Quality indicators
    criticality INTEGER CHECK (criticality >= 1 AND criticality <= 3),
    data_reliability INTEGER CHECK (data_reliability >= 1 AND data_reliability <= 3),
    time_required INTEGER CHECK (time_required >= 1 AND time_required <= 3),

    -- Results
    evidence_strength evidence_strength,
    result_summary TEXT,
    success BOOLEAN,  -- Did it meet criteria?

    -- Metadata
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    completed_at TIMESTAMPTZ
);

-- Evidence (from experiments)
CREATE TABLE evidence (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    experiment_id UUID REFERENCES experiments(id) ON DELETE CASCADE,
    hypothesis_id UUID REFERENCES hypotheses(id) ON DELETE CASCADE,

    -- Evidence details
    type VARCHAR(100),  -- 'quote', 'behavior', 'conversion_rate', 'order', 'purchase'
    description TEXT NOT NULL,
    raw_data JSONB,  -- Store any structured data

    -- Classification
    strength evidence_strength NOT NULL,
    supports_hypothesis BOOLEAN NOT NULL,  -- true = supports, false = refutes

    -- Context
    source VARCHAR(255),  -- Where/who the evidence came from
    collected_at TIMESTAMPTZ,

    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Learning Cards (Insights)
CREATE TABLE learnings (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE,
    experiment_id UUID REFERENCES experiments(id) ON DELETE SET NULL,
    hypothesis_id UUID REFERENCES hypotheses(id) ON DELETE SET NULL,

    -- Learning Card fields
    name VARCHAR(255) NOT NULL,
    insight TEXT NOT NULL,

    -- Evidence summary
    evidence_ids UUID[],  -- Array of evidence IDs used
    overall_evidence_strength evidence_strength,

    -- Hypothesis verdict
    hypothesis_supported BOOLEAN,
    confidence_level INTEGER CHECK (confidence_level >= 0 AND confidence_level <= 100),

    -- Actions
    action_required TEXT,
    next_steps JSONB DEFAULT '[]',  -- Array of next steps
    pivot_recommendation TEXT,

    -- Metadata
    learned_by VARCHAR(255),
    learned_at TIMESTAMPTZ DEFAULT NOW(),
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Research Sessions
CREATE TABLE sessions (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE,

    -- Session details
    date DATE NOT NULL,
    title VARCHAR(255),
    summary TEXT,

    -- Work done
    hypotheses_created INTEGER DEFAULT 0,
    experiments_designed INTEGER DEFAULT 0,
    experiments_completed INTEGER DEFAULT 0,
    learnings_captured INTEGER DEFAULT 0,

    -- Artifacts
    files_created JSONB DEFAULT '[]',  -- Array of file paths
    deliverables JSONB DEFAULT '[]',   -- Array of deliverable descriptions

    -- Next steps
    next_steps JSONB DEFAULT '[]',
    blockers JSONB DEFAULT '[]',

    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Market Research
CREATE TABLE market_research (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE,

    -- Market sizing
    tam DECIMAL(15, 2),  -- Total Addressable Market
    sam DECIMAL(15, 2),  -- Serviceable Addressable Market
    som DECIMAL(15, 2),  -- Serviceable Obtainable Market
    currency VARCHAR(3) DEFAULT 'USD',
    market_year INTEGER,

    -- Growth
    cagr DECIMAL(5, 2),  -- Compound Annual Growth Rate %
    growth_notes TEXT,

    -- Competitive landscape
    competitors JSONB DEFAULT '[]',  -- Array of competitor objects
    competitive_gap TEXT,

    -- Data sources
    sources JSONB DEFAULT '[]',

    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Social Listening Findings
CREATE TABLE social_listening (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    project_id UUID REFERENCES projects(id) ON DELETE CASCADE,

    -- Search context
    topic VARCHAR(255) NOT NULL,
    platforms JSONB DEFAULT '[]',  -- Array of platform names
    search_date DATE,

    -- VPC mapping
    jobs_discovered JSONB DEFAULT '[]',
    pains_discovered JSONB DEFAULT '[]',
    gains_discovered JSONB DEFAULT '[]',
    workarounds JSONB DEFAULT '[]',

    -- Raw data
    key_quotes JSONB DEFAULT '[]',
    source_urls JSONB DEFAULT '[]',

    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================================
-- INDEXES
-- ============================================================================

CREATE INDEX idx_hypotheses_project ON hypotheses(project_id);
CREATE INDEX idx_hypotheses_quadrant ON hypotheses(quadrant);
CREATE INDEX idx_hypotheses_status ON hypotheses(status);
CREATE INDEX idx_hypotheses_type ON hypotheses(type);

CREATE INDEX idx_experiments_project ON experiments(project_id);
CREATE INDEX idx_experiments_hypothesis ON experiments(hypothesis_id);
CREATE INDEX idx_experiments_status ON experiments(status);

CREATE INDEX idx_evidence_experiment ON evidence(experiment_id);
CREATE INDEX idx_evidence_hypothesis ON evidence(hypothesis_id);

CREATE INDEX idx_learnings_project ON learnings(project_id);
CREATE INDEX idx_sessions_project ON sessions(project_id);
CREATE INDEX idx_sessions_date ON sessions(date);

-- ============================================================================
-- TRIGGERS
-- ============================================================================

-- Auto-update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_projects_updated_at
    BEFORE UPDATE ON projects
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_hypotheses_updated_at
    BEFORE UPDATE ON hypotheses
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_experiments_updated_at
    BEFORE UPDATE ON experiments
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_vpc_updated_at
    BEFORE UPDATE ON value_proposition_canvas
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_bmc_updated_at
    BEFORE UPDATE ON business_model_canvas
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

CREATE TRIGGER update_market_research_updated_at
    BEFORE UPDATE ON market_research
    FOR EACH ROW EXECUTE FUNCTION update_updated_at();

-- Auto-update project hypothesis counts
CREATE OR REPLACE FUNCTION update_project_hypothesis_counts()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE projects SET
        total_hypotheses = (
            SELECT COUNT(*) FROM hypotheses WHERE project_id = COALESCE(NEW.project_id, OLD.project_id)
        ),
        validated_hypotheses = (
            SELECT COUNT(*) FROM hypotheses
            WHERE project_id = COALESCE(NEW.project_id, OLD.project_id)
            AND status = 'validated'
        )
    WHERE id = COALESCE(NEW.project_id, OLD.project_id);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_hypothesis_counts
    AFTER INSERT OR UPDATE OR DELETE ON hypotheses
    FOR EACH ROW EXECUTE FUNCTION update_project_hypothesis_counts();

-- Auto-update project experiment counts
CREATE OR REPLACE FUNCTION update_project_experiment_counts()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE projects SET
        total_experiments = (
            SELECT COUNT(*) FROM experiments WHERE project_id = COALESCE(NEW.project_id, OLD.project_id)
        ),
        completed_experiments = (
            SELECT COUNT(*) FROM experiments
            WHERE project_id = COALESCE(NEW.project_id, OLD.project_id)
            AND status = 'completed'
        )
    WHERE id = COALESCE(NEW.project_id, OLD.project_id);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_experiment_counts
    AFTER INSERT OR UPDATE OR DELETE ON experiments
    FOR EACH ROW EXECUTE FUNCTION update_project_experiment_counts();

-- ============================================================================
-- ROW LEVEL SECURITY (RLS)
-- ============================================================================

-- Enable RLS on all tables
ALTER TABLE projects ENABLE ROW LEVEL SECURITY;
ALTER TABLE hypotheses ENABLE ROW LEVEL SECURITY;
ALTER TABLE experiments ENABLE ROW LEVEL SECURITY;
ALTER TABLE evidence ENABLE ROW LEVEL SECURITY;
ALTER TABLE learnings ENABLE ROW LEVEL SECURITY;
ALTER TABLE sessions ENABLE ROW LEVEL SECURITY;
ALTER TABLE value_proposition_canvas ENABLE ROW LEVEL SECURITY;
ALTER TABLE business_model_canvas ENABLE ROW LEVEL SECURITY;
ALTER TABLE market_research ENABLE ROW LEVEL SECURITY;
ALTER TABLE social_listening ENABLE ROW LEVEL SECURITY;

-- For now, allow all authenticated users full access
-- (You can make this more granular later with team-based access)
CREATE POLICY "Allow all for authenticated users" ON projects
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Allow all for authenticated users" ON hypotheses
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Allow all for authenticated users" ON experiments
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Allow all for authenticated users" ON evidence
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Allow all for authenticated users" ON learnings
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Allow all for authenticated users" ON sessions
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Allow all for authenticated users" ON value_proposition_canvas
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Allow all for authenticated users" ON business_model_canvas
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Allow all for authenticated users" ON market_research
    FOR ALL USING (auth.role() = 'authenticated');

CREATE POLICY "Allow all for authenticated users" ON social_listening
    FOR ALL USING (auth.role() = 'authenticated');

-- ============================================================================
-- VIEWS
-- ============================================================================

-- Project dashboard view
CREATE VIEW project_dashboard AS
SELECT
    p.id,
    p.name,
    p.slug,
    p.status,
    p.total_hypotheses,
    p.validated_hypotheses,
    p.total_experiments,
    p.completed_experiments,
    ROUND(
        CASE WHEN p.total_hypotheses > 0
        THEN (p.validated_hypotheses::DECIMAL / p.total_hypotheses) * 100
        ELSE 0 END, 1
    ) AS validation_rate,
    (SELECT COUNT(*) FROM hypotheses h WHERE h.project_id = p.id AND h.quadrant = 'experiment') AS hypotheses_to_test,
    (SELECT COUNT(*) FROM experiments e WHERE e.project_id = p.id AND e.status = 'in_progress') AS active_experiments,
    p.created_at,
    p.updated_at
FROM projects p
WHERE p.archived_at IS NULL;

-- Hypothesis priority view (for Assumptions Map)
CREATE VIEW hypothesis_priority AS
SELECT
    h.*,
    p.name AS project_name,
    (SELECT COUNT(*) FROM experiments e WHERE e.hypothesis_id = h.id) AS experiment_count,
    (SELECT COUNT(*) FROM evidence ev WHERE ev.hypothesis_id = h.id AND ev.supports_hypothesis = true) AS supporting_count,
    (SELECT COUNT(*) FROM evidence ev WHERE ev.hypothesis_id = h.id AND ev.supports_hypothesis = false) AS refuting_count
FROM hypotheses h
JOIN projects p ON h.project_id = p.id
ORDER BY
    CASE h.quadrant
        WHEN 'experiment' THEN 1
        WHEN 'share' THEN 2
        WHEN 'defer' THEN 3
        WHEN 'monitor' THEN 4
    END,
    h.priority DESC;

-- ============================================================================
-- SAMPLE DATA (Optional - for testing)
-- ============================================================================

-- Uncomment to insert sample data for the XanhSM project:

/*
INSERT INTO projects (name, slug, description, value_proposition, status)
VALUES (
    'XanhSM Programmatic Taxi Ads',
    'xanhsm-programmatic-taxi-ads',
    'Programmatic advertising platform for XanhSM electric taxi screens in Vietnam',
    'Helping advertisers reach the right people with measurable, geo-targeted ads on XanhSM''s 30,000+ electric taxi screens',
    'discovery'
);
*/
