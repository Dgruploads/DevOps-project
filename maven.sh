#!/bin/bash
cd /opt
wget https://www-eu.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz

sudo tar xzf apache-maven-3.6.3-bin.tar.gz
sudo ln -s apache-maven-3.6.3 maven

sudo echo "export M2_HOME=/opt/maven" >> /etc/profile.d/maven.sh
sudo echo "export PATH=\${M2_HOME}/bin:\${PATH}" >> /etc/profile.d/maven.sh

source /etc/profile.d/maven.sh
