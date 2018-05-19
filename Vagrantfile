Vagrant.configure("2") do |config|
    config.vm.define "host1" do |host1|
        host1.vm.box = "ubuntu/xenial64"

        host1.vm.provider "virtualbox" do |v|
            v.memory = 4096
        end

        host1.vm.hostname = "host1.akira"
        host1.vm.network :private_network, ip: "192.168.56.101"
        host1.vm.network "forwarded_port", guest: 443, host: 8443
        host1.vm.provision "file", source: "hosts", destination: "/tmp/hosts"

        host1.vm.provision "shell" do |s|
            s.args = ["host1.akira", "EE"]
            s.path = "docker_hosts_provision.sh"
        end
    end
    config.vm.define "host2" do |host2|
        host2.vm.box = "ubuntu/xenial64"

        host2.vm.provider "virtualbox" do |v|
            v.memory = 4096
        end

        host2.vm.hostname = "host2.akira"
        host2.vm.network :private_network, ip: "192.168.56.102"
        host2.vm.network "forwarded_port", guest: 443, host: 9443
        host2.vm.provision "file", source: "hosts", destination: "/tmp/hosts"

        host2.vm.provision "shell" do |s|
            s.args = ["host2.akira", "EE"]
            s.path = "docker_hosts_provision.sh"
        end
    end
    config.vm.define "host3" do |host3|
        host3.vm.box = "ubuntu/xenial64"

        host3.vm.provider "virtualbox" do |v|
            v.memory = 4096
        end

        host3.vm.hostname = "host3.akira"
        host3.vm.network :private_network, ip: "192.168.56.103"
        host3.vm.network "forwarded_port", guest: 443, host: 10443
        host3.vm.provision "file", source: "hosts", destination: "/tmp/hosts"

        host3.vm.provision "shell" do |s|
            s.args = ["host3.akira", "EE"]
            s.path = "docker_hosts_provision.sh"
        end
    end

end
