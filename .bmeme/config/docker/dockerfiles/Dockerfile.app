FROM maven:3.8-eclipse-temurin-11-alpine

ARG FIX_UID
ARG FIX_GID

#RUN groupadd -g $FIX_GID -o maven && \
#    useradd -m -u $FIX_UID -g $FIX_GID -d /usr/src/app -o -s /bin/bash maven

RUN addgroup -S -g $FIX_GID maven && \
    adduser -S -G maven -u $FIX_UID --disabled-password maven 

USER maven
