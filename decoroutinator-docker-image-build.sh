#!/bin/sh
docker build . --file Dockerfile.decoroutinator --tag decoroutinator-kotlin-compiler-server:$(date +%s)
