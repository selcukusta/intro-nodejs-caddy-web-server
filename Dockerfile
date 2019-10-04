FROM alpine:3.10.2
RUN apk add --no-cache --update \
    openssh-client \
    tar \
    curl \
    nodejs \
    nodejs-npm && \
    curl --silent -o - "https://caddyserver.com/download/linux/amd64?plugins=http.expires&license=personal&telemetry=off" | tar --no-same-owner -C /usr/bin/ -xz caddy && \
    chmod 0755 /usr/bin/caddy
COPY . /assets/
RUN npm ci --only=production --prefix /assets/www-nodejs
WORKDIR /assets
EXPOSE 80/TCP 81/TCP
ENTRYPOINT /usr/bin/caddy