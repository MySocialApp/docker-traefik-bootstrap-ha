FROM traefik:v1.7.3-alpine

RUN apk add -U --no-cache --purge curl jq bash bind-tools

EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
CMD ["traefik"]
