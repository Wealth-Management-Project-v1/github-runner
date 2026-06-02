docker-build:
	git pull
	docker build -t local-runner .
