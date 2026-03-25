#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ]; then
  echo "usage: $0 <service-name>"
  exit 1
fi

service="$1"

mkdir -p .github/workflows
cp templates/workflow/ci-entry-template.yaml .github/workflows/ci-main.yaml
cp templates/workflow/security-entry-template.yaml .github/workflows/security-sast.yaml
cp templates/workflow/promote-entry-template.yaml .github/workflows/promote.yaml

sed -i.bak -E "s/sample-service/${service}/g" .github/workflows/*.yaml
rm -f .github/workflows/*.bak

echo "Bootstrapped workflow entries for service: ${service}"
