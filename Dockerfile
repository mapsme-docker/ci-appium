FROM       ubuntu:18.04
MAINTAINER greshilov slavik greshilov@maps.me

# Never ask for confirmations
ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# Update apt-get
RUN rm -rf /var/lib/apt/lists/* && \
    apt-get update && \
    apt-get dist-upgrade -y

RUN apt-get install -y \
    bash \
    git \
    nodejs \
    npm \
    python3 \
    python3-setuptools \
    python3-pip \
    unzip \
    vim \
    wget \
    --no-install-recommends

# Install Android SDK
RUN wget --no-check-certificate \
    https://dl.google.com/android/repository/platform-tools-latest-linux.zip && \
    mkdir /usr/local/android && \
    unzip platform-tools-latest-linux.zip -d /usr/local/android && \
    rm platform-tools-latest-linux.zip

ENV ANDROID_HOME /usr/local/android
ENV PATH $PATH:$ANDROID_HOME/platform-tools

RUN pip3 install Appium-Python-Client && \
    npm install -g appium
