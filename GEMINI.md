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
