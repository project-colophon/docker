FROM node:alpine
LABEL name="Colophon App"
LABEL description="Docker Template for Colophon App"
LABEL maintainer="Ahmad Nassri <email@ahmadnassri.com>"

WORKDIR /app

RUN apk --no-cache --virtual build-dependencies add python make g++
RUN npm install --global @colophon/app
RUN apk del build-dependencies

ENTRYPOINT [ "colophon" ]