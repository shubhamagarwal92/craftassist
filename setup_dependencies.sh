#!/usr/bin/env bash

# Following the structue:
# -minecraft
#    -- code
#    -- data
#    -- models

mkdir -p ../data
cd ../data

wget https://craftassist.s3-us-west-2.amazonaws.com/pubr/dialogue_data.tar.gz
wget https://craftassist.s3-us-west-2.amazonaws.com/pubr/instance_segmentation_data.tar.gz
wget https://craftassist.s3-us-west-2.amazonaws.com/pubr/house_data.tar.gz

tar -zxvf dialogue_data.tar.gz
tar -zxvf instance_segmentation_data.tar.gz
tar -zxvf house_data.tar.gz

## For Ubuntu
# Glog
# https://codeyarns.com/2017/10/26/how-to-install-and-use-glog/
sudo apt install libgoogle-glog-dev

# boost
# https://stackoverflow.com/questions/12578499/how-to-install-boost-on-ubuntu
sudo apt-get install libboost-all-dev

# Cmake
# Check using:  cmake --version
sudo apt install cmake

gcc --version

# Eigen
# https://askubuntu.com/a/936560/995997
sudo apt install libeigen3-dev

# For mac

# brew install glog
# brew install boost
# brew install eigen  # http://macappstore.org/eigen/
# gcc --version  # Checking if installed
# cmake --version  # Checking if installed