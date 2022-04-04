---
title: "Clickhouse 入门"
date: 2022-03-28T11:18:40+08:00
draft: false
---

## 什么是Clickhouse?

1. 列式存储


2. ck 引擎  
   1. MergeTree
   2. ReplicatedMergeTree
   3. Distributed

3. SQL  
JSON 格式化输出： select * from config_tag FORMAT JSON;

4. 创建物化视图

命令行启动 clickhoue-client -m

5. 命令行插入 字符串需要单引号  
 insert into Name values('1','hell');

clickhouse 数组从 1 开始 而不是 0

6. clickhouse 实战  
https://blog.csdn.net/xch_yang/article/details/123591740


 问题，如何删除两条一摸一样的数据，并且保留一条


clickhouse 字符串必须用单引号括起来，不能双引号

## 安装
1. 分布式需要安装 zookeeper
2. Dbeaver 连接



>https://segmentfault.com/a/1190000038318776
