FROM eed3si9n/sbt:jdk8-alpine

COPY --chown=1001:1 build.sbt /opt/workspace
COPY --chown=1001:1 project /opt/workspace/project
COPY --chown=1001:1 src /opt/workspace/src

RUN sbt swaggerModelCodeGen

COPY --chown=1001:1  entrypoint.sh /opt/workspace/entrypoint.sh
RUN chmod +x /opt/workspace/entrypoint.sh

ENTRYPOINT [ "/opt/workspace/entrypoint.sh" ]
