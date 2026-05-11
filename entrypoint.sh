#!/bin/bash
chmod -R 755 /app/cache 2>/dev/null || true
chmod -R 755 /app/data 2>/dev/null || true

(
  while true; do
    chmod 755 /run/granian/ 2>/dev/null || true
    chmod 777 /run/granian/granian.sock 2>/dev/null || true
    sleep 0.2
  done
) &

exec /app/bin/start runserver
