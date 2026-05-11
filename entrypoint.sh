#!/bin/bash
(
  while [ ! -S /run/granian/granian.sock ]; do sleep 0.1; done
  chmod 777 /run/granian/granian.sock
) &

exec /app/bin/start runserver
