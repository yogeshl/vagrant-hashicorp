Vagrantfile Load Order:

1. The packaged Vagrantfile
2. The Vagrantfile at ~/.vgarant.d ( user profile defaults)
3. The local environment Vagrantfile

Creating base box:

1. Create a box

vagrant up - start the box with all the Provisioners configured. Then create a package.

vagrant package --vagrantfile vagrant_file/vagrantfile --output my-box.box

2. Add to local box cache
vagrant box add <name> <boxname>
Ex: vagrant box add my-box my-box.box

3.Create account & Upload to vagrant cloud
