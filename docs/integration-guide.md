# Integration Guide

## Service Repo Steps
1. Copy workflow templates from `templates/workflow/`.
2. Adjust `service_name`, `context_dir`, `dockerfile`, and values file paths.
3. Add required repository secrets:
   - `CI_BOT_TOKEN`
   - optional `cosign_private_key`, `cosign_password`
4. Enable branch protections and required checks.

## Required Checks
- `pipeline / validate-build-scan`
- `semgrep`
- `codeql (go, autobuild)`
- `codeql (actions, none)`
