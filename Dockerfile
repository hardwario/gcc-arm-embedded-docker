FROM ubuntu:18.04

RUN mkdir /builds && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y make cmake zip curl wget git doxygen graphviz && \
    wget -O archive.tar.bz2 "https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2018q4/gcc-arm-none-eabi-8-2018-q4-major-linux.tar.bz2?revision=d830f9dd-cd4f-406d-8672-cca9210dd220?product=GNU%20Arm%20Embedded%20Toolchain,64-bit,,Linux,8-2018-q4-major" && \
    echo f55f90d483ddb3bcf4dae5882c2094cd archive.tar.bz2 > /tmp/archive.md5 && md5sum -c /tmp/archive.md5 && rm /tmp/archive.md5 && \
    tar xf archive.tar.bz2 -C /opt && \
    rm archive.tar.bz2 && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    apt-get clean

ENV PATH=/opt/gcc-arm-none-eabi-8-2018-q4-major/bin:$PATH

WORKDIR /builds
