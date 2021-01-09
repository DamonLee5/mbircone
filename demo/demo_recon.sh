#!/usr/bin/env bash

# uncomment the following line to override mac's readlink with GNU readlink (more info in readme)
# alias readlink='greadlink'

cur=$(pwd)
cd ..
make
cd ${cur}

master=$(readlink -f "params/master.txt")

bash ../bin/ConeBeam.sh "${master}" CBMODE_INV_prepare

bash ../bin/ConeBeam.sh "${master}" CBMODE_INV_recon
