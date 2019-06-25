FROM eed3si9n/sbt:jdk8-alpine

RUN mkdir -p /opt/workspace/project/target
COPY build.sbt /opt/workspace
COPY project /opt/workspace/project
COPY src /opt/workspace/src

RUN sbt swaggerModelCodeGen
