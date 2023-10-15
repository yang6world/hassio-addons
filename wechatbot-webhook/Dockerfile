ARG BUILD_FROM=node:18-alpine
FROM $BUILD_FROM as builder

ENV LANG C.UTF-8

RUN apk add --no-cache \
    nodejs \
    npm \
    git \
    tini

WORKDIR /app
RUN git clone https://github.com/danni-cool/docker-wechatbot-webhook.git && \
    cd docker-wechatbot-webhook && \
    git checkout d7308111f9f10a98fb59ae53bcdf39ad3d90e7b4

FROM $BUILD_FROM

WORKDIR /app

# 将 package.json 和 package-lock.json 复制到工作目录
COPY --from=builder /app/docker-wechatbot-webhook/package*.json ./
# 只有单独分一个层，否则拷贝的就不是文件夹了
COPY --from=builder /app/docker-wechatbot-webhook/patches ./patches/

# 安装应用程序依赖项
RUN npm install

# 复制应用程序代码到工作目录
COPY --from=builder /app/docker-wechatbot-webhook .

# Run script
COPY run.sh /app/
RUN chmod a+x /app/run.sh

# 如果收消息想接入webhook
ENV RECVD_MSG_API=
# 默认登录API接口访问token
ENV LOGIN_API_TOKEN=

# 暴露端口（你的 Express 应用程序监听的端口）
EXPOSE 3001

CMD [ "/app/run.sh" ]
