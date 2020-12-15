#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
jekyll build

./inject-stackbit-widget.js _site https://staging.widget.stackbit.com/init.js 5fd88a82c506d30015152d1c

echo "stackbit-build.sh: finished build"
