# Rollback Guide

## Workflow Rollback
1. Repoint service repos from current tag to previous stable tag.
2. Re-run pipeline on target branch.

## Deployment Rollback
- Dev: rollback via GitOps PR revert
- Staging/Prod: rollback by reverting values tag in environment file and re-promoting
