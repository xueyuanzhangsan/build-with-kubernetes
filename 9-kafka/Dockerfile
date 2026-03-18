FROM shibo2020/jdk1.8.0_192
RUN rm -f /etc/localtime \
&& ln -sv /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo "Asia/Shanghai" > /etc/timezone

ENV LANG en_US.UTF-8
ENV KAFKA_DATA_DIR /var/lib/kafka/data
ENV JAVA_HOME /usr/java/jdk1.8.0_192
ENV KAFKA_HOME /opt/kafka
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/kafka/bin

WORKDIR /opt
RUN yum install -y wget \
&& wget https://archive.apache.org/dist/kafka/2.1.1/kafka_2.12-2.1.1.tgz \
&& tar -zvxf kafka_2.12-2.1.1.tgz \
&& ln -s /opt/kafka_2.12-2.1.1 /opt/kafka \
&& rm -rf kafka_2.12-2.1.1.tgz \
&& mkdir -p /var/lib/kafka/data

CMD ["/bin/bash"]