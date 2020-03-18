GINCO_OPTS="$GINCO_OPTS -Dginco.postgres.host=${POSTGRES_HOST:-postgres}"
GINCO_OPTS="$GINCO_OPTS -Dginco.postgres.db=${POSTGRES_DB:-ginco}"
GINCO_OPTS="$GINCO_OPTS -Dginco.postgres.user=${POSTGRES_USER:-ginco}"
GINCO_OPTS="$GINCO_OPTS -Dginco.postgres.password=${POSTGRES_PASSWORD:-ginco}"

CATALINA_OPTS="$CATALINA_OPTS $GINCO_OPTS"
