---
title: "Linux 常用命令"
date: 2021-03-17T09:36:21+08:00
draft: false
---

远程登录

```
ssh -v user@host -p 8855
```
```
scp -v -P 8855 file user@host:/data/rwkey


```
```
python3 -m http.server --bind 0.0.0.0 

默认端口 8000

开 web 服务
python -m SimpleHTTPServer 8000 &
```

docker 命令

docker save 127.0.0.1:5001/xxx | gzip > xxx.tgz

docker push 127.0.0.1:5001/xxx

docker load < xxx.tgz

日志从后往前看

tac log.log | more