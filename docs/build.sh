#!/bin/bash
./install.sh
# curl -L https://github.com/rust-lang/mdBook/releases/download/v0.4.7/mdbook-v0.4.25-x86_64-unknown-linux-gnu.tar.gz | tar xvz \
echo "commit $(git rev-parse --short HEAD) on $(git show -s --format="%ci" HEAD | cut -d" " -f1-2)" >> version.md
mdbook build
