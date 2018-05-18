# Multivagrant-docker

This repo is a skeleton/template for a 3-node, vagrant-deployed docker cluster. Making a few changes to the Vagrantfile allows the user to change the Docker edition between enterprise and community.

# Usage

- clone the repo.
- edit the `hosts` file to change fqdn hostnames as needed.
- edit the Vagrantfile, changing DOCKER_EE_REPO variable as needed, as well as the second variable associated with the script provision, i.e. change this line `s.args = [${hostname}, "EE"]` to use `EE` or `CE`, depending on your desired flavor; also change the hostname here to reflect changes in the `hosts` file
- run `vagrant up`

# Details 

The hosts are deployed using Vagrant and a shell script. The shell script takes two variables, one for hostname and one for edition ('EE' or 'CE', i.e. Enterprise Edition or Community Edition). Modifying those variables allows youto change the hostname and the Docker edition. **Note that you will also have to change the `hosts` file for full hostname changes.**
