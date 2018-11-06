
VERSION := "1.3.2a"

.PHONY: help
help: ## Show this help
	@echo "Use one of the following targets"
	@echo
	@fgrep -h "##" ${MAKEFILE_LIST} | fgrep -v fgrep | sed -e 's/:.*##/:##/' | column -t -s '##'

.PHONY: build
build: ## Build the docker image
	@docker build -t cycloid/html2text:${VERSION} .


.PHONY: push
push: ## Push the docker image to Docker Hub
	@docker push cycloid/html2text:${VERSION}

.PHONY: test
test: build ## Test that the docker image builds correctly
	@docker run --rm cycloid/html2text:${VERSION} -version \
		| if ! grep "version ${VERSION}" -q; \
		then echo "\n\nDocker image version mismatch.\nCheck that the Dockerfile isntalls the html2text version which is set in the Makefile VERSION varirable value (${VERSION})\n" >&2; \
		exit 1; \
		fi
