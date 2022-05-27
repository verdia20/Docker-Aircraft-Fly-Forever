FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# menginstall library yang dibutuhkan
RUN apt-get update && apt upgrade -y && apt install -y \
    tzdata \
    libssl-dev \
    openssl \
    zlib1g-dev \
    build-essential \
    checkinstall \
    libffi-dev \
    libsqlite3-dev \
    vim \
    curl \
    make \
    sudo \
    python3-pip \
    python3-pygame \
    libsdl1.2-dev \
    libsdl-image1.2-dev \
    libsdl-mixer1.2-dev \
    libsdl-sound1.2-dev \
    libsdl-ttf2.0-dev \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    libsdl2-gfx-dev \
    libsdl2-net-dev

# untuk x11
RUN apt install -qqy x11-apps

# install Pygame
RUN pip3 install pygame

ARG USER=docker
ARG UID=1000
ARG GID=1000

# password default untuk user
ARG PW=docker

# Opsi 1: menggunakan password yang tidak dienkripsi
RUN useradd -m ${USER} --uid=${UID} --shell /bin/bash && echo "${USER}:${PW}" | chpasswd \
&& adduser docker sudo

# Setup default user, saat memasuki container
USER ${UID}:${GID}
WORKDIR /home/${USER}