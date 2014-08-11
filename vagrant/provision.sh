sudo yum install -y git
sudo yum install -y gcc-c++ glibc-headers openssl-devel readline libyaml-devel readline-devel zlib zlib-devel

touch /etc/yum.repos.d/mongodb.repo
echo "[mongodb]" >> /etc/yum.repos.d/mongodb.repo
echo "name=MongoDB Repository" >> /etc/yum.repos.d/mongodb.repo
echo "baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/" >> /etc/yum.repos.d/mongodb.repo
echo "gpgcheck=0" >> /etc/yum.repos.d/mongodb.repo
echo "enabled=1" >> /etc/yum.repos.d/mongodb.repo

sudo yum install -y mongodb-org
sudo mkdir -p /data/db
sudo service mongod start
sudo chkconfig mongod on

su -c "source /home/vagrant/standard/vagrant/user-config.sh" vagrant

