FROM n8nio/n8n:1.100.1

WORKDIR /data

USER root

RUN apk add --no-cache \
    ffmpeg \
    curl \
    tzdata \
    bash \
    nano \
    ttf-dejavu

ENV TZ=UTC

USER node

EXPOSE 3000


CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]
