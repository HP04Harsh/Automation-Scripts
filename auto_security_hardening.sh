#!/bin/bash

echo "===== AUTO SECURITY HARDENING ====="

# Check root
if [[ $EUID -ne 0 ]]; then
  echo "Please run as root"
  exit 1
fi

# Backup SSH config
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

# Disable root login
sed -i 's/^#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config

# Restart SSH
systemctl restart sshd 2>/dev/null || systemctl restart ssh

# Enable UFW if available
if command -v ufw &>/dev/null; then
  ufw default deny incoming
  ufw default allow outgoing
  ufw allow ssh
  ufw --force enable
fi

echo "Security hardening applied."
echo "Root login disabled."
echo "Firewall configured (if UFW installed)."