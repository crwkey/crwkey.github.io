---
title: "Rust 内存管理"
date: 2021-03-11T20:55:20+08:00
draft: false 

---
Rust 在编译期间，通过静态分析，确定对象的作用域与生命周期，从而可以确定某个对象不再被使用，将其销毁，并且不会引入任何运行时的开销。

##### 值类型与引用类型

在 rust 中， 实现 Copy 这个 trait，用来标记一个值类型，另外一种就是数据分配在堆上，实际内容是一个内存地址，指向栈上的实际数据，记住只有堆上的数据才需要进行内存管理。



##### move 语义

赋值，函数传参，返回值，match 这四个操作，如果是针对一个值类型的话，相当于把这个值赋值到目标上，原来值的修改不会影响到新的值。举个例子：

```rust
fn main() {
   let num1 = 1;
   let num2 = num1;
   println!("num1={}, num2={}", num1, num2);
}
```

如果换做是一个引用类型的话，执行上面的操作会怎么样？比如我们用 String 为例：

```rust
fn main() {
   let s1 = String::from("rwkey.com");
   let s2 = s1;
   println!("s1={}, s2={}", s1, s2);
}
```

此时我们会看到一个编译错误：

```rust
error[E0382]: borrow of moved value: `s1`
 --> src/main.rs:4:29
  |
2 |    let s1 = String::from("rwkey.com");
  |        -- move occurs because `s1` has type `String`, which does not implement the `Copy` trait
3 |    let s2 = s1;
  |             -- value moved here
4 |    println!("s1={}, s2={}", s1, s2);
  |                             ^^ value borrowed here after move
```

原因是执行 `let s2 = s1` 语句时，不是将 s1 的内容复制一份给 s2，而是将数据「移动」到了新的变量，原来的变量不能再使用。这样我们就能确保堆上分配的内存都只有唯一的拥有者。

借用（引用）


