# **kafka**
___

### Description

This image runs:

 * the Confluent distribution of [*Apache Kafka*](https://github.com/confluentinc/kafka.git)
 * the Confluent [*Kafka REST Proxy*](https://github.com/confluentinc/kafka-rest.git)
 
on a Centos Linux distribution.

The *latest* tag of this image is build with the [latest stable](https://github.com/confluentinc/kafka/releases/tag/v3.2.2) release of Confluent Kafka distribution on the latest available Centos release.

You can pull it with:

    docker pull parrotstream/kafka


You can also find other images based on different Apache Kafka releases, using a different tag in the following form:

    docker pull parrotstream/kafka:[kafka-release]


For example, if you want the release 0.10.0.1 you can pull the image with:

    docker pull parrotstream/kafka:0.10.0.1

Run with Docker Compose:

    docker-compose -p parrot up

Setting the project name to *parrot* with the **-p** option is useful to share the network created by containers started with other Parrot docker-compose.yml configurations.

### Available tags:

- Apache Kafka 1.1.1 ([1.1.1](https://github.com/parrot-stream/docker-kafka/blob/1.1.1/Dockerfile), [latest](https://github.com/parrot-stream/docker-kafka/blob/latest/Dockerfile))
- Apache Kafka 0.10.2.0 ([0.10.2.0](https://github.com/parrot-stream/docker-kafka/blob/0.10.2.0/Dockerfile))
- Apache Kafka 0.10.0.1 ([0.10.0.1](https://github.com/parrot-stream/docker-kafka/blob/0.10.0.1/Dockerfile))
