build-system-image:
	docker build -t devops-fourth-system-go:0.0.1 -f Dockerfile.system .

build-build-image:
	docker build -t devops-fourth-build-go:0.0.1 -f Dockerfile.build .

build-run-image:
	docker build -t devops-fourth-run-go:0.0.1 -f Dockerfile.run .

run-app:
	docker run devops-fourth-run-go:0.0.1

run-app-console:
	docker run --rm -it --entrypoint sh devops-fourth-run-go:0.0.1

all: build-system-image build-build-image build-run-image run-app





