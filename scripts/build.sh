#!/bin/bash

cd "$(git rev-parse --show-toplevel)"

docker build -t fill-stoca .