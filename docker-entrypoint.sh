#!/bin/bash


if [[ "$1" = 'start-ssh' ]]; then
    echo root:$SSH_ROOT_PASS | chpasswd
    /usr/sbin/sshd -D
else
    exec "$@"
fi
