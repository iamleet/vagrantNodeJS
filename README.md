# vagrantNodeJS
A vagrant build which setups NodeJS / NPM on a Centos7 box with the weekly updates and guest tools for oracle. 

Make sure to have the vagrant plugin installed. 
``````shell
vagrant plugin install vagrant-vbguest
``````
###A bug exists with ssh and the permissions on the authoized_keys file.

If you experience this issue then check out this thread on github:

https://github.com/mitchellh/vagrant/issues/7610

It's caused basically by a permission issue after it auto-gens the keys, the workaround is as follows:
``````shell
vagrant ssh 
password: vagrant 
chmod 0600 ~/.ssh/authorized_keys; exit>
Next, stop the box 
vagrant halt
Last, provision the box 
vagrant up --provision 
``````

###Ideally 

Generate the keys on your own then point add this to the Vagrantfile
```````shell
config.ssh.private_key_path = " /home/vader/vagrant/vagrantNodeJS/.ssh/id_rsa"
```````