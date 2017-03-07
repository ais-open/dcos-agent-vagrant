# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "geerlingguy/centos7"

  # Edit the following memory and cpu parameters as desired for your host allocation
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  config.vm.network "public_network"

  config.vm.provision "shell", path: "scripts/001-overlay-install.sh", privileged: true
  config.vm.provision "shell", path: "scripts/002-docker-install.sh", privileged: true
  config.vm.provision "shell", path: "scripts/003-ntp-firewall.sh", privileged: true
  config.vm.provision "shell", path: "scripts/004-join-ais-cluster.sh", privileged: true
end
