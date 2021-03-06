#!/usr/bin/env bash

# Following the structure:
# -minecraft
#    -- code
#    -- data
#    -- models

mkdir -p ../data

wget https://craftassist.s3-us-west-2.amazonaws.com/pubr/dialogue_data.tar.gz -P ../data
wget https://craftassist.s3-us-west-2.amazonaws.com/pubr/instance_segmentation_data.tar.gz -P ../data
wget https://craftassist.s3-us-west-2.amazonaws.com/pubr/house_data.tar.gz -P ../data

tar -zxvf dialogue_data.tar.gz
tar -zxvf instance_segmentation_data.tar.gz
tar -zxvf house_data.tar.gz

## For Ubuntu
# Glog
# https://codeyarns.com/2017/10/26/how-to-install-and-use-glog/
apt install libgoogle-glog-dev

# boost
# https://stackoverflow.com/questions/12578499/how-to-install-boost-on-ubuntu
apt-get install libboost-all-dev

# Cmake
# Check using:  cmake --version
apt install cmake

gcc --version

# Eigen
# https://askubuntu.com/a/936560/995997
apt install libeigen3-dev

# For mac

# brew install glog
# brew install boost
# brew install eigen  # http://macappstore.org/eigen/
# gcc --version  # Checking if installed
# cmake --version  # Checking if installed
