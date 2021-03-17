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
