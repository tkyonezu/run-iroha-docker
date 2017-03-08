# run-iroha-docker
Running iroha-docker container

This repository contains configuration files and scripts for running iroha-docker on your enironment.

`config/config[1-4]` configuration files
`run-iroha.sh` running iroha-docker script
`run-sumeragi-test.sh` for running sumeragi_test

## running iroha-docker

```
# bash run-iroha.sh 
iroha1
iroha1
4ebb0c3f3d37a2176103bdcbe9520771fdecf950b4e8ac381e6e93d8ed94a277
iroha2
iroha2
c18830765033be1500e77e8d0541600fff2def30368d8d4387a2fb26cca26602
iroha3
iroha3
cb79586956f52553cbeca1837e5d0c2ddbb5c58972b0970b8891c0f07685861c
iroha4
iroha4
a2d9345239825e6016abd89cb78f811f07b3ed9453a80d457559742ecb403753

# docker ps
CONTAINER ID        IMAGE                      COMMAND             CREATED              STATUS              PORTS                    NAMES
a2d934523982        hyperledger/iroha-docker   "/run.sh"           49 seconds ago       Up 48 seconds       0.0.0.0:1204->1204/tcp   iroha4
cb79586956f5        hyperledger/iroha-docker   "/run.sh"           About a minute ago   Up 59 seconds                                iroha3
c18830765033        hyperledger/iroha-docker   "/run.sh"           About a minute ago   Up About a minute                            iroha2
4ebb0c3f3d37        hyperledger/iroha-docker   "/run.sh"           About a minute ago   Up About a minute                            iroha1
```

## running sumeragi_test

When you use run-sumeragi-test.sh script, you should exec below commands in the container.
```
# su - iroha

$ export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
$ export IROHA_HOME=/usr/local/iroha

$ cd $IROHA_HOME/my_test_bin
$ ./sumeragi_test public
```
