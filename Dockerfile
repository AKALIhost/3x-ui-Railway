FROM ghcr.io/mhsanaei/3x-ui:latest
COPY --from=caddy:2-alpine /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile
COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]