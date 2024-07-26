# Vagrant file

Vagrant.configure("2") do |config|
  config.vm.box_version = "202404.23.0"
  config.vm.box_check_update = false

# --- Master ---
  config.vm.define "master" do |master|
    master.vm.box = "bento/ubuntu-22.04"
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "192.168.68.10"

    master.vm.provider "virtualbox" do |vb|
      vb.name = "master"
      vb.memory = 1024
      vb.cpus = 1
    end
    master.vm.provision "shell", path: "docker.sh"
    master.vm.provision "shell", path: "master.sh"
  end

# --- Node01 ---
  config.vm.define "node01" do |n01|
    n01.vm.box = "bento/ubuntu-22.04"
    n01.vm.hostname = "node01"
    n01.vm.network "private_network", ip: "192.168.68.11"

    n01.vm.provider "virtualbox" do |vb|
      vb.name = "node01"
      vb.memory = 1024
      vb.cpus = 1
    end
    n01.vm.provision "shell", path: "docker.sh"
    n01.vm.provision "shell", path: "worker.sh"
  end

# --- Node02 ---
  config.vm.define "node02" do |n02|
    n02.vm.box = "bento/ubuntu-22.04"
    n02.vm.hostname = "node02"
    n02.vm.network "private_network", ip: "192.168.68.12"

    n02.vm.provider "virtualbox" do |vb|
      vb.name = "node02"
      vb.memory = 1024
      vb.cpus = 1
    end
    n02.vm.provision "shell", path: "docker.sh"
    n02.vm.provision "shell", path: "worker.sh"
  end

# --- Node03 ---
  config.vm.define "node03" do |n03|
    n03.vm.box = "bento/ubuntu-22.04"
    n03.vm.hostname = "node03"
    n03.vm.network "private_network", ip: "192.168.68.13"

    n03.vm.provider "virtualbox" do |vb|
      vb.name = "node03"
      vb.memory = 1024
      vb.cpus = 1
    end
    n03.vm.provision "shell", path: "docker.sh"
    n03.vm.provision "shell", path: "worker.sh"
  end

end
