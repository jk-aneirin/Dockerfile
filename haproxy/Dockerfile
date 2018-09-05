FROM haproxy:1.8-alpine

# Copy envsubst from package gettext
RUN set -x && \
     apk add --update libintl && \
     apk add --virtual temp gettext && \
     cp /usr/bin/envsubst /usr/local/bin/envsubst && \
     apk del temp && \
     rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /
COPY haproxy.cfg /

ENTRYPOINT exec /docker-entrypoint.sh
