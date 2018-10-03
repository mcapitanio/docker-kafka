#!/bin/bash

: ${BOOTSTRAP_SERVERS:=kafka:9092}

sed -i -r "s@(^|^#)(bootstrap.servers)=(.*)@\2=${BOOTSTRAP_SERVERS}@g" /etc/kafka/connect-distributed.properties

connect-distributed /etc/kafka/connect-distributed.properties
