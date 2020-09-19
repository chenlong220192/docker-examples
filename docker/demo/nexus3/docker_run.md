- docker run
```
docker run \
    -d \
    -it \
    -p 8081:8081 \
    -p 8082:8082 \
    -v /data/docker/nexus3:/nexus-data \
    --name nexus \
    sonatype/nexus3:latest
```
