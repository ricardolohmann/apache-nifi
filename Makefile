
list_messages:
    @ docker-compose exec nifi-kafka /opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server nifi-kafka:9092 --from-beginning --topic collected_http

add_messages:
    @ docker-compose exec -u 0 nifi echo "message" >> /var/log/flink/flink.log