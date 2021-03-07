---
title: "Go 常用命令"
date: 2020-11-10T19:19:40+08:00
draft: false 
---

记录下自己常用的几个 `Go` 命令

### 编译源码命令


```bash
命令用法
go build [-o output] [-i] [build flags] [packages]
```

解释： `output` 就是要输出的文件名, `packages` 通过 `go help packages` 可以查看，英文的解释是: `Usually, [packages] is a list of import paths`, 先不翻译了，详细的通过 `go help packages` 去了解。

```bash
常用举例
go build -o main github.com/crwkey/common
```