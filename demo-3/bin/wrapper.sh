#!/bin/bash -eux
# Usage:
#   wrapper.sh npm install
source build.env
exec "$@"
