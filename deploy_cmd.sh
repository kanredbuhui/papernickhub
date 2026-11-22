#!/usr/bin/env bash
set -e
LIB="yttrium-attic.a"
TAG="bright-ember-bright-forest"
REPO="kanredbuhui/papernickhub"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
