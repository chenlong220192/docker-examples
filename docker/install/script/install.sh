#! /bin/bash

#======================================================================
#
# example: sh clean.sh
#
# author: chenlong
# date: 2020-08-05
#======================================================================

# 安装依赖包
yum install -y yum-utils device-mapper-persistent-data lvm2

# 设置Docker源
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# 查看docker安装版本
# yum list docker-ce --showduplicates | sort -r

# 安装指定版本
# yum install -y docker-ce-19.03.13
# 安装最新版docker
yum install -y docker-ce
