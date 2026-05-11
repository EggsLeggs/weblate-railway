#!/bin/bash
chown -R 1000:1000 /app/data
exec /app/bin/start runserver
