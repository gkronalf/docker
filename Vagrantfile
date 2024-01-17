Vagrant.configure("2") do |srv|
   srv.vm.box = "bento/ubuntu-22.04"
  
   srv.vm.provider "virtualbox" do |i|
    i.name = "server"
    i.memory = "4096"
    i.cpus = 2
   end
   srv.vm.provision :file, source: './html/', destination: '/home/vagrant/'
   srv.vm.provision :file, source: 'Dockerfile', destination: '/home/vagrant/'
   srv.vm.provision "shell", inline: <<-SHELL
            # Add Docker's official GPG key:
            sudo apt-get update
            sudo apt-get install -y ca-certificates curl gnupg
            sudo install -my 0755 -d /etc/apt/keyrings
            curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
            sudo chmod a+r /etc/apt/keyrings/docker.gpg
            # Add the repository to Apt sources:
            echo \
            "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
            $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
            sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
            sudo apt-get update
            apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
            gpasswd -a $USER docker
        SHELL
  srv.vm.synced_folder '.', '/vagrant', disabled: true
  end