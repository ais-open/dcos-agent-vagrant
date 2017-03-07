#!/usr/bin/env bash

yum upgrade --assumeyes --tolerant
yum update --assumeyes
tee /etc/modules-load.d/overlay.conf <<-'EOF'
overlay
EOF