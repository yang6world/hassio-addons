ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

MAINTAINER dscao.com@gmail.com


ENV nps_version="0.26.10"
ENV nps_dir="/root/npc"
ENV os="linux"
ENV arch="amd64"

WORKDIR /root

RUN wget --no-check-certificate -c -t3 -T60 -O npc.tar.gz https://github.com/ehang-io/nps/releases/download/v${nps_version}/${os}_${arch}_client.tar.gz && \
  tar -zxvf npc.tar.gz && \
  rm -f npc.tar.gz

# Run script
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
