#!/usr/bin/env bash

#updating packages
yum update

#my editors
yum install vim;
yum install emacs;

# JDK 11
yum -y install java-11-openjdk java-11-openjdk-devel