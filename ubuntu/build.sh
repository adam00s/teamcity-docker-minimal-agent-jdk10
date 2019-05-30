#!/bin/bash

SOURCE_VERSION=x86_64-ubuntu-jdk-10.0.2.13
BUILD_VERSION=1.2

docker build . -t teamcity-minimal-agent-jdk10:$SOURCE_VERSION-$BUILD_VERSION
docker tag teamcity-minimal-agent-jdk10:$SOURCE_VERSION-$BUILD_VERSION teamcity-minimal-agent-jdk10:latest
