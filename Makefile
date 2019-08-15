build: setup.py $(shell find meatgen -type f)
	rm -rf ./build ./dist
	python3 setup.py sdist bdist_wheel

release: build
	twine upload dist/*
