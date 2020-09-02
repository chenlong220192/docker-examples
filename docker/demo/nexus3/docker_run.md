- docker run
```
docker run \
    -d \
    -it \
    -v /data/docker/nexus3:/nexus-data \
    --memory 1792m \
    --memory-swappiness 0 \
    --memory-reservation 1792m \
    --oom-kill-disable=false \
    -p 8081:8081 \
    -p 8082:8082 \
    --name nexus \
    sonatype/nexus3:latest
```
