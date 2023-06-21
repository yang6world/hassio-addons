FROM ubuntu:latest

# environment settings
ARG DEBIAN_FRONTEND="noninteractive"
ARG CQHTTP_RELEASE
ENV HOME="/root"
ENV PATH="$PATH:$HOME/.local/bin"
SHELL ["/bin/bash", "-c"]
WORKDIR /root/config/nb

RUN \
  echo "**** 添加中文环境 ****" && \
  apt-get update && \
  #添加中文环境
  apt-get install -y \
    ttf-wqy-microhei \
    ttf-wqy-zenhei \
    xfonts-wqy && \
  apt-get install -y language-pack-zh-han* && \
  #add the langrage evn to the local
  echo "LANG=\"zh_CN.UTF-8\"" >> /etc/default/locale && \
  echo "LANGUAGE=\"zh_CN:zh\"" >> /etc/default/locale && \
  echo "LC_NUMERIC=\"zh_CN\"" >> /etc/default/locale && \
  echo "LC_TIME=\"zh_CN\"" >> /etc/default/locale && \
  echo "LC_MONETARY=\"zh_CN\"" >> /etc/default/locale && \
  echo "LC_PAPER=\"zh_CN\"" >> /etc/default/locale && \
  echo "LC_NAME=\"zh_CN\"" >> /etc/default/locale && \
  echo "LC_ADDRESS=\"zh_CN\"" >> /etc/default/locale && \
  echo "LC_TELEPHONE=\"zh_CN\"" >> /etc/default/locale && \
  echo "LC_MEASUREMENT=\"zh_CN\"" >> /etc/default/locale && \
  echo "LC_IDENTIFICATION=\"zh_CN\"" >> /etc/default/locale && \
  echo "LC_ALL=\"zh_CN.UTF-8\"" >> /etc/default/locale && \
  #add the langrage evn to /etc/environment
  echo "LANG=\"zh_CN.UTF-8\"" >> /etc/environment && \
  echo "LANGUAGE=\"zh_CN:zh\"" >> /etc/environment && \
  echo "LC_NUMERIC=\"zh_CN\"" >> /etc/environment && \
  echo "LC_TIME=\"zh_CN\"" >> /etc/environment && \
  echo "LC_MONETARY=\"zh_CN\"" >> /etc/environment && \
  echo "LC_PAPER=\"zh_CN\"" >> /etc/environment && \
  echo "LC_NAME=\"zh_CN\"" >> /etc/environment && \
  echo "LC_ADDRESS=\"zh_CN\"" >> /etc/environment && \
  echo "LC_TELEPHONE=\"zh_CN\"" >> /etc/environment && \
  echo "LC_MEASUREMENT=\"zh_CN\"" >> /etc/environment && \
  echo "LC_IDENTIFICATION=\"zh_CN\"" >> /etc/environment && \
  echo "LC_ALL=\"zh_CN.UTF-8\"" >> /etc/environment && \
  #add the langrage evn to .bashrc
  echo "LANG=\"zh_CN.UTF-8\"" >> /root/.bashrc && \
  echo "LANGUAGE=\"zh_CN:zh\"" >> /root/.bashrc && \
  echo "LC_NUMERIC=\"zh_CN\"" >> /root/.bashrc && \
  echo "LC_TIME=\"zh_CN\"" >> /root/.bashrc && \
  echo "LC_MONETARY=\"zh_CN\"" >> /root/.bashrc && \
  echo "LC_PAPER=\"zh_CN\"" >> /root/.bashrc && \
  echo "LC_NAME=\"zh_CN\"" >> /root/.bashrc && \
  echo "LC_ADDRESS=\"zh_CN\"" >> /root/.bashrc && \
  echo "LC_TELEPHONE=\"zh_CN\"" >> /root/.bashrc && \
  echo "LC_MEASUREMENT=\"zh_CN\"" >> /root/.bashrc && \
  echo "LC_IDENTIFICATION=\"zh_CN\"" >> /root/.bashrc && \
  echo "LC_ALL=\"zh_CN.UTF-8\"" >> /root/.bashrc && \
  #add the langrage evn to /etc/profile
  echo "LC_ALL=\"zh_CN.UTF-8\"" >> /etc/profile 
ENV LANG="zh_CN.UTF-8" \
    LANGUAGE="zh_CN:zh" \
    LC_ALL="zh_CN.UTF-8"
RUN locale-gen zh_CN.UTF-8 && \
    update-locale LANG=zh_CN.UTF-8
RUN \
  echo "**** 安装相关依赖 ****" && \
  apt-get install -y \
    curl \
    python3 \
    python3-pip \
    python3.10-venv \
    zbar* \
    jq \
    libatomic1 \
    nano \
    net-tools \
    netcat \
    wget \
    sudo && \
  apt-get install  -y \
    libnss3 \                                 
    libnspr4 \                                         
    libatk1.0-0 \                 
    libatk-bridge2.0-0 \                               
    libcups2 \                                    
    libatspi2.0-0 \                                
    libxcomposite1 \                                     
    libxdamage1 \                                      
    libxfixes3 \                                          
    libxrandr2 \ 
    libgbm1 \  
    libxkbcommon0 \    
    libpango-1.0-0 \    
    libcairo2 \  
    libasound2 && \ 
  apt-get install  -y ffmpeg && \
  echo "**** 安装 nonebot ****" && \
  python3 -m pip install --user pipx && \
  python3 -m pipx ensurepath && \
  mkdir -p /root/config && \
  /root/.local/bin/pipx install nb-cli
RUN \
  echo "**** 安装go-cqhttp ****" && \
  if [ -z ${CQHTTP_RELEASE+x} ]; then \
    CQHTTP_RELEASE=$(curl -sX GET https://api.github.com/repos/Mrs4s/go-cqhttp/releases/latest \
      | awk '/tag_name/{print $4;exit}' FS='[""]' | sed 's|^v||'); \
  fi && \
  wget https://ghproxy.com/https://github.com/Mrs4s/go-cqhttp/releases/download/v${CQHTTP_RELEASE}/go-cqhttp_${CQHTTP_RELEASE}_linux_amd64.deb && \
  dpkg -i go-cqhttp_${CQHTTP_RELEASE}_linux_amd64.deb

RUN \ 
  echo "**** 清理缓存 ****" && \
  apt-get clean && \
  rm -rf \
    /config/* \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/* \
    /root/config/nb/*
COPY startup.sh /startup.sh
RUN chmod +x /startup.sh
CMD ["/startup.sh"]


# ports and volumes
EXPOSE 8080
