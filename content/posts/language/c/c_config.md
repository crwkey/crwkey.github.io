---
title: "C"
date: 2022-07-12T09:38:24+08:00
draft: false
---

C 静态编译发生错误
```
gcc -static main.c
/usr/bin/ld: cannot find -lc
collect2: error: ld returned 1 exit status
```

C 静态编译依赖 glibc-static

centos8 install glibc-static 命令

```q
sudo  dnf install glibc-static
```
gdb
starti

info inferiors

GUN C 手册 https://www.cyberciti.biz/files/GNU-C-Language-Manual/

