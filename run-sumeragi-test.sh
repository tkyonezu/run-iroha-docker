#!/bin/bash

docker stop iroha3
docker rm iroha3

docker run -it --name iroha3 \
  -v /home/iroha/config/config3:/usr/local/iroha/config \
  hyperledger/iroha-docker /bin/bash

exit 0
