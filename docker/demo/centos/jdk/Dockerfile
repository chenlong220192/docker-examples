# 1、基础镜像
FROM centos:7

# 2、镜像作者和电子邮箱
MAINTAINER chenlong "chenlong220192@gmail.com"

# 3、在构建镜像时，指定镜像的工作目录。之后的命令都是基于此工作目录，不存在则自动创建。
WORKDIR /temp

# 4、安装常用工具
RUN yum -y install net-tools telnet iproute wget && yum clean all

# 5、安装jdk
RUN wget http://106.14.180.184:9011/jdk/jdk-8u261-linux-x64.tar.gz && \
    mkdir -p /usr/local/jdk8 && \
    mv jdk-8u261-linux-x64.tar.gz /usr/local/jdk8 && \
    cd /usr/local/jdk8 && \
    tar -xf jdk-8u261-linux-x64.tar.gz && \
    rm -rf jdk-8u261-linux-x64.tar.gz && \
    cd jdk1.8.0_261 && \
    rm -rf src.zip javafx-src.zip COPYRIGHT LICENSE README.html release legal *.txt

# 6、变量环境
ENV JAVA_HOME=/usr/local/jdk8/jdk1.8.0_261
ENV CLASSPATH=$JAVA_HOME/bin
ENV PATH=.:$JAVA_HOME/bin:$PATH

# 容器启动后执行命令
CMD ["java","-version"]

# docker build -f Dockerfile --rm -t local/centos7-jdk8:8u261 .
