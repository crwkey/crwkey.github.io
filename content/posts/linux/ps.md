---
title: "进程查看"
date: 2022-03-26T18:36:54+08:00
draft: false 
---
1. ps 显示进程

`ps -aux`
`ps -ef`

显示带线程, 标识是 `NLWP`
`ps -eLf`
`top -H -p 18020`

`ps -T -p 28001`, 其中 SPID 代表线程`ID`

或者 top， 然后 `shift + H`

`cat /proc/28001/status`
`ls /proc/28001/task`

显示进程树
-H -- 显示进程继承层次
-h -- 不显示头信息

ps -H
ps -ef f

2. 显示进程树
pstree
```
pstree -p 28001
```

