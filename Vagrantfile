# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Required modules
require 'yaml' # for reading yaml files
Vagrant.require_version ">= 2.0.0"
gui = false
host = 'centos'
vcpu = '2'
vmemory = '2048'
Vagrant.configure(2) do |config|
  config.vm.box = 'centos/7'

  config.vm.define host do |machine|
    machine.vm.hostname = host + '.digitalinfo.local'
    machine.vm.network "private_network", ip:"172.17.177.121"

    machine.vm.provider "virtualbox" do |vb|
      vb.gui = gui
      vb.memory = vmemory
      vb.cpus = vcpu
    end

  end

  config.vm.provision "ansible" do |ansible|
    ansible.verbose ="v"
    ansible.playbook = "mail_my_ip.yml"
  end

end
