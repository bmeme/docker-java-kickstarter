FROM maven:3.8-openjdk-11-slim

ARG FIX_UID
ARG FIX_GID

RUN groupadd -g $FIX_GID -o maven && \
    useradd -m -u $FIX_UID -g $FIX_GID -d /usr/src/app -o -s /bin/bash maven

USER maven
