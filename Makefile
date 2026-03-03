VERSION := $(shell node -p "require('./package.json').version")

.PHONY: help build dev install bump-patch bump-minor bump-major release

help: ## Show available commands
	@echo "Agents v$(VERSION)"
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  make %-14s %s\n", $$1, $$2}'

build: ## Build for production (tsc + esbuild)
	npm run build

dev: ## Start dev build with watch mode
	npm run dev

install: ## Install plugin to vault
	npm run install-plugin

bump-patch: ## Bump patch version, commit, tag, and push
	npm version patch
	git push && git push --tags

bump-minor: ## Bump minor version, commit, tag, and push
	npm version minor
	git push && git push --tags

bump-major: ## Bump major version, commit, tag, and push
	npm version major
	git push && git push --tags

release: ## Push current commit and tag to origin (use after manual bump)
	git push && git push --tags
