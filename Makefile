push:
	docker build --tag=sbt-swagger-codegen-docker:latest .
	docker push sbt-swagger-codegen-docker:latest
