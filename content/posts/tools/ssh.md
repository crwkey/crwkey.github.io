---
title: "SSH 常用命令"
date: 2022-03-25T23:13:55+08:00
draft: false 
---

1. 我们经常会遇到 ssh 长时间不用会卡住, 这时我们可以按 `~.`退出。

ssh 会话保持

客户端在 .ssh/config 文件配置

```
TCPKeepAlive=yes
ServerAliveInterval 180
ServerAliveCountMax 3
```

2. .ssh 目录下文件的权限  
config 和 id_rsa 文件为 600 权限
id_rsa.pub 为 644 权限