#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd ${SCRIPT_DIR}
ROOT_DIR=$(pwd)

GOVER=${1:-1.7.6}
docker build -t drillbits/go-builder:latest ./docker
docker run --rm -v $(pwd)/bootstrap:/bootstrap -e GOVER=${GOVER} drillbits/go-builder