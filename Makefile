.PHONY: check fmt pi pip-install test verify

fmt: 
	ruff check gym_reversi --fix
	ruff check test --fix

check:
	ruff check gym_reversi
	ruff check test

test:
	pytest test

verify: check test

pip-install:
	pip install .[dependencies] .[dev] .[test]

pi: pip-install
