#!/bin/bash

SOURCE_VERSION=x86_64-ubuntu-jdk-11.0.3_7
BUILD_VERSION=1.0

docker build . -t teamcity-minimal-agent-jdk11:$SOURCE_VERSION-$BUILD_VERSION
docker tag teamcity-minimal-agent-jdk11:$SOURCE_VERSION-$BUILD_VERSION teamcity-minimal-agent-jdk11:latest
