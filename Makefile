install:
	pip install --upgrade pip && pip install -r requirements.txt
	wget -O hadolint https://github.com/hadolint/hadolint/releases/download/v1.17.5/hadolint-Linux-x86_64
	chmod +x hadolint

lint:
	./hadolint --ignore DL3013 --ignore DL3042 Dockerfile
	pylint --disable=R,C,W1203,C0114,C0116 app.py

all: install lint test
