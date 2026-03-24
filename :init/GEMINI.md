# GEMINI.md

This file provides context to Gemini about the OS Research Engine repository.

## Project Overview

This repository is the **OS Research Engine**, a knowledge base and playbook system for OS Research, an independent startup studio focused on building and validating startup ideas in Vietnam.

The project is a hybrid:
*   **Non-Code Project:** The core of the repository is a collection of Markdown files that document the studio's research methodology, playbooks, and research outputs.
*   **Code Project:** A TypeScript-based server (`database/mcp-server`) provides a programmatic interface to a Supabase PostgreSQL database that stores all the research data.

The main technologies used are **Markdown** for documentation and **TypeScript**, **Node.js**, **Supabase (PostgreSQL)**, and the **Model Context Protocol (MCP)** for the backend.

---

## Non-Code Project Details

### Directory Overview

The repository is structured to guide a user through the startup validation process, from market research to experimentation and learning.

*   `/`: The root contains high-level guides and a business model canvas.
*   `0-market-research-guide/` to `5-manage-guide/`: A series of numbered guides that form the core research and validation playbook.
*   `research-outputs/`: Contains the results of specific research projects, organized by a reference number.
*   `database/`: Contains the database schema and the source code for the MCP server.

### Key Files

*   `CLAUDE.md`: Provides guidance for the Claude AI agent, detailing repository structure, conventions, and available commands.
*   `AGENTS.md`: General repository guidelines for AI agents, covering project structure, coding style, and commit conventions.
*   `key-research-areas.md`: Outlines the five core problem domains for OS Research: Education, Insurance, Urban, Health, and Culture.
*   `os-research-business-model-canvas.md`: The business model canvas for OS Research itself.
*   `blue-ocean-opportunities.md`: A living document outlining potential new market opportunities.
*   `database/schema.sql`: The complete PostgreSQL schema for the Supabase database, detailing the tables, enums, and relationships used to store all research data.

### Usage & Methodology

The repository is intended to be used as a playbook for validating startup ideas. The methodology follows a clear progression:

1.  **Market Research (`0-market-research-guide/`):** Start with Blue Ocean Strategy, Value Proposition Canvas (VPC), and Business Model Canvas (BMC).
2.  **Hypothesize (`1-hypotheses-guide/`):** Formulate testable hypotheses from the canvases.
3.  **Experiment (`2-experiment-guide/`):** Design and run experiments to test the hypotheses.
4.  **Learn (`3-learn-guide/`):** Capture insights and evidence from experiments.
5.  **Decide (`4-decide-guide/`):** Make data-informed decisions to pivot, persevere, or stop.

### Research Session Management

**CRITICAL:** Before starting any new research, ALWAYS check if related research already exists.

#### Step 1: Check for Existing Research

```bash
ls -la research-outputs/
```

Search for related topics by name or keywords. If a relevant folder exists (e.g., `26009-bee-digital-v1`), add new outputs to that folder instead of creating a new one.

#### Step 2: Add to Existing OR Create New Folder

**If related research EXISTS:**
1. Add new files to the existing folder following the `DD.MM.YY-topic-name.md` naming convention
2. Update the folder's `README.md` (master context) with:
   - New findings under appropriate section
   - Changelog entry at the bottom with date and summary

**If NO related research exists:**
1. Create new folder: `{YY}{NNN}-{project-name}/` (e.g., `26012-new-project/`)
2. Create `README.md` as the **master context document** with this structure:

```markdown
# {REFNUM}: {Project Name}

**Project:** {Name}
**Type:** {Research Type}
**Status:** {Current Status}
**Created:** {DD.MM.YY}

---

## Overview
{Brief description of research scope and objectives}

---

## Key Findings
| Finding | Implication |
|---------|-------------|
| ... | ... |

---

## Folder Structure
{List of files in this folder}

---

## Changelog
| Date | Change |
|------|--------|
| DD.MM.YY | Initial creation |
```

#### Step 3: Keep Master Context Updated

The `README.md` in each research folder serves as the **single source of truth**. Update it every session with:
- New findings or pivots
- Status changes
- Changelog entries

This enables any agent to quickly understand project context without reading all files.

---

## Code Project Details: `mcp-server`

### Project Overview

The `mcp-server` is a Node.js application written in TypeScript located in `database/mcp-server/`. It acts as a bridge between AI agents (like Gemini and Claude) and the Supabase database. It uses the Model Context Protocol (MCP) to expose a set of tools for interacting with the research data.

### Building and Running

The server's commands are defined in `database/mcp-server/package.json`:

*   **Install dependencies:**
    ```bash
    npm install
    ```
*   **Build the project:**
    ```bash
    npm run build
    ```
*   **Run the server (production):**
    ```bash
    npm run start
    ```
*   **Run the server (development with live reload):**
    ```bash
    npm run dev
    ```

### Development Conventions

*   **Language:** TypeScript
*   **Database:** Supabase (PostgreSQL)
*   **Key Libraries:**
    *   `@supabase/supabase-js`: For interacting with the Supabase database.
    *   `@modelcontextprotocol/sdk`: For creating the MCP server and defining tools.
*   **Environment Variables:** The server requires `SUPABASE_URL` and `SUPABASE_SERVICE_KEY` or `SUPABASE_ANON_KEY` to be set in the environment. These can be found in the Supabase project settings.
*   **Tools:** The server exposes a number of tools for AI agents to use, such as `osr_list_projects`, `osr_create_hypothesis`, and `osr_record_evidence`. A full list of tools and their schemas can be found in `database/mcp-server/src/index.ts`.
