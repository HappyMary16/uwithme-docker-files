#!/bin/bash

set -eou pipefail

if [[ -n ${KEYCLOAK_USER:-} && -n ${KEYCLOAK_PASSWORD:-} ]]; then
    /opt/jboss/keycloak/bin/add-user-keycloak.sh --user "$KEYCLOAK_USER" --password "$KEYCLOAK_PASSWORD"
fi

SYS_PROPS=""

BIND=$(hostname --all-ip-addresses)

for BIND_IP in $BIND
do
    BIND_OPTS+="-Djboss.bind.address=$BIND_IP -Djboss.bind.address.private=$BIND_IP "
done

SYS_PROPS+="$BIND_OPTS"

if [[ -n ${KEYCLOAK_IMPORT:-} ]]; then
    SYS_PROPS+="-Dkeycloak.import=$KEYCLOAK_IMPORT -Dkeycloak.profile.feature.upload_scripts=enabled"
fi

echo "Starting with /opt/jboss/keycloak/bin/standalone.sh $SYS_PROPS"

exec /opt/jboss/keycloak/bin/standalone.sh $SYS_PROPS

exit $?