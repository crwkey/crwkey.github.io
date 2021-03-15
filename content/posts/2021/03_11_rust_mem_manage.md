---
title: "Rust 内存管理"
date: 2021-03-11T20:55:20+08:00
draft: false 
---

Rust 在编译期间，通过静态分析，确定对象的作用域与生命周期，从而可以确定某个对象不再被使用，将其销毁，并且不会引入任何运行时的开销。

##### 值类型与引用类型

在 rust 中， 实现 Copy 这个 trait，用来标记一个值类型，另外一种就是数据分配在堆上，实际内容是一个内存地址，指向栈上的实际数据，记住只有堆上的数据才需要进行内存管理。

#### copy 语义

默认实现了 Copy 类型的：
整形，浮点型，布尔型，字符型, &T 都是实现了 Copy trait，元组类型，如果元组里面所有类型都实现了 Copy trait，那么这个元组也就实现了 Copyt trait，数组同理

需要手动实现 Copy 类型的
对于 Rust 结构体，枚举，如果他们内部都实现了 Copy trait，则他们可以手动实现 Copy trait。

无法实现 Copy 类型
Box 就是无法实现 Copy 类型，原因是因为如果 Box 实现了 Copy，那么就会有多次释放问题，还有可变借用指针类型 &mut T， String, 对于这类可以通过调用 clone 方法解决



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

```bash
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

##### 借用

我们下面来看一个引用的例子：

```rust
fn main() {
   let s1 = String::from("rwkey.com");
   let len = str_len(s1);
   println!("s1={}, len={}", s1, len);
}

fn str_len(str: String) -> usize {
   return str.len();
}
```

此时我们会看到一个编译错误：

```bash
error[E0382]: borrow of moved value: `s1`
 --> src/main.rs:4:30
  |
2 |    let s1 = String::from("rwkey.com");
  |        -- move occurs because `s1` has type `String`, which does not implement the `Copy` trait
3 |    let len = str_len(s1);
  |                      -- value moved here
4 |    println!("s1={}, len={}", s1, len);
  |                              ^^ value borrowed here after move
```

原因是 s1 被当作参数传入了 str_len 这个函数，根据 move 规则，s1 就失效了，后面的 println！宏调用如果要再次使用 s1 就会发生错误，如果是这样那就太不方便使用了，于是 rust 引入了借用概念，只要在变量或类型前面加 & 前缀即可。我们对上面的代码进行改造：

```rust
fn main() {
   let s1 = String::from("rwkey.com");
   let len = str_len(&s1);
   println!("s1={}, len={}", s1, len);
}

fn str_len(str: &String) -> usize {
   return str.len();
}
```

上面的代码可以编译通过，通过 & 操作符号，之前的 move 语义操作变成了 borrow 操作，但是对象的生命周期不会转移，只是暂时借到了新的地方。

##### 借用的可变性

借用规则：

1. 多次只读借用
2. 一次可变借用
3. 读借用不能和可变借用共存
4. 可变借用必须是拥有者可变

##### 生命周期

生命周期是 rust 在编译时对借用的返回值生命周期的无法判断，需要手动指定参数和返回值的生命周期, 用一个 ' 加一个字母表示，比如`'a`

