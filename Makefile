shell:
	./hack/shell

binaries:
	./hack/binaries

binaries-cross:
	EXPORT_LOCAL=cross-out ./hack/cross

cross:
	./hack/cross

install: binaries
	mkdir -p ~/.docker/cli-plugins
	cp bin/buildx ~/.docker/cli-plugins/docker-buildx

lint:
	./hack/lint

test:
	./hack/test

validate-vendor:
	./hack/validate-vendor
	
validate-all: lint test validate-vendor

vendor:
	./hack/update-vendor

generate-authors:
	./hack/generate-authors

.PHONY: vendor lint shell binaries install binaries-cross validate-all generate-authors
