docker-build:
	git pull
	docker build -t local-runner .

docker-run:
	git pull
	docker run --restart always -d -e ORG=https://github.com/Wealth-Management-Project-v1 -e NAME=runner-1 -e TOKEN=$(runner_token) github-runner
	docker run --restart always -d -e ORG=https://github.com/Wealth-Management-Project-v1 -e NAME=runner-2 -e TOKEN=$(runner_token) github-runner
	docker run --restart always -d -e ORG=https://github.com/Wealth-Management-Project-v1 -e NAME=runner-3 -e TOKEN=$(runner_token) github-runner
