# 基础镜像
FROM centos:7

# init
RUN \
yum -y install net-tools telnet iproute wget \
yum clean all

# jdk
RUN \
wget http://10.217.25.147:9011/jdk-8u261-linux-x64.tar.gz && \
mkdir -p /usr/local/jdk8 && \
mv jdk-8u261-linux-x64.tar.gz /usr/local/jdk8 && \
cd /usr/local/jdk8 && \
tar -xf jdk-8u261-linux-x64.tar.gz && \
rm -rf jdk-8u261-linux-x64.tar.gz

# 变量环境
ENV JAVA_HOME=/usr/local/jdk8/jdk1.8.0_261
ENV CLASSPATH=$JAVA_HOME/bin
ENV PATH=.:$JAVA_HOME/bin:$PATH

# docker build --rm -t local/centos7-jdk8 .
