ARG BUILD_FROM=homeassistant/amd64-base-python:3.9-alpine3.16
FROM $BUILD_FROM AS builder

ENV LANG C.UTF-8

RUN apk add --no-cache \
    git \
    tini

WORKDIR /app
RUN git clone https://github.com/Chanzhaoyu/chatgpt-web.git && \
    cd chatgpt-web && \
    git checkout a6605e8a57750903f2a720ead630e25368667309

FROM $BUILD_FROM AS frontend

ENV LANG C.UTF-8

RUN apk add --no-cache \
    nodejs \
    npm \
    git \
    tini

RUN npm install pnpm -g

WORKDIR /app

COPY --from=builder /app/chatgpt-web/package.json /app
COPY --from=builder /app/chatgpt-web/pnpm-lock.yaml /app

RUN pnpm install

COPY --from=builder /app/chatgpt-web /app

RUN pnpm run build

# build backend
FROM $BUILD_FROM as backend

ENV LANG C.UTF-8

RUN apk add --no-cache \
    nodejs \
    npm \
    git \
    tini

RUN npm install pnpm -g

WORKDIR /app

COPY --from=builder /app/chatgpt-web/service/package.json /app

COPY --from=builder /app/chatgpt-web/service/pnpm-lock.yaml /app

RUN pnpm install

COPY --from=builder /app/chatgpt-web/service /app

RUN pnpm build

# service
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache \
    nodejs \
    npm \
    git \
    tini

RUN npm install pnpm -g

WORKDIR /app

COPY --from=builder /app/chatgpt-web/service/package.json /app

COPY --from=builder /app/chatgpt-web/service/pnpm-lock.yaml /app

RUN pnpm install --production && rm -rf /root/.npm /root/.pnpm-store /usr/local/share/.cache /tmp/*

COPY --from=builder /app/chatgpt-web/service /app

COPY --from=frontend /app/dist /app/public

COPY --from=backend /app/build /app/build

EXPOSE 3002

# Run script
COPY run.sh /app
RUN chmod a+x /app/run.sh

WORKDIR /app
CMD [ "./run.sh" ]
