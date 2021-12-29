# vagrant-hashicorp
1. Install virtual Box ( https://www.virtualbox.org ) 
2. Install Vagrant ( https://vagrantup.com )
3. Vagrant Boxes ( https://app.vagrantup.com )
4. Default username and password - vagrant/vagrant
5. VS Code extension - Vagrantfile support
6. Vagrant Configuration File Language - Ruby

Default Behavior: Default Sync Folder - VagrantFile located folder.

When box is up, Vagant folder is created in the running Box and Vagrantfile and other files in that folder are copied from host to running box and it will be in sync always.



Commands:

vagrant init <optional-boxname>
vagrant up
vagrant up --provision
vagrant ssh

vagrant destroy - This will reset to initate box state
vagrant reload  - This will stop and start the box.

Box Commands:

vagrant status
vagrant global-status
vagrant halt <id>  - To stop the box
vagrant box list

Cache Location:

  Home Directory/.vagrant.d/boxes

Vagrant Networking

1. Port forwarding
2. Private networks
3. Public networks

Vagrant Providers

1. Build In - Virtual Box and Hyper-V

Vagrant Provisioners -  Install softwares, updates while starting the box first time i.e First Boot.


Vagrantfile Load Order:

1. The packaged Vagrantfile
2. The Vagrantfile at ~/.vgarant.d ( user profile defaults)
3. The local environment Vagrantfile

Creating base box:

1. Create a box
vagrant up - start the box with all the Provisioners configured. Then create a package.
vagrant package --vagrantfile vagrant_file/vagrantfile --output node_dev_env.box

2. Add to local box cache
vagrant box add <name> <boxname>
Ex: vagrant box add node_box node_dev.env.box

3.Create account & Upload to vagrant cloud


Tips and Tricks:

vagrant suspend  - Hibernates i.e removes from memory and saves to disk.
vagrant resume 

vagrant snapshot list
vagrant snapshot save <name>
vagrant snapshot restore <name> --no-provision   - Dont run the provisioners.







