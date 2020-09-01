- docker run
```
docker run -d \
    -p 5000:5000 \
    -v /data/docker/registry:/var/lib/registry \
    --name registry \
    registry
```
