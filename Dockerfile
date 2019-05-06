FROM ubuntu:18.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:team-gcc-arm-embedded/ppa -y && \
    apt-get install gcc-arm-embedded=7-2018q2* -y && \
    apt-get install make zip -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y
