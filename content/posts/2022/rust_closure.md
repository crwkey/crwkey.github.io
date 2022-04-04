---
title: "Rust 闭包"
date: 2022-02-05T14:31:14+08:00
draft: false 
---

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
```