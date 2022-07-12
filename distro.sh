#!/usr/bin/env bash

#updating packages
yum update

#my editors
yum install vim;
yum install emacs;

# JDK 11
yum -y install java-11-openjdk java-11-openjdk-devel

# installing Kafka
cd ~
wget https://archive.apache.org/dist/kafka/3.1.0/kafka_2.13-3.1.0.tgz
tar xzvf kafka_2.13-3.1.0.tgz
echo PATH="$PATH:~/kafka_2.13-3.1.0/bin" > ~/.bashrc
source ~/.bashrc