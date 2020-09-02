- docker run
```
docker run \
    -d \
    -p 8080:8080 \
    -p 50000:50000 \
    -v /data/docker/jenkins:/var/jenkins_home \
    --memory 1536m \
    --memory-swappiness 0 \
    --memory-reservation 1536m \
    --oom-kill-disable=false \
    --name jenkins \
    jenkins/jenkins
```
