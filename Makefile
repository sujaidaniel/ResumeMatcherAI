.SHELL := /usr/bin/env bash

.PHONY: all help setup dev build clean

all: help

help:
	@echo "Usage: make [target]"
	@echo "Available targets:"
	@echo "  setup        Run the setup script to configure the project"
	@echo "  run-dev      Setup and start the development server (with graceful shutdown)"
	@echo "  run-prod     Build the project for production"
	@echo "  clean        Clean up generated artifacts"

setup:
	@echo "🔧 Running setup.sh…"
	@bash setup.sh

run-dev:
	@echo "🚀 Starting development server…"
	@bash -c 'trap "echo "\n🛑 Development server stopped"; exit 0" SIGINT; npm run dev'

run-prod:
	@echo "📦 Building for production…"
	@npm run build

clean:
	@echo "🧹 Cleaning artifacts…"
	# Add commands to clean build and temp files, e.g.:
	# rm -rf node_modules apps/backend/.venv apps/frontend/node_modules
