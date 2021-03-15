---
title: "作者在读书籍"
date: 2020-12-21T17:41:06+08:00
draft: true 
---

1. Rust 编程之道

https://cread.jd.com/read/startRead.action?bookId=30457484&readType=1

2. 深入剖析Kubernetes

https://d.shikey.com/jike/%E6%9E%81%E5%AE%A2%E6%97%B6%E9%97%B4%E5%B7%B2%E5%AE%8C%E7%BB%93/32%E6%B7%B1%E5%85%A5%E5%89%96%E6%9E%90Kubernetes/%E6%96%87%E7%AB%A0/

3. Linux 教程
https://linuxtools-rst.readthedocs.io/zh_CN/latest/#

```
docker node update \
    --label-add es=true \
    --label-add mysql=true \
    --label-add mysql_id=1 \
    10_168_14_50_hostname

docker node update \
    --label-add es=true \
    --label-add mysql=true \
    --label-add mysql_id=2 \
    10_168_14_51_hostname

docker node update \
    --label-add es=true \
    --label-add mysql=true \
    --label-add mysql_id=3 \
    10_168_14_52_hostname

部署 Clickhouse/Kafka/Redis

docker node update \
    --label-add clickhouse=1 \
    --label-add kafka=true \
    --label-add kafka_id=1 \
    --label-add redis=true \
    10_168_14_53_hostname

docker node update \
    --label-add clickhouse=2 \
    --label-add kafka=true \
    --label-add kafka_id=2 \
    --label-add redis=true \
    10_168_14_54_hostname

docker node update \
    --label-add clickhouse=3 \
    --label-add kafka=true \
    --label-add kafka_id=3 \
    --label-add redis=true \
    10_168_14_55_hostname

docker node update \
    --label-add log=true \
    --label-add monitor=true \
    --label-add consul_agent=server \
    10_168_14_56_hostname    


docker node update \
    --label-add backend=true \
    --label-add loadbalancer=true \
    --label-add consul_agent=server \
    --label-add hdfs=true \
    --label-add hadoop=master \
    10_168_14_57_hostanme

docker node update \
    --label-add backend=true \
    --label-add loadbalancer=true \
    --label-add consul_agent=server \
    --label-add hdfs=true \
    --label-add hadoop=slave1 \
    10_168_14_58_hostname       

docker node update \
    --label-add backend=true \
    --label-add loadbalancer=true \
    --label-add hdfs=true \
    --label-add hadoop=slave2 \
    10_168_14_59_hostname    
```