# **kafka**
___

### Description

This image runs the Confluent distribution of:

 * [*Apache Kafka*](https://github.com/confluentinc/kafka.git)
 * [*Kafka REST Proxy*](https://github.com/confluentinc/kafka-rest.git)
 * [*Schema Registry*](https://github.com/confluentinc/schema-registry)

on a Centos Linux distribution.

The *latest* tag of this image is build with the [latest stable](https://github.com/confluentinc/kafka/releases/tag/v5.0.0) release of Confluent Kafka distribution on the latest available Centos release.

You can pull it with:

    docker pull parrotstream/kafka


You can also find other images based on different Apache Kafka releases, using a different tag in the following form:

    docker pull parrotstream/kafka:[kafka-release]


For example, if you want the Kafka release 1.1.1 and the Kafka Rest in the Confluent distribution 4.1.2, you can pull the image with:

    docker pull parrotstream/kafka:1.1.1-4.1.2

Run with Docker Compose:

    docker-compose -p parrot up

### Available tags:

- Apache Kafka 2.0.0 ([2.0.0-5.0.0](https://github.com/parrot-stream/docker-kafka/blob/2.0.0-5.0.0/Dockerfile), [latest](https://github.com/parrot-stream/docker-kafka/blob/latest/Dockerfile))
- Apache Kafka 1.1.1 ([1.1.1-4.1.2](https://github.com/parrot-stream/docker-kafka/blob/1.1.1-4.1.2/Dockerfile))
- Apache Kafka 0.10.2.0 ([0.10.2.0-3.2.4](https://github.com/parrot-stream/docker-kafka/blob/0.10.2.0-3.2.4/Dockerfile))
- Apache Kafka 0.10.0.1 ([0.10.0.1-3.0.1](https://github.com/parrot-stream/docker-kafka/blob/0.10.0.1-3.0.1/Dockerfile))
