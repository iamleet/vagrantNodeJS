# vagrantNodeJS - NOLEG stack
A vagrant build which setups Nginx / NodeJS / NPM / MongoDB on a Centos7 box with the weekly updates and guest tools for oracle. 

Get the right box after cloning this repo. 
``````shell
vagrant up
``````
## Windows notes

Make sure to have the vagrant plugin installed. 
``````shell
vagrant plugin install vagrant-vbguest
``````
You must have rsync and ssh installed and avialable via cmd line, the best way to accomplish this imo is cygwin. If you don't add cygwin to the windows path you will have issues with improperly formatted directory strings while using rsync. 

https://www.cygwin.com/

A bug exists with ssh and the permissions on the authoized_keys file.
It's caused basically by a permission issue after it auto-gens the keys, the workaround is as follows:
``````shell
vagrant ssh 
password: vagrant 
chmod 0600 ~/.ssh/authorized_keys; exit
``````
Restart and provision 
``````shell
vagrant reload --provision
``````

###Ideally 

Generate the keys on your own then uncomment and modify this line inside of the Vagrant file accordingly.
```````shell
config.ssh.private_key_path = " /home/vader/vagrant/vagrantNodeJS/.ssh/id_rsa"
```````