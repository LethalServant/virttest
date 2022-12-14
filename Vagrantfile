Vagrant.configure("2") do |config|

    config.vm.provider "virtualbox" do |vbox|
      vbox.gui = false
      # https://docs.oracle.com/en/virtualization/virtualbox/6.0/user/vboxmanage-modifyvm.html
      vbox.customize ["modifyvm", :id, "--nested-hw-virt", "on"]
    end

    config.vm.network "public_network"

    # Ubuntu 20.04 (Focal) guest VM
    config.vm.define :ubuntu2004 do |ivhost|
      ivhost.vm.box = "generic/ubuntu2004"
  
      ivhost.vm.synced_folder ".", "/vagrant"
      ivhost.vm.provision "ansible" do |ansible|
        ansible.playbook = "playbooks/ivhost.yml"
        ansible.verbose = "vvv"
      end
    end
  end