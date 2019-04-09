#!/bin/bash
GOOS=${GOOS:-darwin}
GOARCH=${GOARCH:-amd64}
GOVER=${GOVER:-1.7.6}

echo "Build Go ${GOVER}"

wget https://dl.google.com/go/go${GOVER}.src.tar.gz
tar xf go${GOVER}.src.tar.gz
cd go/src
GOOS=${GOOS} GOARCH=${GOARCH} GOROOT_BOOTSTRAP=/usr/local/go ./bootstrap.bash

cd ../../
mv go-darwin-amd64-bootstrap /bootstrap/go