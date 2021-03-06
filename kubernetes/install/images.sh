#!/bin/bash
url=registry.cn-hangzhou.aliyuncs.com/google_containers
# k8s版本
version=v1.18.8
images=(`kubeadm config images list --kubernetes-version=$version|awk -F '/' '{print $2}'`)
for imagename in ${images[@]} ; do
  docker pull $url/$imagename
  docker tag $url/$imagename k8s.gcr.io/$imagename
  docker rmi -f $url/$imagename
done
