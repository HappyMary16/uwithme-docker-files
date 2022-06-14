FROM jboss/keycloak:16.1.1

COPY --chmod=777 start.sh /opt/jboss/tools/start.sh

ENV KEYCLOAK_USER admin
ENV KEYCLOAK_PASSWORD admin

COPY realm-export.json /opt/jboss/keycloak/imports/realm-export.json
ENV KEYCLOAK_IMPORT /opt/jboss/keycloak/imports/realm-export.json

ENTRYPOINT [ "/opt/jboss/tools/start.sh" ]