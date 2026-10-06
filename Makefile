.PHONY: lint format typecheck test check

UV := uv --directory backend run

lint:
	$(UV) ruff check
	$(UV) ruff format --check

format:
	$(UV) ruff check --fix
	$(UV) ruff format

typecheck:
	$(UV) pyrefly check

test:
	$(UV) pytest

check: lint typecheck test
