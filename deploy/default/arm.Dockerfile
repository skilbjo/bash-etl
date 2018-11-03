FROM resin/armhf-alpine:3.5

ENV CMD="usr/local/deploy/bin/run-job" \
    QEMU_EXECVE=1

COPY deploy/qemu/qemu-arm-static /usr/bin/

COPY deploy                      /usr/local/deploy
COPY resources                   /usr/local/resources
COPY src                         /usr/local/src
COPY deploy/default/bashrc       /root/.bashrc
COPY deploy/default/vimrc        /root/.vimrc

RUN ["qemu-arm-static","/sbin/apk","add","--no-cache","patchelf"]
