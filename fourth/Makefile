build-system-image:
	docker build -t devops-fourth-system-go:0.0.1 -f system.Dockerfile .

build-build-image:
	docker build -t devops-fourth-build-go:0.0.1 -f build.Dockerfile .

build-run-image:
	docker build -t devops-fourth-run-go:0.0.1 -f run.Dockerfile .

run-app:
	docker run devops-fourth-run-go:0.0.1

run-app-console:
	docker run --rm -it --entrypoint sh devops-fourth-run-go:0.0.1

all: build-system-image build-build-image build-run-image run-app





