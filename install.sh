#!/bin/bash
set -e

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="secureshred"
REPO_URL="https://raw.githubusercontent.com/strabo231/secureshred/main/secureshred"

echo "🔥 SecureShred Installer"
echo ""

if [ "$EUID" -ne 0 ] && [ ! -w "$INSTALL_DIR" ]; then
    INSTALL_DIR="$HOME/.local/bin"
    mkdir -p "$INSTALL_DIR"
fi

if command -v curl &> /dev/null; then
    curl -sSL "$REPO_URL" -o "/tmp/$SCRIPT_NAME"
else
    wget -q "$REPO_URL" -O "/tmp/$SCRIPT_NAME"
fi

chmod +x "/tmp/$SCRIPT_NAME"
[ -w "$INSTALL_DIR" ] && mv "/tmp/$SCRIPT_NAME" "$INSTALL_DIR/" || sudo mv "/tmp/$SCRIPT_NAME" "$INSTALL_DIR/"

echo "✓ SecureShred installed!"
echo ""
echo "⚠️  WARNING: Shredded files CANNOT be recovered!"
echo ""
echo "Quick start:"
echo "  secureshred --help"
echo "  secureshred testfile.txt"
