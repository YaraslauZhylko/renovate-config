# Repository Philosophy

This repository is a shared Renovate preset, not an application codebase.

## Goals

- Keep configuration predictable and easy to reuse.
- Prefer stable, conservative defaults over aggressive automation.
- Group noisy dependency streams (for example monorepos and stubs) to reduce PR churn.

## Constraints

- Keep repository tooling minimal: JSON, Makefile, GitHub Actions, and shell hooks.
- Do not add runtime stack tooling (for example uv/poetry) unless the repository scope changes.
- Use `npx`-based validation and formatting for local and CI parity.

## Change rules

- Validate every change with `make validate`.
- Keep `default.json` compatible with official Renovate docs.
- If changing update strategy, document rationale in README and PR description.
