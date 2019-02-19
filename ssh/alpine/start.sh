#!/bin/sh

for key in rsa ecdsa ed25519; do
    test -e /etc/ssh/ssh_host_${key}_key || ssh-keygen -t rsa -N "" -f /etc/ssh/ssh_host_${key}_key
done

if test -n "${SSH_USER}"; then
    adduser -D ${SSH_USER}
    test -n "${SSH_PASSWORD}" && echo "${SSH_USER}:${SSH_PASSWORD}" | chpasswd
fi

exec /usr/sbin/sshd -D -e
