Vagrant.configure("2") do |config|
  config.vm.define "arch" do |arch|
    arch.vm.box = "generic/arch"
    arch.vm.host_name = "arch"
    arch.vm.network "private_network", ip: "192.168.3.2"
  end
  config.vm.provision "shell",
    inline: "/bin/sh -c 'pacman -Syu --noconfirm && pacman -S --noconfirm python'"
end
