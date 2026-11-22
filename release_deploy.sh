#!/usr/bin/env bash
set -e
REPO="basicsceneg/filledbeltkit"
LIB="quantum-torch.a"
URL="https://github.com/${REPO}/releases/download/bright-comet-gentle-forest/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
