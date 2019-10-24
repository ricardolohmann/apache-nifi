FROM golang:alpine3.10

ENV MINIFI_BASE_DIR /opt/minifi
ENV MINIFI_HOME $MINIFI_BASE_DIR/nifi-minifi-cpp-0.6.0

RUN mkdir -p $MINIFI_BASE_DIR
WORKDIR $MINIFI_BASE_DIR

# Setup MiNiFi user
RUN addgroup -g 1000 minifi || groupmod -n minifi `getent group 1000 | cut -d: -f1`
RUN adduser -S -H -G minifi minifi

# Logger
RUN apk add git tar
RUN go get github.com/mingrammer/flog

# apache MiNiFi
RUN wget https://www-us.apache.org/dist/nifi/nifi-minifi-cpp/0.6.0/nifi-minifi-cpp-debian-0.6.0-bin.tar.gz
RUN tar -xvf nifi-minifi-cpp-debian-0.6.0-bin.tar.gz
RUN chown -R minifi:minifi $MINIFI_HOME
USER minifi
CMD $MINIFI_HOME/bin/minifi.sh run
# CMD [ "flog -w -t log -n 20000 -o /var/log/flink.log" ]