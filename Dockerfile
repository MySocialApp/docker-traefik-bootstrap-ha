FROM traefik:v1.5.3-alpine

RUN apk update && apk add curl jq bash bind-tools && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
CMD ["traefik"]
