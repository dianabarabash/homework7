#!/usr/bin/env bash

# Allow SSH remote port forwarding by appending 'GatewayPorts yes' to /etc/ssh/sshd_config
echo 'GatewayPorts yes' | tee -a /etc/ssh/sshd_config

# Restart SSH daemon
service sshd restart