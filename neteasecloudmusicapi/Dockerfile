ARG BUILD_FROM=homeassistant/amd64-base-python:3.9-alpine3.16
FROM $BUILD_FROM as builder

ENV LANG C.UTF-8

RUN apk add --no-cache --virtual .buildDeps \
    build-base \
    git \
    npm \
    tini

WORKDIR /build
RUN git clone https://github.com/Binaryify/NeteaseCloudMusicApi.git
WORKDIR ./NeteaseCloudMusicApi
RUN git checkout aa2e832ea33c45e91b0af6160ec589d12e8996eb
RUN npm i --omit=dev --ignore-scripts

ENV NODE_ENV production
WORKDIR /build

# Run script
COPY run.sh /build/
RUN chmod a+x /build/run.sh

CMD [ "/build/run.sh" ]
