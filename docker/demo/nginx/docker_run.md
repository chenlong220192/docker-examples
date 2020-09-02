- docker run
```
docker run \
      -d \
      -p 9011:80 \
      -v /data/docker/nginx:/home \
      --memory 64m \
      --memory-swappiness 0 \
      --memory-reservation 64m \
      --oom-kill-disable=false \
      --name nginx \
      nginx
```

***

- ⚠️参考：https://blog.csdn.net/wugenqiang/article/details/86513257
- ⚠️参考：https://www.cnblogs.com/weifeng1463/p/9314154.html
