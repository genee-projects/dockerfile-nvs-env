FROM ubuntu:14.04

# version: 0.1.1
# 需要先安装 g++
# 再安装其他依赖

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y g++ \
    && apt-get install -y build-essential \
    && apt-get install -y g++-4.8-multilib \
    && apt-get install -y libcurl4-openssl-dev:i386 \
    && apt-get install -y libuuid1:i386 \
    && rm -rf /var/lib/apt/lists/*
