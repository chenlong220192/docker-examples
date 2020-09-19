- docker run
```
docker run \
    -d \
    -p 8080:8080 \
    -p 50000:50000 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(which docker):/usr/bin/docker \
    -v /data/docker/jenkins:/var/jenkins_home \
    --name jenkins \
    base/alpine-jenkins
```

***
- `-v /var/run/docker.sock:/var/run/docker.sock` 将宿主机docker.sock映射到容器内。
- `-v $(which docker):/usr/bin/docker`将宿主机docker程序映射至jenkins容器内。
