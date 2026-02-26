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

## Commit & Pull Request Guidelines

- Commit messages follow Conventional Commits and must include a scope, e.g. `feat(config): adjust lock file maintenance schedule`.
- Include a concise summary and reference issues/PR numbers when applicable.
- PRs should describe the change using template sections only.
- Always use the repository PR template from `.github/pull_request_template.md`.
- Follow inline comments in the PR template.
- Remove template sections that are not applicable (for example, `Related Issues` or `Related PRs`).
- Do not add ad-hoc sections (for example, `Impacted apps`, `Validation`, or standalone `Tests`) unless the template requires them.
