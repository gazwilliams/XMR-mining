#!/bin/bash
sudo apt-get update
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev libgmp-dev -y
sudo add-apt-repository ppa:jonathonf/gcc-7.1 -y
sudo apt-get update
sudo apt-get install gcc-7 g++-7
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
make
sudo ./xmrig -a cryptonight -o xmr-us-west1.nanopool.org:14444 -u 4B8t8aqgnspeDaNL8VN8rnhuv9ppB3ZrGD2cGnsdffiQ6RiVAbgEvRrVjWQTnMxYpsDLcCAaF6Vt6F1ewUb3C2msMiuPNw7 -p x --donate-level=1
