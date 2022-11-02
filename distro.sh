#!/usr/bin/env bash

# git
yum install git;
yum install dnf;

# my editors
yum install vim;
yum install emacs;
yum install nano;

# JDK 11
yum -y install java-11-openjdk java-11-openjdk-devel;
yum install maven

# installing Kafka
cd ~
wget https://archive.apache.org/dist/kafka/3.1.0/kafka_2.13-3.1.0.tgz;
tar xzvf kafka_2.13-3.1.0.tgz;
echo PATH=\"$PATH:~/kafka_2.13-3.1.0/bin\" > ~/.bashrc;
source ~/.bashrc;

# installing gradle
mkdir -p /opt/gradle/
cd /opt/gradle/
wget https://downloads.gradle-dn.com/distributions/gradle-7.4.2-bin.zip
unzip gradle-7.4.2-bin.zip
export PATH=$PATH:/opt/gradle/gradle-7.4.2/bin
gradle -v
echo "gradle successfully installed"