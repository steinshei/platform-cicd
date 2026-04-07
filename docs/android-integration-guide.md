# Android Integration Guide

## Overview

This guide describes how service repositories can integrate Android CI/CD capabilities from `platform-cicd`:

- Cloud gate (compile + unit tests)
- Self-hosted macrobenchmark (local emulator/real device)
- Package artifacts upload (APK/AAB)

## Reusable Workflows

- `reusable-android-gate.yml`
- `reusable-android-macrobenchmark-self-hosted.yml`
- `reusable-android-package.yml`
- (legacy) `reusable-android-baseline-profile.yml`

## Recommended Adoption

1. Start with `reusable-android-gate.yml` for fast cloud quality gates.
2. Add `reusable-android-macrobenchmark-self-hosted.yml` when local performance validation is ready.
3. Add `reusable-android-package.yml` for artifact delivery.

## Self-hosted Runner Notes

- Register a self-hosted runner in the service repo or org.
- Start with broad labels (e.g. `["self-hosted"]`) to ensure pickup.
- Tighten labels after stability (for example, `macOS` / `ARM64` / custom `android`).

## Macrobenchmark Notes

When running on emulator, pass benchmark suppression as needed, for example:

`EMULATOR`

Use `benchmark_suppress_errors` input instead of hardcoding flags in service repos.

## Package Artifacts

`reusable-android-package.yml` uploads:

- release APKs
- release AABs

Service repos can later extend with signing and store distribution workflows.
