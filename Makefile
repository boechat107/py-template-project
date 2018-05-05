clean:
	rm -rf .cache/ .mypy_cache/ __project-name__.egg-info/
	find ./__project-name__ -name '__pycache__' -type d | xargs -I@ rm -rf @
	find ./tests -name '__pycache__' -type d | xargs -I@ rm -rf @


dev_install:
	[ ! -z "${VIRTUAL_ENV}" ] # Check for virtualenv.
	pip install -r requirements.txt
	pip install --editable .


install:
	pip install .


check:
	mypy --ignore-missing-imports --strict-optional __project-name__
	pytest tests/


# To be used on CIs.
ci_mypy:
	docker run --rm -v $(PWD):/app -w /app \
	    grktsh/mypy --ignore-missing-imports --strict-optional lambdazome
	docker run --rm -v $(PWD):/app -w /app --entrypoint sh \
	    grktsh/mypy -c "rm -rf .mypy_cache"


.PHONY: dev_install dev_install install check ci_mypy
