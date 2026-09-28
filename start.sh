#!/bin/sh
cd /app
./x-ui setting -username "$XUI_USER" -password "$XUI_PASS" -port 2053 -webBasePath /webgateway/
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile &
exec ./DockerEntrypoint.sh ./x-ui