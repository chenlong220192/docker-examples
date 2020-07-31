# 基础镜像
FROM alpine:latest

# 镜像作者和电子邮箱
MAINTAINER chenlong "long.chen@eproe.com.cn"

RUN wget http://10.217.25.147:9011/jdk-8u261-linux-x64.tar.gz && \
mkdir -p /usr/local/jdk8 && \
mv jdk-8u261-linux-x64.tar.gz /usr/local/jdk8 && \
cd /usr/local/jdk8 && \
tar -xf jdk-8u261-linux-x64.tar.gz && \
rm -rf jdk-8u261-linux-x64.tar.gz && \
# 更换Alpine源
echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.9/main/" > /etc/apk/repositories && \
apk update && \
apk upgrade && \
apk --no-cache add ca-certificates && \
# Alpine安装 Glibc 参考：https://github.com/sgerrand/alpine-pkg-glibc
wget -q -O /etc/apk/keys/sgerrand.rsa.pub http://10.217.25.147:9011/sgerrand.rsa.pub && \
wget http://10.217.25.147:9011/glibc-2.31-r0.apk && \
apk add glibc-2.31-r0.apk && \
rm -rf *.apk && \
rm -rf /var/cache/apk/*

# 变量环境
ENV JAVA_HOME=/usr/local/jdk8/jdk1.8.0_261
ENV CLASSPATH=$JAVA_HOME/bin
ENV PATH=.:$JAVA_HOME/bin:$PATH

# 启动命令
CMD ["java","-version"]

############### 尚未完善 ##################
