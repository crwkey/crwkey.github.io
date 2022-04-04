---
title: "Go 插件化开发"
date: 2021-08-11T09:38:24+08:00
draft: false
---

## 编写插件

插件入口`package`必须为`main`，可以不包含`main`方法

```go
go build -buildmode=plugin -o hello_plugin.so .
```

生成 hello_plugin.so 插件

