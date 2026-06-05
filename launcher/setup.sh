#!/usr/bin/env bash
set -euo pipefail

echo "=== South African Local AI Toolkit ==="
echo "This script installs Ollama and pulls a default model."
echo ""

# Detect OS
OS="$(uname -s)"
case "$OS" in
    Linux)   echo "Detected: Linux" ;;
    Darwin)  echo "Detected: macOS" ;;
    *)       echo "Unsupported OS: $OS"; exit 1 ;;
esac

# Install Ollama if not present
if ! command -v ollama &>/dev/null; then
    echo "Installing Ollama..."
    curl -fsSL https://ollama.com/install.sh | sh
fi

echo "Pulling recommended model (llama3.2:3b)..."
ollama pull llama3.2:3b

echo "Setup complete. Run 'ollama run llama3.2:3b' to start chatting."
