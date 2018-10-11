#!/bin/bash

: ${BOOTSTRAP_SERVERS:=kafka:9092}
: ${KAFKASTORE_CONNECTION_URL:=zookeeper:2181}

sed -i -r "s@(^|^#)(kafkastore.connection.url)=(.*)@\2=${KAFKASTORE_CONNECTION_URL}@g" /etc/schema-registry/schema-registry.properties
sed -i -r "s@(^|^#)(bootstrap.servers)=(.*)@\2=${BOOTSTRAP_SERVERS}@g" /etc/schema-registry/connect-avro-distributed.properties

schema-registry-start /etc/schema-registry/schema-registry.properties