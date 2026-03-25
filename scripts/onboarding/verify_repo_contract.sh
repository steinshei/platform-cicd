#!/usr/bin/env bash
set -euo pipefail

required=(
  "Dockerfile"
  "service-catalog.yaml"
  ".github/workflows/ci-main.yaml"
  ".github/workflows/security-sast.yaml"
)

failed=0
for f in "${required[@]}"; do
  if [ ! -e "$f" ]; then
    echo "missing: $f"
    failed=1
  fi
done

if [ "$failed" -ne 0 ]; then
  echo "repo contract verification failed"
  exit 1
fi

echo "repo contract verification passed"
