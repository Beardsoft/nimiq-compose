#!/bin/bash
echo "Deploy archive"
docker build --no-cache -t maestroi/nimiq-albatross:prebuild-archive -f Dockerfile.archive .
docker push maestroi/nimiq-albatross:prebuild-archive

Echo "Deploy full"
docker build --no-cache -t maestroi/nimiq-albatross:prebuild-full . -f Dockerfile.full .
docker push maestroi/nimiq-albatross:prebuild-full
