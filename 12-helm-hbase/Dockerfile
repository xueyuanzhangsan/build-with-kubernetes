FROM 192.168.3.81:30002/wiseco/hbase-base:2.4.13.2

RUN mkdir -p /opt/apache

ENV HADOOP_VERSION=2.7.3

ADD hadoop-${HADOOP_VERSION}.tar.gz /opt/apache

ENV HADOOP_HOME=/opt/apache/hadoop

RUN ln -s /opt/apache/hadoop-${HADOOP_VERSION} $HADOOP_HOME

ENV HADOOP_CONF_DIR=${HADOOP_HOME}/et/hadoop

ENV PATH=${HADOOP_HOME}/bin:$PATH