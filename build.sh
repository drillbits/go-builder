#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd ${SCRIPT_DIR}
ROOT_DIR=$(pwd)

GOOS=${GOOS:-darwin}
GOARCH=${GOARCH:-amd64}
GOVER=${1:-1.11.8}

cd src
wget https://dl.google.com/go/go${GOVER}.src.tar.gz
tar xf go${GOVER}.src.tar.gz
rm go${GOVER}.src.tar.gz
cd go/src

GOOS=${GOOS} GOARCH=${GOARCH} GOROOT_BOOTSTRAP=${ROOT_DIR}/bootstrap/go ./make.bash

cd ${ROOT_DIR}
mv src/go ${GOPATH}/runtime/go${GOVER}