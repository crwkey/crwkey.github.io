---
title: "Rust 闭包"
date: 2022-05-26T14:31:14+08:00
draft: false 
---

闭包定义

结构类似一个函数，能够捕获环境变量

跟函数的区别：
1. 结构上的区别
2. 函数不能捕获环境变量

函数名可以当成变量用，闭包当成一个变量

函数的参数（x: i32), 闭包的参数 |x: i32|

闭包能自动推导参数类型

签名一样的闭包类型也不一样

每个闭有一个对应的 Fn 特征
函数也有一个 Fn 特征

https://course.rs/advance/functional-programing/closure.html#:~:text=%E4%B8%8A%E9%9D%A2%E7%9A%84%E7%BC%93%E5%AD%98%E6%9C%89%E4%B8%80%E4%B8%AA%E5%BE%88%E5%A4%A7%E7%9A%84%E9%97%AE%E9%A2%98%EF%BC%9A%E5%8F%AA%E6%94%AF%E6%8C%81%20u32%20%E7%B1%BB%E5%9E%8B%E7%9A%84%E5%80%BC%EF%BC%8C%E8%8B%A5%E6%88%91%E4%BB%AC%E6%83%B3%E8%A6%81%E7%BC%93%E5%AD%98%20String%20%E7%B1%BB%E5%9E%8B%EF%BC%8C%E6%98%BE%E7%84%B6%E5%B0%B1%E8%A1%8C%E4%B8%8D%E9%80%9A%E4%BA%86%EF%BC%8C%E5%9B%A0%E6%AD%A4%E9%9C%80%E8%A6%81%E5%B0%86%20u32%20%E6%9B%BF%E6%8D%A2%E6%88%90%E6%B3%9B%E5%9E%8B%20E%EF%BC%8C%E8%AF%A5%E7%BB%83%E4%B9%A0%E5%B0%B1%E7%95%99%E7%BB%99%E8%AF%BB%E8%80%85%E8%87%AA%E5%B7%B1%E5%AE%8C%E6%88%90%EF%BC%8C%E5%85%B7%E4%BD%93%E4%BB%A3%E7%A0%81%E5%8F%AF%E4%BB%A5%E5%8F%82%E8%80%83%E8%BF%99%E9%87%8C




<!-- 
调试工具： rust-gdb

返回闭包使用 impl 关键字
```rust
fn return_closure() -> impl Fn(String) {
	let s = String::from("hello world");
	move |s|println!("{}", s)
}

fn main() {
	let f = return_closure();
	f("aa".to_string());
}
``` -->
