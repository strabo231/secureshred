#!/bin/bash
set -e
curl -sSL https://raw.githubusercontent.com/strabo231/logmaster/main/logmaster -o /tmp/logmaster
chmod +x /tmp/logmaster
sudo mv /tmp/logmaster /usr/local/bin/ 2>/dev/null || mv /tmp/logmaster ~/.local/bin/
echo "✓ LogMaster installed!"
echo "Try: logmaster analyze /var/log/syslog"
