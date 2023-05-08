FROM maven:3.8-eclipse-temurin-11-alpine

ARG FIX_UID
ARG FIX_GID

RUN addgroup -S -g $FIX_GID maven && \
    adduser -S -G maven -u $FIX_UID --disabled-password maven 

USER maven
