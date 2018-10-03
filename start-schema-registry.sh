#!/bin/bash

: ${KAFKASTORE_CONNECTION_URL:=zookeeper:2181}

sed -i -r "s@(^|^#)(kafkastore.connection.url)=(.*)@\2=${KAFKASTORE_CONNECTION_URL}@g" /etc/schema-registry/schema-registry.properties

schema-registry-start /etc/schema-registry/schema-registry.properties
