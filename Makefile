install:
	pip install --upgrade pip && pip install -r dependencies_linting.txt
	wget -O hadolint https://github.com/hadolint/hadolint/releases/download/v1.17.5/hadolint-Linux-x86_64
	chmod +x hadolint

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint test
