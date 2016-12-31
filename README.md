# vagrantNodeJS
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
