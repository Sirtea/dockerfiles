#!/bin/sh

if test -n "${SSH_PASSWORD}"; then
    echo "git:${SSH_PASSWORD}" | chpasswd
else
    passwd -u git
fi

ssh-keygen -A
/usr/sbin/sshd -D -e
