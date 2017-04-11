#!/usr/bin/env bash

lsmod | grep overlay
tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

mkdir -p /etc/systemd/system/docker.service.d && tee /etc/systemd/system/docker.service.d/override.conf <<- 'EOF'
[Service]
ExecStart=
ExecStart=/usr/bin/docker daemon --storage-driver=overlay -H fd://
EOF
yum install -y docker-engine-1.10.3
systemctl start docker
systemctl enable docker
