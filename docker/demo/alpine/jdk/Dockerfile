# 1、基础镜像
FROM alpine:latest

# 2、镜像作者和电子邮箱
MAINTAINER chenlong "chenlong220192@gmail.com"

# 3、在构建镜像时，指定镜像的工作目录。之后的命令都是基于此工作目录，不存在则自动创建。
WORKDIR /temp

# 4、安装jdk
RUN wget http://106.14.180.184:9011/jdk/jdk-8u261-linux-x64.tar.gz && \
    mkdir -p /usr/local/jdk8 && \
    mv jdk-8u261-linux-x64.tar.gz /usr/local/jdk8 && \
    cd /usr/local/jdk8 && \
    tar -xf jdk-8u261-linux-x64.tar.gz && \
    rm -rf jdk-8u261-linux-x64.tar.gz && \
    cd jdk1.8.0_261 && \
    rm -rf src.zip javafx-src.zip COPYRIGHT LICENSE README.html release legal *.txt

# 5、更换Alpine源
RUN echo http://mirrors.aliyun.com/alpine/v3.10/main/ > /etc/apk/repositories && \
    echo http://mirrors.aliyun.com/alpine/v3.10/community/ >> /etc/apk/repositories && \
    apk update && apk upgrade && \
    apk --no-cache add ca-certificates

# 6、Alpine安装 Glibc 参考：https://github.com/sgerrand/alpine-pkg-glibc
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub http://106.14.180.184:9011/glibc/sgerrand.rsa.pub && \
    wget http://106.14.180.184:9011/glibc/glibc-2.31-r0.apk && \
    wget http://106.14.180.184:9011/glibc/glibc-bin-2.31-r0.apk && \
    wget http://106.14.180.184:9011/glibc/glibc-i18n-2.31-r0.apk && \
    apk add glibc-2.31-r0.apk glibc-bin-2.31-r0.apk glibc-i18n-2.31-r0.apk && \
    rm -rf *.apk && \
    rm -rf /var/cache/apk/*

# 7、变量环境
ENV JAVA_HOME=/usr/local/jdk8/jdk1.8.0_261
ENV CLASSPATH=$JAVA_HOME/bin
ENV PATH=.:$JAVA_HOME/bin:$PATH

# 容器启动后执行命令
CMD ["java","-version"]

# docker build -f Dockerfile --rm -t local/alpine-jdk8:8u261 .
