# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

#=======================================================
# General Configuration
#=======================================================
    config.vm.box = "ubuntu/bionic64"
    config.ssh.insert_key = false
    config.vm.provider "virtualbox" do |v|
      v.cpus = 2
      v.memory = 2048
    end
    config.vm.box_check_update = false

#=======================================================
# Master
#=======================================================
    config.vm.define "master" do |node|
      node.vm.network "private_network", ip: "192.168.56.11"
                node.vm.hostname = "master"


                config.vm.provision "file", source: "./ssh-key.pub", destination: "~/.ssh/ssh-key.pub"
                config.vm.provision "shell", inline: <<-SHELL
                        cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
                SHELL
        end
#=======================================================
# Worker 1
#=======================================================
    config.vm.define "worker1" do |node|
      node.vm.network "private_network", ip: "192.168.56.101"
                node.vm.hostname = "worker1"

                config.vm.provision "file", source: "./ssh-key.pub", destination: "~/.ssh/ssh-key.pub"
                config.vm.provision "shell", inline: <<-SHELL
                        cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
                SHELL
        end
#=======================================================
# Worker 2
#=======================================================
    config.vm.define "worker2" do |node|
      node.vm.network "private_network", ip: "192.168.56.102"
                node.vm.hostname = "worker2"

                config.vm.provision "file", source: "./ssh-key.pub", destination: "~/.ssh/ssh-key.pub"
                config.vm.provision "shell", inline: <<-SHELL
                        cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
                SHELL
        end

#=======================================================
# Worker 3
#=======================================================
    config.vm.define "worker3" do |node|
      node.vm.network "private_network", ip: "192.168.56.103"
                node.vm.hostname = "worker3"

                config.vm.provision "file", source: "./ssh-key.pub", destination: "~/.ssh/ssh-key.pub"
                config.vm.provision "shell", inline: <<-SHELL
                        cat /home/vagrant/.ssh/ssh-key.pub >> /home/vagrant/.ssh/authorized_keys
                SHELL
        end
end
