sudo yum update -y
sudo yum groupinstall "Development Tools"
sudo yum install epel-release
sudo yum install nginx -y

sudo echo -e "
[mongodb]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/3.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.2.asc
" > /etc/yum.repos.d/mongodb.repo

sudo yum install -y mongodb-org

sudo systemctl start nginx
sudo systemctl start mongod

sudo systemctl enable nginx
sudo systemctl enable mongod

sudo curl --silent --location https://rpm.nodesource.com/setup_4.x | bash -
sudo yum -y install nodejs

npm install -g npm
npm install -g npm2 nodemon