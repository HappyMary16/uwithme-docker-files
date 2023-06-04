FROM quay.io/keycloak/keycloak:20.0.5

ADD realm-export.json /opt/keycloak/data/import/realm-export.json
ADD mit-realm-export.json /opt/keycloak/data/import/mit-realm-export.json

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start-dev", "--import-realm"]