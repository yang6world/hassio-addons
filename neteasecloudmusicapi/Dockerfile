ARG BUILD_FROM=homeassistant/amd64-base-python:3.9-alpine3.16
FROM $BUILD_FROM as builder

ENV LANG C.UTF-8

RUN apk add --no-cache --virtual .buildDeps \
    build-base \
    git \
    npm \
    tini

WORKDIR /build
RUN git clone https://github.com/Binaryify/NeteaseCloudMusicApi
WORKDIR ./NeteaseCloudMusicApi
RUN git checkout ${ncmaGitRevision}
RUN npm i

ENV NODE_ENV production
WORKDIR /build

# Run script
COPY run.sh /build/
RUN chmod a+x /build/run.sh

CMD [ "/build/run.sh" ]
