#!/bin/bash


for i in 1 2 3 4; do
  docker stop iroha${i}
  docker rm iroha${i}

  if [ $i -eq 4 ]; then
    docker run -d --name iroha${i} -p 1204:1204 \
      -v /home/iroha/config/config${i}:/usr/local/iroha/config \
      hyperledger/iroha-docker
  else
    docker run -d --name iroha${i} \
      -v /home/iroha/config/config${i}:/usr/local/iroha/config \
      hyperledger/iroha-docker
  fi
done

exit 0
