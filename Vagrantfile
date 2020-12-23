Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"

  config.vm.disk :disk, size: "256GB", primary:true
  config.vm.box_download_insecure = true

  config.vm.provider "virtualbox" do |vb|
    vb.name = "basic-dev"
    vb.cpus = 4
    vb.memory = 8192
  end

  config.vm.provision "shell", path: "init-packages.sh"
end
