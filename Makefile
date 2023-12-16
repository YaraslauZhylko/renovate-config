.DEFAULT_GOAL   := help

##@ General

.PHONY: help
help: ## Display this help.
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: \033[36mmake <target>\033[0m\n\nAwailable targets:\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Development

.PHONY: lint
lint: ## Run the linters.
	npx --yes prettier --write .

.PHONY: validate-renovate
validate-renovate: ## Validate Renovate configuration files.
	npx --yes --package=re2 --package=renovate -- renovate-config-validator default.json renovate.json

.PHONY: validate-github-actions
validate-github-actions: ## Validate GitHub Actions configuration file.
	npx --yes --package=@action-validator/cli -- action-validator .github/workflows/ci.yml

.PHONY: clean
clean: ## Remove all temporary files.
	git clean -fdX \
		--exclude '!.vscode' \
		--exclude '!.vscode/**'
