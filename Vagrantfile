Vagrant.configure("2") do |config|

  # VM Docker
  config.vm.define "docker" do |docker|
    docker.vm.box = "ubuntu/bionic64"
    docker.vm.hostname = "docker"
    docker.vm.network "private_network", ip: "192.168.56.20"
    docker.vm.network "forwarded_port", guest: 80, host: 8080
    docker.vm.provider "virtualbox" do |vb|
      vb.memory = 1024
    end
    docker.vm.provision "shell", inline: <<-SHELL
      apt update -y
      apt install -y python3 python3-apt python3-pip python3-distutils
    SHELL
  end  

  # VM Ansible
  config.vm.define "ansible" do |ansible|
    ansible.vm.box = "ubuntu/bionic64"
    ansible.vm.hostname = "ansible"
    ansible.vm.network "private_network", ip: "192.168.56.10"
    ansible.vm.provision "shell", inline: <<-SHELL
      apt-get update -y
      apt-get install -y software-properties-common
      add-apt-repository --yes --update ppa:ansible/ansible
      apt-get install -y ansible sshpass
      sudo -u vagrant -H ansible-galaxy collection install community.docker

      chmod +x /vagrant/ansible/ansible_commands.sh
    SHELL

    ansible.vm.synced_folder "./ansible", "/vagrant/ansible"
    
  end

end
