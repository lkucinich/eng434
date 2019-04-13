setup:
	python3 -m venv ~/.eng434

install:
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=eng434lib tests/*.py

lint:
	pylint --disable=R,C eng434lib

all: install lint test
