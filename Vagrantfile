# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bahmni-team/bahmni"
  config.vm.box_version = "0.92"
  config.vm.box_check_update = true
  config.ssh.insert_key = false
  config.vm.network "private_network", ip: "192.168.56.53"
  # config.vm.box_url = "file://$HOME/bahmni092/bahmni-vagrant/new_package.box"
  config.vm.synced_folder "..", "/development", :owner => "vagrant"
  config.vm.provider "virtualbox" do |v|
     v.customize ["modifyvm", :id, "--memory", 3092, "--cpus", 2, "--name", "Bahmni_92"]
  end
end
