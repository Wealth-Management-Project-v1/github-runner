docker-build:
	git pull
	docker build -t local-runner .

docker-run:
	git pull
	docker -d -e ORG=https://github.com/Wealth-Management-Project-v1 -e NAME=runner-1 -e TOKEN=$(runner_token) github-runner
	docker -d -e ORG=https://github.com/Wealth-Management-Project-v1 -e NAME=runner-2 -e TOKEN=$(runner_token) github-runner
	docker -d -e ORG=https://github.com/Wealth-Management-Project-v1 -e NAME=runner-3 -e TOKEN=$(runner_token) github-runner
