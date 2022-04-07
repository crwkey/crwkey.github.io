---
title: "基本 linux 命令"
date: 2022-03-17T19:15:27+08:00
draft: false 
---

## 网络相关
1. tcpdump 命令用法
   * tcpdump -D， 列出监听的网络接口

2. host 命令
   比如想查询域名的 A 记录
   `host -t A rwkey.com`

## 磁盘

1. lsblk
2. df -h, 磁盘是否满
3. dh -sh . 或 dh -d1 -h . | grep G | sort -h

## 清空文件  
```sh -c "cat /dev/null > ${log_file_name} "```或者```> ${log_file_name}```


## 查找字符串
strings file | grep "rwkey.com"


## 查看主机信息
`hostnamectl`
`uname -a`
`uname -r`
