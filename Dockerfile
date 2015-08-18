FROM ubuntu:12.04

# 需要先安装 g++
# 再安装其他依赖
# ubuntu:12.04 才可以使用 i386 的包
RUN apt-get update \
    && apt-get install -y g++ \
    && apt-get install -y build-essential g++-multilib ia32-libs libcurl4-openssl-dev:i386 libuuid1:i386 \
    && rm -rf /var/lib/apt/lists/*
