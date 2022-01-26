FROM confluentinc/cp-kafka-connect-base


LABEL org.opencontainers.image.authors="rimonhm@gmail.com" \
      org.opencontainers.image.version="6.0.0_1.0.3_community" \
      org.opencontainers.image.title="cp-kafka-connect-custom" \
      org.opencontainers.image.description="A custom Confluent Platform Kafka Connect container with additional community licensed connectors from Confluent Hub."

RUN confluent-hub install --no-prompt blueapron/kafka-connect-protobuf-converter:latest && \
    confluent-hub install --no-prompt castorm/kafka-connect-http:latest && \
    confluent-hub install --no-prompt confluentinc/connect-transforms:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-avro-converter:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-s3:latest && \
    confluent-hub install --no-prompt confluentinc/kafka-connect-vertica:latest && \
    confluent-hub install --no-prompt couchbase/kafka-connect-couchbase:latest && \
    confluent-hub install --no-prompt datadog/kafka-connect-logs:latest && \
    confluent-hub install --no-prompt datastax/kafka-connect-cassandra-sink:latest && \
    confluent-hub install --no-prompt debezium/debezium-connector-mongodb:latest && \
    confluent-hub install --no-prompt debezium/debezium-connector-mysql:latest && \
    confluent-hub install --no-prompt debezium/debezium-connector-postgresql:latest && \
    confluent-hub install --no-prompt debezium/debezium-connector-sqlserver:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-email:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-flume-avro:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-json-schema:latest && \
    confluent-hub install --no-prompt jcustenborder/kafka-connect-spooldir:2.0.62 && \
    confluent-hub install --no-prompt microsoftcorporation/kafka-sink-azure-kusto:latest && \
    confluent-hub install --no-prompt mongodb/kafka-connect-mongodb:latest && \
    confluent-hub install --no-prompt neo4j/kafka-connect-neo4j:latest && \
    confluent-hub install --no-prompt newrelic/newrelic-kafka-connector:latest && \
    confluent-hub install --no-prompt rockset/kafka-connect-rockset:latest && \
    confluent-hub install --no-prompt rudderstack/kafka-connect-rudderstack:latest && \
    confluent-hub install --no-prompt sanjuthomas/kafka-connect-gcp-bigtable:latest && \
    confluent-hub install --no-prompt sanjuthomas/kafka-connect-orientdb:latest && \
    confluent-hub install --no-prompt snowflakeinc/snowflake-kafka-connector:latest && \
    confluent-hub install --no-prompt streamthoughts/kafka-connect-file-pulse:latest && \
    confluent-hub install --no-prompt wepay/kafka-connect-bigquery:latest 
