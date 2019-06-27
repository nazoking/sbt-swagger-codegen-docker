push:
	docker build --tag=nazoking/sbt-swagger-codegen-docker:latest .
	docker push nazoking/sbt-swagger-codegen-docker:latest
