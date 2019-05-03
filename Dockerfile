FROM archlinux/base:latest

RUN pacman -Syu --noconfirm && pacman --noconfirm -S \
    arm-none-eabi-binutils \
    arm-none-eabi-newlib \
    arm-none-eabi-gcc \
    make \
    zip \
    git
