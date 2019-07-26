TAG=$(shell git rev-parse --short HEAD)

push:
	docker build --tag=nazoking/sbt-swagger-codegen-docker:$(TAG) .
	docker push nazoking/sbt-swagger-codegen-docker:$(TAG)
push-latest:
	docker tag nazoking/sbt-swagger-codegen-docker:$(TAG) nazoking/sbt-swagger-codegen-docker:latest
	docker push nazoking/sbt-swagger-codegen-docker:latest

