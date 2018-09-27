FROM parrotstream/centos-openjdk:8

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

USER root

ENV SCALA_VER 2.11

ENV CONFLUENT_PLATFORM_MAJOR_VER 5.0

# Install Confluent Repo
RUN rpm --import https://packages.confluent.io/rpm/${CONFLUENT_PLATFORM_MAJOR_VER}/archive.key
COPY confluent.repo /etc/yum.repos.d/

# Install needed packages
RUN yum update -y
RUN yum install -y git python-pip python-setuptools
RUN easy_install supervisor
RUN yum clean all

# All Kafka Stuff
RUN yum install -y confluent-kafka-$SCALA_VER confluent-kafka-rest

WORKDIR /

COPY *.sh /

RUN chmod +x *.sh

COPY etc/ /etc/

EXPOSE 9092 8082

RUN useradd -d /usr/kafka kafka; \
    chown kafka:kafka /usr/kafka; \
    chown kafka:kafka /etc/kafka; \
    chown kafka:kafka /var/log/kafka; \
    chown kafka:kafka /etc/kafka-rest

USER kafka

ENTRYPOINT ["supervisord", "-c", "/etc/supervisord.conf", "-n"]
