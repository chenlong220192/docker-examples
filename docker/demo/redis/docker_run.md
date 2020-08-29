- docker run
```
docker run \
    -d \
    -p 6379:6379 \
    --memory 32m \
    --memory-swappiness 0 \
    --memory-reservation 32m \
    --oom-kill-disable=false \
    --name redis \
    redis:latest
```
