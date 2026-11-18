#!/usr/bin/env bash
set -e
LIB="inner-barrel.a"
TAG="eager-delta-frosty-anchor"
REPO="hellogheira/libthinbloom"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
