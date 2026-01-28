# Spin-off Agent

Spin off a research output into a new standalone project in `/Users/Vincent/osr-company/`.

## Input
$ARGUMENTS

## Instructions

1. **Identify the research output** to spin off (file or folder in `research-outputs/`)

2. **Generate project name** following the naming convention:
   - Format: `os-{project-name}`
   - Lowercase, hyphenated
   - Examples: `os-adtech-project`, `os-research-engine`, `os-vietnam-insurance`

3. **Create new project directory** in `/Users/Vincent/osr-company/`:
   ```
   /Users/Vincent/osr-company/os-{project-name}/
   ```

4. **Initialize the project** with:
   - `git init`
   - Copy relevant research files from `research-outputs/`
   - Create a basic `README.md` with:
     - Project name and origin (spun off from OS Research Engine)
     - Summary of the research/business opportunity
     - Next steps / hypotheses to validate
   - Create a `CLAUDE.md` with project-specific context

5. **Link back to OS Research Engine**:
   - Add a reference in the spin-off's README noting it originated from OS Research validation
   - Optionally note in os-research-engine that this project was spun off

6. **Report back** with:
   - New project path
   - Files transferred
   - Suggested next actions

## Example Usage

```
/spin-off vietnam life insurance research
/spin-off xanhsm taxi ads
/spin-off edtech corporate training
```
