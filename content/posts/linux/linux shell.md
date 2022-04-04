title: "Linux 重定向"
date: 2022-01-09T16:28:21+08:00
draft: false

 

1. bash 解析器工作原理
   解释：解析器解析到 "<" 以后会优先处理重定向，将标准输入重定向 file，然后处理命令剩下的部分

2. 
```
[ec2-user@ip-172-31-12-233 ~]$ ps -o pid,ppid,pgid,comm | cat
  PID  PPID  PGID COMMAND
20590 20583 20590 bash
24073 20590 24073 ps
24075 20590 24073 cat
```
