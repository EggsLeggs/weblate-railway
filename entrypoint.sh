#!/bin/bash
chmod -R 755 /app/cache 2>/dev/null || true

(
  while true; do
    if [ -S /run/granian/granian.sock ]; then
      chmod 777 /run/granian/granian.sock 2>/dev/null
    fi
    sleep 0.5
  done
) &

exec /app/bin/start runserver
