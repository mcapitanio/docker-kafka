#!/bin/bash

: ${ZOOKEEPER_CONNECT:=zookeeper:2181}

sed -i -r "s@(^|^#)(zookeeper.connect)=(.*)@\2=${ZOOKEEPER_CONNECT}@g" /etc/kafka-rest/kafka-rest.properties

kafka-rest-start /etc/kafka-rest/kafka-rest.properties
