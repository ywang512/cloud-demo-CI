setup:
	python3 -m venv .venv

install:
	pip install --upgrade pip
	pip install -r requirements.txt

test:
	pytest -vv --cov=exercises exercises/*.py  # .py files not end with "error"
	# pytest --nbval --cov=exercises *.ipynb

test-error:
	pytest -vv --cov=exercises/errors exercises/errors/*.py

lint:
	pylint --disable=R,C exercises/*.py

lint-error:
	pylint --disable=R,C exercises/errors/*.py

all: install lint test
