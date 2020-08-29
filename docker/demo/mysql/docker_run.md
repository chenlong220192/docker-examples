- docker run
```
docker run \
    -d \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=chenlong \
    -v ~/data/docker/mysql_5.7/etc/mysql:/etc/mysql \
    -v ~/data/docker/mysql_5.7/var/lib/mysql:/var/lib/mysql \
    --memory 512m \
    --memory-swappiness 0 \
    --memory-reservation 512m \
    --oom-kill-disable=false \
    --name mysql_5.7 \
    mysql:5.7
```
- ⚠️注意：
- 预先将目标目录拷贝至本机
  - `docker cp mysql_5.7:/etc/mysql/ ~/data/docker/mysql_5.7/etc/`
  - `docker cp mysql_5.7:/var/lib/mysql ~/data/docker/mysql_5.7/var/lib/`
