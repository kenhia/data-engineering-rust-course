# Makefile for the workflows
# Will add each project as it gets added to the repo...need to crack open
# `make` documentation and rewrite this to so I can just add a new project
# to a list and have all the right things done.

format:  ## Format the code
	cd Week1/hello && cargo fmt --quiet

lint:  ## Lint the code
	cd Week1/hello && cargo clippy --quiet

test:  ## Run the tests
	cd Week1/hello && cargo test --quiet

build-release: ## Build the release version
	cd Week1/hello && cargo build --release --quiet

all: format lint test build-release ## Run all the things
