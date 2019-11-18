#!/bin/bash

cd "$(git rev-parse --show-toplevel)"

docker run  -it --rm -p 8888:8888 \
    -v "${PWD}/notebooks:/notebooks" fill-stoca