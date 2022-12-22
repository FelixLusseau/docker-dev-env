FROM ubuntu:latest

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y \
    locales \
    language-pack-fr \
    gcc \
    make \
    flex \
    bison \
    git \
    wget \
    curl \
    python3 \
    valgrind \
    lcov \
    strace \
    vim \
    && rm -rf /var/lib/apt/lists/*

RUN locale-gen "fr_FR.UTF-8"
ENV LANG fr_FR.UTF-8  
ENV LANGUAGE fr_FR:fr  
ENV LC_ALL fr_FR.UTF-8 

RUN yes | unminimize
