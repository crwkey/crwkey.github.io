---
title: "Nil_issue"
date: 2021-09-11T23:05:57+08:00
draft: false
---

## 为什么 nil 不等于 nil

我们在开发过程中会遇到使用`==`比较时会返回意想不到结果，常常与我们设想的结果不太一致。
首先我们看下面一段代码。我们有两个变量，每个变量都有它们自己的类型，但是每个变量都被赋值为`nil`。

```go
var a *int = nil
var b interface{} = nil
```

下面的语句将会打印什么

```go
fmt.Println("a == nil:", a == nil)
fmt.Println("b == nil:", b == nil)
fmt.Println("a == b:", a == b)
```

实际输出结果

```bash
a == nil: true
b == nil: true
a == b: false
```

现在我们看另外一个例子，我们用另外一种方式来给 b 赋值

```go
var a *int = nil
var b interface{} = a

fmt.Println("a == nil:", a == nil)
fmt.Println("b == nil:", b == nil)
fmt.Println("a == b:", a == b)
```

输出的结果是

```bash
a == nil: true
b == nil: false
a == b: true
```

是不是和你期望的结果有很大差别，为啥会是这样的结果？

### 内部发生了什么？









https://www.calhoun.io/when-nil-isnt-equal-to-nil/













