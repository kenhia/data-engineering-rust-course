SHELL := /bin/bash
.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

rust-version:  ## Display Rust utility versions
	@echo "Rust command-line utility versions:"
	rustc --version
	cargo --version
	rustfmt --version
	rustup --version
	clippy-driver --version
	@echo "===================================="
	rustup show

format:  ## Format the code
	cargo fmt

lint:  ## Lint the code
	cargo clippy

test:  ## Run the tests
	cargo test

run: ## Run the code
	cargo run

release: clean ## Build the release version
	cargo build --release

build: ## Build the debug version
	cargo build

clean: ## Clean the project
	cargo clean

all: clean format lint test build ## Run all the checks and build debug
