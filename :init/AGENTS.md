# Repository Guidelines

## Project Structure & Module Organization
- Docs-first repo; key playbooks live at the root: `01-blue-ocean-playbook.md`, `02-value-proposition-design.md`, `03-business-model-design.md`, `04-business-pitch.md`, and `key-research-areas.md`.
- Files are numbered to show reading order; keep new playbooks in the same `NN-title.md` pattern and cross-reference related canvases.
- Preserve existing ASCII canvases, ✅/❌ callouts, and the shared "Home Renovation Platform" case study when adding examples.

## Build, Test, and Development Commands
- No build pipeline is required; open Markdown files directly in your editor or viewer.
- Optional formatting pass if you have the tools installed locally: `npx prettier -w "*.md"` to normalize spacing and bullet alignment.
- If you add automation, prefer simple npm scripts and document them here.

## Coding Style & Naming Conventions
- Write concise, action-oriented prose; keep sticky note examples short (3-7 words) to match existing tone.
- Use Markdown headings in descending order; avoid skipping levels.
- Maintain numbered filenames and section titles that mirror the canvas being described.
- Keep diagrams and tables in plain ASCII; avoid embedded images unless essential.

## Testing Guidelines
- No automated tests exist; proofread for clarity, broken links, and consistent terminology across playbooks (VPC → BMC → pitch).
- When introducing new templates, validate that references between documents remain accurate.
- If adding scripts later, include a quick check command (e.g., `npm test`) and note expected outputs.

## Commit & Pull Request Guidelines
- Use clear, imperative commit subjects (e.g., "Add pricing hypothesis examples") and keep bodies focused on the why.
- Group related edits per commit; avoid mixing new frameworks with unrelated copy edits.
- For PRs, include: summary of changes, specific sections touched, rationale, and any open questions. Link to related issues or tasks when available.
- Provide before/after snippets when altering diagrams or templates to ease review.

## Research Session Management

**CRITICAL:** Before starting any new research, ALWAYS check if related research already exists.

### Step 1: Check for Existing Research

```bash
ls -la research-outputs/
```

Search for related topics by name or keywords. If a relevant folder exists (e.g., `26009-bee-digital-v1`), add new outputs to that folder instead of creating a new one.

### Step 2: Add to Existing OR Create New Folder

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

### Step 3: Keep Master Context Updated

The `README.md` in each research folder serves as the **single source of truth**. Update it every session with:
- New findings or pivots
- Status changes
- Changelog entries

This enables any agent to quickly understand project context without reading all files.

## Security & Configuration Tips
- Keep the repository Markdown-only unless a lightweight helper script is justified; avoid introducing binaries.
- Do not include sensitive market data or private stakeholder details; redact or generalize examples.
- If you must add dependencies, prefer vetted, minimal packages and document installation steps.
