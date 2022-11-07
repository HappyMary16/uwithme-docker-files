FROM alpine:3.16.0
EXPOSE 8080

ENV KEYCLOAK_VERSION 17.0.0

RUN apk add bash
RUN apk add curl
RUN apk add openjdk11
ADD tools /opt/jboss/tools/
RUN chmod -R 777 /opt/jboss/tools
RUN /opt/jboss/tools/download-keycloak.sh

ENV KEYCLOAK_USER admin
ENV KEYCLOAK_PASSWORD admin

ADD realm-export.json /opt/jboss/keycloak/imports/realm-export.json
ENV KEYCLOAK_IMPORT /opt/jboss/keycloak/imports/realm-export.json

ENTRYPOINT [ "/opt/jboss/tools/start-keycloak.sh" ]
CMD ["-b", "0.0.0.0"]