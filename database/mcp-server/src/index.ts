#!/usr/bin/env node
/**
 * OS Research Engine - Supabase MCP Server
 *
 * Provides database operations for Claude Code via MCP protocol.
 *
 * Tools:
 * - osr_list_projects: List all projects
 * - osr_get_project: Get project details with hypotheses/experiments
 * - osr_create_project: Create a new project
 * - osr_create_hypothesis: Add a hypothesis to a project
 * - osr_create_experiment: Add an experiment for a hypothesis
 * - osr_update_experiment_status: Update experiment status
 * - osr_record_evidence: Record evidence from an experiment
 * - osr_record_learning: Record a learning/insight
 * - osr_log_session: Log a work session
 * - osr_query: Run a custom SQL query (read-only)
 */

import { Server } from "@modelcontextprotocol/sdk/server/index.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import {
  CallToolRequestSchema,
  ListToolsRequestSchema,
} from "@modelcontextprotocol/sdk/types.js";
import { createClient, SupabaseClient } from "@supabase/supabase-js";

// Initialize Supabase client
const supabaseUrl = process.env.SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_KEY || process.env.SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error("Missing SUPABASE_URL or SUPABASE_SERVICE_KEY environment variables");
  process.exit(1);
}

const supabase: SupabaseClient = createClient(supabaseUrl, supabaseKey);

// Create MCP server
const server = new Server(
  {
    name: "osr-supabase",
    version: "1.0.0",
  },
  {
    capabilities: {
      tools: {},
    },
  }
);

// Define tools
server.setRequestHandler(ListToolsRequestSchema, async () => {
  return {
    tools: [
      {
        name: "osr_list_projects",
        description: "List all OS Research projects with their validation metrics",
        inputSchema: {
          type: "object",
          properties: {
            status: {
              type: "string",
              enum: ["ideation", "discovery", "validation", "scaling", "paused", "killed"],
              description: "Filter by project status"
            }
          }
        }
      },
      {
        name: "osr_get_project",
        description: "Get detailed project info including hypotheses and experiments",
        inputSchema: {
          type: "object",
          properties: {
            slug: {
              type: "string",
              description: "Project slug (e.g., 'xanhsm-programmatic-taxi-ads')"
            },
            include_hypotheses: {
              type: "boolean",
              default: true,
              description: "Include hypotheses list"
            },
            include_experiments: {
              type: "boolean",
              default: true,
              description: "Include experiments list"
            }
          },
          required: ["slug"]
        }
      },
      {
        name: "osr_create_project",
        description: "Create a new research project",
        inputSchema: {
          type: "object",
          properties: {
            name: { type: "string", description: "Project name" },
            slug: { type: "string", description: "URL-friendly slug" },
            description: { type: "string", description: "Project description" },
            value_proposition: { type: "string", description: "Value proposition statement" }
          },
          required: ["name", "slug"]
        }
      },
      {
        name: "osr_create_hypothesis",
        description: "Create a hypothesis for a project. Format: 'We believe that...'",
        inputSchema: {
          type: "object",
          properties: {
            project_slug: { type: "string", description: "Project slug" },
            statement: { type: "string", description: "Hypothesis statement starting with 'We believe that...'" },
            type: {
              type: "string",
              enum: ["desirability", "feasibility", "viability"],
              description: "Hypothesis type"
            },
            quadrant: {
              type: "string",
              enum: ["experiment", "share", "defer", "monitor"],
              description: "Assumptions Map quadrant"
            },
            priority: { type: "integer", description: "Priority (higher = more important)" }
          },
          required: ["project_slug", "statement", "type", "quadrant"]
        }
      },
      {
        name: "osr_create_experiment",
        description: "Create an experiment (Test Card) for a hypothesis",
        inputSchema: {
          type: "object",
          properties: {
            hypothesis_id: { type: "string", description: "Hypothesis UUID" },
            name: { type: "string", description: "Experiment name" },
            experiment_type: {
              type: "string",
              description: "Experiment type (customer_interview, landing_page, presale, etc.)"
            },
            description: { type: "string", description: "To verify that, we will..." },
            metric: { type: "string", description: "And measure..." },
            criteria: { type: "string", description: "We are right if..." },
            estimated_cost: { type: "number", description: "Estimated cost in USD" },
            duration_days: { type: "integer", description: "Expected duration in days" }
          },
          required: ["hypothesis_id", "name", "experiment_type", "description", "metric", "criteria"]
        }
      },
      {
        name: "osr_update_experiment_status",
        description: "Update the status of an experiment",
        inputSchema: {
          type: "object",
          properties: {
            experiment_id: { type: "string", description: "Experiment UUID" },
            status: {
              type: "string",
              enum: ["planned", "in_progress", "completed", "cancelled", "blocked"],
              description: "New status"
            },
            result_summary: { type: "string", description: "Summary of results (for completed)" },
            success: { type: "boolean", description: "Did it meet criteria? (for completed)" },
            actual_cost: { type: "number", description: "Actual cost incurred" }
          },
          required: ["experiment_id", "status"]
        }
      },
      {
        name: "osr_record_evidence",
        description: "Record evidence from an experiment",
        inputSchema: {
          type: "object",
          properties: {
            experiment_id: { type: "string", description: "Experiment UUID" },
            hypothesis_id: { type: "string", description: "Hypothesis UUID" },
            description: { type: "string", description: "Evidence description" },
            strength: {
              type: "string",
              enum: ["very_weak", "weak", "medium", "strong", "very_strong"],
              description: "Evidence strength"
            },
            supports_hypothesis: { type: "boolean", description: "Does this support or refute the hypothesis?" },
            source: { type: "string", description: "Where/who the evidence came from" },
            raw_data: { type: "object", description: "Any structured data (JSON)" }
          },
          required: ["experiment_id", "hypothesis_id", "description", "strength", "supports_hypothesis"]
        }
      },
      {
        name: "osr_record_learning",
        description: "Record a learning/insight from experiments",
        inputSchema: {
          type: "object",
          properties: {
            project_slug: { type: "string", description: "Project slug" },
            experiment_id: { type: "string", description: "Related experiment UUID (optional)" },
            hypothesis_id: { type: "string", description: "Related hypothesis UUID (optional)" },
            name: { type: "string", description: "Learning name/title" },
            insight: { type: "string", description: "The key insight" },
            hypothesis_supported: { type: "boolean", description: "Was the hypothesis supported?" },
            confidence_level: { type: "integer", description: "Confidence level 0-100" },
            action_required: { type: "string", description: "What action should be taken?" },
            next_steps: { type: "array", items: { type: "string" }, description: "List of next steps" }
          },
          required: ["project_slug", "name", "insight"]
        }
      },
      {
        name: "osr_log_session",
        description: "Log a research session (daily work)",
        inputSchema: {
          type: "object",
          properties: {
            project_slug: { type: "string", description: "Project slug" },
            title: { type: "string", description: "Session title" },
            summary: { type: "string", description: "What was accomplished" },
            hypotheses_created: { type: "integer" },
            experiments_designed: { type: "integer" },
            experiments_completed: { type: "integer" },
            learnings_captured: { type: "integer" },
            files_created: { type: "array", items: { type: "string" } },
            next_steps: { type: "array", items: { type: "string" } }
          },
          required: ["project_slug", "summary"]
        }
      },
      {
        name: "osr_query",
        description: "Run a custom read-only SQL query",
        inputSchema: {
          type: "object",
          properties: {
            query: { type: "string", description: "SQL query (SELECT only)" }
          },
          required: ["query"]
        }
      }
    ]
  };
});

// Handle tool calls
server.setRequestHandler(CallToolRequestSchema, async (request) => {
  const { name, arguments: args } = request.params;
  const params = (args || {}) as Record<string, any>;

  try {
    switch (name) {
      case "osr_list_projects": {
        let query = supabase.from("projects").select("*").is("archived_at", null);
        if (params.status) {
          query = query.eq("status", params.status);
        }
        const { data, error } = await query.order("updated_at", { ascending: false });
        if (error) throw error;
        return { content: [{ type: "text", text: JSON.stringify(data, null, 2) }] };
      }

      case "osr_get_project": {
        const { data: project, error: projectError } = await supabase
          .from("projects")
          .select("*")
          .eq("slug", params.slug)
          .single();
        if (projectError) throw projectError;

        const result: any = { project };

        if (params.include_hypotheses !== false) {
          const { data: hypotheses } = await supabase
            .from("hypotheses")
            .select("*")
            .eq("project_id", project.id)
            .order("priority", { ascending: false });
          result.hypotheses = hypotheses;
        }

        if (params.include_experiments !== false) {
          const { data: experiments } = await supabase
            .from("experiments")
            .select("*")
            .eq("project_id", project.id)
            .order("created_at", { ascending: false });
          result.experiments = experiments;
        }

        return { content: [{ type: "text", text: JSON.stringify(result, null, 2) }] };
      }

      case "osr_create_project": {
        const { data, error } = await supabase
          .from("projects")
          .insert({
            name: params.name,
            slug: params.slug,
            description: params.description,
            value_proposition: params.value_proposition,
            status: "ideation"
          })
          .select()
          .single();
        if (error) throw error;
        return { content: [{ type: "text", text: `Created project: ${JSON.stringify(data, null, 2)}` }] };
      }

      case "osr_create_hypothesis": {
        // Get project ID from slug
        const { data: project } = await supabase
          .from("projects")
          .select("id")
          .eq("slug", params.project_slug)
          .single();
        if (!project) throw new Error(`Project not found: ${params.project_slug}`);

        const { data, error } = await supabase
          .from("hypotheses")
          .insert({
            project_id: project.id,
            statement: params.statement,
            type: params.type,
            quadrant: params.quadrant,
            priority: params.priority || 0
          })
          .select()
          .single();
        if (error) throw error;
        return { content: [{ type: "text", text: `Created hypothesis: ${JSON.stringify(data, null, 2)}` }] };
      }

      case "osr_create_experiment": {
        // Get project_id from hypothesis
        const { data: hypothesis } = await supabase
          .from("hypotheses")
          .select("project_id")
          .eq("id", params.hypothesis_id)
          .single();
        if (!hypothesis) throw new Error(`Hypothesis not found: ${params.hypothesis_id}`);

        const { data, error } = await supabase
          .from("experiments")
          .insert({
            hypothesis_id: params.hypothesis_id,
            project_id: hypothesis.project_id,
            name: params.name,
            experiment_type: params.experiment_type,
            description: params.description,
            metric: params.metric,
            criteria: params.criteria,
            estimated_cost: params.estimated_cost,
            duration_days: params.duration_days,
            status: "planned"
          })
          .select()
          .single();
        if (error) throw error;
        return { content: [{ type: "text", text: `Created experiment: ${JSON.stringify(data, null, 2)}` }] };
      }

      case "osr_update_experiment_status": {
        const updates: any = { status: params.status };
        if (params.result_summary) updates.result_summary = params.result_summary;
        if (params.success !== undefined) updates.success = params.success;
        if (params.actual_cost) updates.actual_cost = params.actual_cost;
        if (params.status === "completed") updates.completed_at = new Date().toISOString();
        if (params.status === "in_progress" && !updates.actual_start_date) {
          updates.actual_start_date = new Date().toISOString().split("T")[0];
        }

        const { data, error } = await supabase
          .from("experiments")
          .update(updates)
          .eq("id", params.experiment_id)
          .select()
          .single();
        if (error) throw error;
        return { content: [{ type: "text", text: `Updated experiment: ${JSON.stringify(data, null, 2)}` }] };
      }

      case "osr_record_evidence": {
        const { data, error } = await supabase
          .from("evidence")
          .insert({
            experiment_id: params.experiment_id,
            hypothesis_id: params.hypothesis_id,
            description: params.description,
            strength: params.strength,
            supports_hypothesis: params.supports_hypothesis,
            source: params.source,
            raw_data: params.raw_data,
            collected_at: new Date().toISOString()
          })
          .select()
          .single();
        if (error) throw error;
        return { content: [{ type: "text", text: `Recorded evidence: ${JSON.stringify(data, null, 2)}` }] };
      }

      case "osr_record_learning": {
        // Get project ID from slug
        const { data: project } = await supabase
          .from("projects")
          .select("id")
          .eq("slug", params.project_slug)
          .single();
        if (!project) throw new Error(`Project not found: ${params.project_slug}`);

        const { data, error } = await supabase
          .from("learnings")
          .insert({
            project_id: project.id,
            experiment_id: params.experiment_id,
            hypothesis_id: params.hypothesis_id,
            name: params.name,
            insight: params.insight,
            hypothesis_supported: params.hypothesis_supported,
            confidence_level: params.confidence_level,
            action_required: params.action_required,
            next_steps: params.next_steps || []
          })
          .select()
          .single();
        if (error) throw error;
        return { content: [{ type: "text", text: `Recorded learning: ${JSON.stringify(data, null, 2)}` }] };
      }

      case "osr_log_session": {
        // Get project ID from slug
        const { data: project } = await supabase
          .from("projects")
          .select("id")
          .eq("slug", params.project_slug)
          .single();
        if (!project) throw new Error(`Project not found: ${params.project_slug}`);

        const { data, error } = await supabase
          .from("sessions")
          .insert({
            project_id: project.id,
            date: new Date().toISOString().split("T")[0],
            title: params.title,
            summary: params.summary,
            hypotheses_created: params.hypotheses_created || 0,
            experiments_designed: params.experiments_designed || 0,
            experiments_completed: params.experiments_completed || 0,
            learnings_captured: params.learnings_captured || 0,
            files_created: params.files_created || [],
            next_steps: params.next_steps || []
          })
          .select()
          .single();
        if (error) throw error;
        return { content: [{ type: "text", text: `Logged session: ${JSON.stringify(data, null, 2)}` }] };
      }

      case "osr_query": {
        // Only allow SELECT queries
        const queryStr = String(params.query || "").trim().toUpperCase();
        if (!queryStr.startsWith("SELECT")) {
          throw new Error("Only SELECT queries are allowed");
        }

        const { data, error } = await supabase.rpc("exec_sql", { query: params.query });
        if (error) throw error;
        return { content: [{ type: "text", text: JSON.stringify(data, null, 2) }] };
      }

      default:
        throw new Error(`Unknown tool: ${name}`);
    }
  } catch (error: any) {
    return {
      content: [{ type: "text", text: `Error: ${error.message}` }],
      isError: true
    };
  }
});

// Start server
async function main() {
  const transport = new StdioServerTransport();
  await server.connect(transport);
  console.error("OS Research Supabase MCP server running");
}

main().catch(console.error);
