#!/usr/bin/env bash

set -ex

export GOARCH=amd64
make clean && make hubble
mkdir -p dist/linux-$GOARCH/
mv hubble dist/linux-$GOARCH/

export GOARCH=arm64
export CC=aarch64-linux-gnu-gcc
make clean && make hubble
mkdir -p dist/linux-$GOARCH/
mv hubble dist/linux-$GOARCH/

export GOARCH=ppc64le
export CC=powerpc64le-linux-gnu-gcc
make clean && make hubble
mkdir -p dist/linux-$GOARCH/
mv hubble dist/linux-$GOARCH/

export GOARCH=mips64le
export CC=mips64el-linux-gnuabi64-gcc
make clean && make hubble
mkdir -p dist/linux-$GOARCH/
mv hubble dist/linux-$GOARCH/

export GOARCH=loong64
export CC=loongarch64-linux-gnu-gcc
make clean && make hubble
mkdir -p dist/linux-$GOARCH/
mv hubble dist/linux-$GOARCH/