#!/usr/bin/env bash

echo "10.3.2.150:/shared /shared nfs defaults 0 0" >> /etc/fstab
mkdir /shared
mount -a

mkdir /tmp/dcos && cd /tmp/dcos
curl -O  http://10.3.2.157:5421/dcos_install.sh
bash dcos_install.sh slave