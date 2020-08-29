- docker run
```
docker run \
    -d \
    -it \
    -v ~/data/docker/nexus3:/nexus-data \
    -p 8081:8081 \
    --name nexus \
    sonatype/nexus3:latest
```
