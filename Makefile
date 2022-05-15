up: build
	docker-compose up --detach --renew-anon-volumes --remove-orphans
build:
	docker-compose build
#.PHONY: run
#run:
#	docker run --rm \
#		--publish 40000:40000 \
#		--publish 1541:1541 \
#		--security-opt=seccomp:unconfined \
#		--name delve-into-docker \
#		delve-into-docker-app
env:
	docker exec -it docker-dlv bash

env-down:                                   ## Stop devcontainer.
	docker-compose down --remove-orphans

env-remove:
	docker-compose down --volumes --remove-orphans