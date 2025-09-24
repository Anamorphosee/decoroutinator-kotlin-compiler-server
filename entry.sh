#!/bin/sh
set -e

PORT="8080"

while [ $# -gt 0 ]; do
  case "$1" in
    --port)
      PORT="$2"
      shift 2
      ;;
    *)
      echo "Unknown argument: $1"
      exit 1
      ;;
  esac
done

exec java -noverify -Dserver.port="$PORT" -jar app.jar --spring.profiles.active=prod
