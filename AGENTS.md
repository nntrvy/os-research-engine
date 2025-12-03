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

## Security & Configuration Tips
- Keep the repository Markdown-only unless a lightweight helper script is justified; avoid introducing binaries.
- Do not include sensitive market data or private stakeholder details; redact or generalize examples.
- If you must add dependencies, prefer vetted, minimal packages and document installation steps.
