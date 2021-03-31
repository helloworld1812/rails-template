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
$ kafka-server-start /usr/local/etc/kafka/server.properties 
```

## Deploy
### Service Example
* __puma.service example__
```bash
# Amazon Linux 2 Only Support Abosulute Path

[Unit]
Description=Puma HTTP Server for workstream-connector-example (sandbox)
After=network.target

[Service]
Type=simple
User=ec2-user
WorkingDirectory=/home/ec2-user/rails/connector/current
ExecStart=/home/ec2-user/.rbenv/bin/rbenv exec bundle exec puma -C /home/ec2-user/rails/connector/shared/puma.rb
ExecStop=/home/ec2-user/.rbenv/bin/rbenv exec bundle exec pumactl -S /home/ec2-user/rails/connector/shared/tmp/pids/puma.state stop
ExecReload=/bin/kill -TSTP $MAINPID

# Touch this in shared file if you needed
# StandardOutput=append:/home/ec2-user/rails/connector/shared/log/puma_access.log
# StandardError=append:/home/ec2-user/rails/connector/shared/log/puma_error.log

Restart=always
RestartSec=1
SyslogIdentifier=puma

[Install]
WantedBy=multi-user.target
```
* __sidekiq.service example__
  
```bash
[Unit]
Description=sidekiq for workstream-connector-example (sandbox)
After=syslog.target network.target

[Service]
Type=simple
User=ec2-user
WorkingDirectory=/home/ec2-user/rails/connector/current
ExecStart=/home/ec2-user/.rbenv/bin/rbenv exec bundle exec sidekiq -e sandbox
ExecReload=/bin/kill -TSTP $MAINPID
ExecStop=/bin/kill -TERM $MAINPID
#StandardOutput=append:/home/ec2-user/rails/connector/shared/log/sidekiq.log
#StandardError=append:/home/ec2-user/rails/connector/shared/log/sidekiq.error.log

RestartSec=1
Restart=on-failure

SyslogIdentifier=sidekiq

[Install]
WantedBy=default.target
```
* __foreman.service example__

### Nginx Configuration

```shell
cap sandbox puma:nginx_config --trace
```