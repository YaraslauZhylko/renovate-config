.DEFAULT_GOAL   := help

##@ General

.PHONY: help
help: ## Display this help.
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: \033[36mmake <target>\033[0m\n\nAwailable targets:\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-24s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Development

.PHONY: init
init:  ## Initialize the development environment.
	git config core.hooksPath .githooks

.PHONY: lint
lint: ## Run linters/formatters.
	npx --yes prettier --write .

.PHONY: lint-check
lint-check: ## Run linters in check mode.
	npx --yes prettier --check .

.PHONY: validate-renovate
validate-renovate: ## Validate Renovate configuration files.
	npx --yes --package=re2 --package=renovate -- renovate-config-validator default.json renovate.json

.PHONY: validate-github-actions
validate-github-actions: ## Validate GitHub Actions workflow files.
	for filename in .github/workflows/*.yml; do npx --yes --package=@action-validator/cli -- action-validator "$$filename"; done

.PHONY: validate
validate: validate-renovate validate-github-actions ## Run all validators.

.PHONY: clean
clean: ## Remove all temporary files and unused git references.
	git clean -fdX \
		--exclude '!.vscode' \
		--exclude '!.vscode/**'
	git remote prune origin
	git gc --aggressive
