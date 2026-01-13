# OS Research Supabase MCP Server

MCP server that connects Claude Code to your Supabase database.

## Installation

```bash
cd database/mcp-server
npm install
npm run build
```

## Configuration

Add to your Claude Code settings (`~/.claude/settings.json`):

```json
{
  "mcpServers": {
    "osr-supabase": {
      "command": "node",
      "args": ["/Users/nntrvy/osr-company/os-research-engine/database/mcp-server/dist/index.js"],
      "env": {
        "SUPABASE_URL": "https://your-project.supabase.co",
        "SUPABASE_SERVICE_KEY": "your-service-role-key"
      }
    }
  }
}
```

## Available Tools

| Tool | Description |
|------|-------------|
| `osr_list_projects` | List all projects with metrics |
| `osr_get_project` | Get project with hypotheses/experiments |
| `osr_create_project` | Create a new project |
| `osr_create_hypothesis` | Add hypothesis to project |
| `osr_create_experiment` | Add experiment for hypothesis |
| `osr_update_experiment_status` | Update experiment status |
| `osr_record_evidence` | Record evidence from experiment |
| `osr_record_learning` | Record insight/learning |
| `osr_log_session` | Log daily work session |
| `osr_query` | Run custom SELECT query |

## Usage Examples

Once configured, Claude Code can use these tools:

```
# List all projects
Use osr_list_projects

# Get project details
Use osr_get_project with slug "xanhsm-programmatic-taxi-ads"

# Create a hypothesis
Use osr_create_hypothesis with:
  project_slug: "xanhsm-programmatic-taxi-ads"
  statement: "We believe that FMCG brands will commit $50K+ to a pilot"
  type: "desirability"
  quadrant: "experiment"
  priority: 1

# Update experiment status
Use osr_update_experiment_status with:
  experiment_id: "uuid-here"
  status: "completed"
  success: true
  result_summary: "6 of 10 agencies committed to pilot"
```

## Development

```bash
# Run in development mode
npm run dev

# Build for production
npm run build
```
