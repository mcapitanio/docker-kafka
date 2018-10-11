#!/bin/bash

: ${BOOTSTRAP_SERVERS:=kafka:9092}
: ${AVRO:="false"}

sed -i -r "s@(^|^#)(bootstrap.servers)=(.*)@\2=${BOOTSTRAP_SERVERS}@g" /etc/kafka/connect-distributed.properties
sed -i -r "s@(^|^#)(bootstrap.servers)=(.*)@\2=${BOOTSTRAP_SERVERS}@g" /etc/schema-registry/connect-avro-distributed.properties

if [ $AVRO == "false" ]; then
  connect-distributed /etc/kafka/connect-distributed.properties
else
  connect-distributed /etc/schema-registry/connect-avro-distributed.properties
fi