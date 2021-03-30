# README

## Install Protobuf

If you wish to compile `.proto` definitions to ruby, you will need to install [Google's Protocol Buffers](http://code.google.com/p/protobuf) from your favorite package manager or from source. This gem currently supports protobuf up to 3.6.x.

_**Note:** the compiled headers are not a runtime requirement for this library to work, they are only necessary if you wish to compile your definitions to ruby._

### OSX Install

```shell
$ brew install protobuf
```

### Ubuntu
```shell
$ sudo apt-get install -y protobuf
```

## Install Kafka

### OSX Install

```shell
$ brew cask install java
$ brew install kafka
```

Then start Zookeeper and Kafka

```
$ zookeeper-server-start /usr/local/etc/kafka/zookeeper.properties &
$ kafka-server-start /usr/local/etc/kafka/server.properties ````````````````````````t````````````
```


