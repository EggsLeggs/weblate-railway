#!/bin/bash
chmod -R 755 /app/cache 2>/dev/null || true
chmod -R 755 /app/data 2>/dev/null || true
chmod 777 /run 2>/dev/null || true
mkdir -p /run/granian
chmod 777 /run/granian

(
  while true; do
    chmod 777 /run/granian/granian.sock 2>/dev/null || true
    sleep 0.1
  done
) &

exec /app/bin/start runserver
