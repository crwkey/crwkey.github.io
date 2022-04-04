---
title: "redis 常用命令"
date: 2021-03-15T11:25:58+08:00
draft: false 
---

连接 reids 服务器

redis-cli -h host -p 6379

常用命令

查看过期时间

`ttl whisky:m:rtk:created:M1P31qiwesngwQFth02Bj41s28`

结果
单位是秒
```bash
(integer) 10573
```
