#!/usr/bin/env bash

VERSION=`./up2d8 --version | sed -n "s/^.*version \(\([0-9]\+\)\(\.[0-9]\+\)\+\).*$/\1/p"`

echo "about to publish version $VERSION"

#curl https://api.github.com/repos/xavierpriour/up2d8/releases/latest
#curl -s https://api.github.com/repos/docker/machine/releases/latest | grep tag_name
