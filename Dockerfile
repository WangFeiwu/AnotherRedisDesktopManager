FROM node
MAINTAINER WFW
ENV UPDATED_AT 2021-04-25

USER root
COPY AnotherRedisDesktopManager /root

WORKDIR /root/AnotherRedisDesktopManager

RUN npm install -g windows-build-tools
RUN npm install --platform=win32
RUN npm run pack:prepare
RUN npm run pack:win
