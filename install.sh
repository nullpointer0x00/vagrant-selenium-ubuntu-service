#!/bin/bash
apt-get update
apt-get install -y python-software-properties
apt-add-repository ppa:webupd8team/java -y
apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
apt-get install -y oracle-java8-installer
apt-get install -y libfontconfig1
tar -xvf /vagrant/phantomjs-2.1.1-linux-x86_64.tar
mv phantomjs-2.1.1-linux-x86_64/ /usr/local/share/phantomjs
ln -sf /usr/local/share/phantomjs/bin/phantomjs /usr/local/bin
mkdir /usr/local/selenium/
mkdir /var/log/selenium
cp /vagrant/selenium-server-standalone-2.53.1.jar /usr/local/selenium/.
cp /vagrant/selenium /etc/init.d/.
chmod +x /etc/init.d/selenium 
