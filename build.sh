#!/bin/bash
set -xe
docker build -t ctodea/rtorrent . "$@"