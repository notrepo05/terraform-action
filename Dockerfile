FROM ljfranklin/terraform-resource:0.11.14

RUN apk update && \
    apk add jq && \
    apk add openssl

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]