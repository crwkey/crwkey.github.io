---
title: "Rust unsafe"
date: 2022-03-06T21:28:23+08:00
draft: false 
---

不会获得编译器保证安全， 承诺编译是安全的代码

写 unsafe 代码时， 

Note：
1. 函数级别的unsafe，调用者要使用 unsafe {}，指明不安全代码
2. trait 级别的 unsafe， impl 者保证 unsafe， 调用者正常调用
3. 对裸指针的解引用是不安全的，此时可变指针和不可变指针共存
4.ffi， 使用其它语言的能力，比如说调用 go library，同样需要unsafe 代码块
不推荐使用 unsafe 场景
1. 修改可变静态变量

问题： unsafe 的错误能捕获？在保证程序能正常运行的前提下
