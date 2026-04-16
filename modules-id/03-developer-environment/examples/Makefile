.PHONY: install test lint clean

install:
	python -m venv .venv
	.venv\Scripts\activate && python -m pip install --upgrade pip && pip install -r requirements.lock

test:
	.venv\Scripts\activate && pytest

lint:
	.venv\Scripts\activate && flake8 src

clean:
	rm -rf .venv