---
title: "Go 最佳实践"
date: 2021-03-29T12:50:18+08:00
draft: false
---

Go 最佳实践（https://talks.golang.org/2013/bestpractices.slide#2）

最佳实践简单来说就是 简单，可读，可维护

第一、避免嵌套

我们先来看一段代码

定义一个 Gopher， 然后给 Gopher 增加一个方法 WriteTo，输入参数类型是 io.Writer, 返回值是写入的长度和