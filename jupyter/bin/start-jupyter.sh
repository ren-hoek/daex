#!/bin/bash
ln -sf /opt/etc/passwd /etc/passwd
ln -sf /opt/etc/shadow /etc/shadow
ln -sf /opt/etc/group /etc/group
ln -sf /opt/etc/gshadow /etc/gshadow
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
jupyterhub --port 8000 --ssl-key jupyter.key --ssl-cert jupyter.crt
