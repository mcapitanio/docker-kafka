#!/bin/bash

: ${LISTENERS:=PLAINTEXT://0.0.0.0:9092}
: ${ADVERTISED_LISTENERS:=PLAINTEXT://kafka:9092}
: ${ZOOKEEPER_CONNECT:=zookeeper:2181}

sed -i -r "s@(^|^#)(listeners)=(.*)@\2=${LISTENERS}@g" /etc/kafka/server.properties
sed -i -r "s@(^|^#)(advertised.listeners)=(.*)@\2=${ADVERTISED_LISTENERS}@g" /etc/kafka/server.properties
sed -i -r "s@(^|^#)(zookeeper.connect)=(.*)@\2=${ZOOKEEPER_CONNECT}@g" /etc/kafka/server.properties

echo "offsets.topic.replication.factor=1" >> /etc/kafka/server.properties

kafka-server-start /etc/kafka/server.properties
