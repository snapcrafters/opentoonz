# OpenToonz Snap

This repository contains the Snap packaging for [OpenToonz](https://opentoonz.github.io/e/).

The current packaging refresh targets:

- OpenToonz `1.7.1`
- `core24`
- strict confinement
- the GNOME extension on Ubuntu 24.04

## Build

The preferred build path for this repository is GitHub Actions rather than a local Snapcraft run.

Pushing a branch triggers `.github/workflows/snap-build.yml`, which:

- builds the snap
- runs review checks
- boots a test VM
- installs the generated snap
- launches OpenToonz
- uploads screenshots as workflow artifacts

## Notes

- Default preferences are staged from `default-preferences/`.
- The main packaging definition lives in `snap/snapcraft.yaml`.
- Local Snapcraft runs are only useful when diagnosing a CI-specific failure.
