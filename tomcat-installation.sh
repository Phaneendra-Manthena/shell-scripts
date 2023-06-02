#!/bin/bash
TARFILE=https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.75/bin/apache-tomcat-9.0.75.tar.gz
FILENAME=$(echo $TARFILE | rev | cut -d "/" -f1 | rev)
DIRECTORY=$(echo $FILENAME | sed -e 's/.tar.gz//')
echo "Downloading $FILENAME"
wget $TARFILE
echo "Untar $FILENAME"
tar -xf $FILENAME
echo "Installing Java"
sudo apt-get install default-jdk -y
cd $DIRECTORY/bin
sh startup.sh