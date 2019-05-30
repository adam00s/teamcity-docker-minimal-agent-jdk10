#!/bin/bash

VERSION=1.3

docker build . -t teamcity-minimal-agent-jdk10:$VERSION
docker tag teamcity-minimal-agent-jdk10:$VERSION teamcity-minimal-agent-jdk10:latest
