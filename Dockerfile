FROM zabbix/zabbix-server-pgsql:alpine-5.0-latest

LABEL \
  org.label-schema.schema-version="5" \
  org.label-schema.vendor="dtulyakov"

user root

RUN set -x \
    && apk update \
    && apk add -q --clean-protected --no-cache \
            curl \
    && rm -rf /var/cache/apk/*

user zabbix
