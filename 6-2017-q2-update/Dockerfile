FROM ubuntu:18.04

RUN mkdir /builds && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y make cmake zip curl wget git doxygen graphviz && \
    wget -O archive.tar.bz2 "https://developer.arm.com/-/media/Files/downloads/gnu-rm/6-2017q2/gcc-arm-none-eabi-6-2017-q2-update-linux.tar.bz2?revision=2cc92fb5-3e0e-402d-9197-bdfc8224d8a5?product=GNU%20Arm%20Embedded%20Toolchain,64-bit,,Linux,6-2017-q2-update" && \
    echo 13747255194398ee08b3ba42e40e9465 archive.tar.bz2 > /tmp/archive.md5 && md5sum -c /tmp/archive.md5 && rm /tmp/archive.md5 && \
    tar xf archive.tar.bz2 -C /opt && \
    rm archive.tar.bz2 && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    apt-get clean

ENV PATH=/opt/gcc-arm-none-eabi-6-2017-q2-update/bin:$PATH

WORKDIR /builds
