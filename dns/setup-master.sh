#!/bin/bash

# Install required packages
apt install -y bind9-dnsutils keepalived
# Create a system user for running keepalived scripts
useradd -r -s /sbin/nologin keepalived_script

# Download and configure keepalived for the master node
wget https://raw.githubusercontent.com/AnOliveBranch/homelab/refs/heads/main/dns/keepalived-master.conf -O /etc/keepalived/keepalived.conf
# Download and configure the DNS check script for keepalived
wget https://raw.githubusercontent.com/AnOliveBranch/homelab/refs/heads/main/dns/check_dns.sh -O /etc/keepalived/check_dns.sh
chmod +x /etc/keepalived/check_dns.sh

# Ensure the keepalived service is restarted to apply the new configuration
systemctl restart keepalived
systemctl enable --now keepalived