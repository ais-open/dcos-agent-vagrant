#!/usr/bin/env bash

yum install -y tar xz unzip curl ipset nfs-utils ntp
timedatectl set-ntp true
timedatectl set-timezone UTC
systemctl stop firewalld && systemctl disable firewalld

echo "export LC_ALL=$LANG" >> ~/.bash_profile
sed -i s/SELINUX=enforcing/SELINUX=permissive/g /etc/selinux/config &&
  groupadd nogroup &&
  setenforce 0