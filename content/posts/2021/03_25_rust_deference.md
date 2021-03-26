---
title: "Rust 解引用本质"
date: 2021-03-25T22:40:10+08:00
draft: false 

---

## Rust 解引用本质

我们知道 rust 引用使用 &，解引用使用 *，于是 * 解引用就拥有了数据所有权，但是我们想要使用解引用的数据，必须赋给一个变量，这样一旦发生赋值，那么如果该类型实现了 Trait 特性， 就是使用 Copy 语义，否则使用 Move 语义。

整形例子：

```rust
fn main() {
    let a: i32 = 12;
    let b = &a;     
    let c = *b; // *b 取得12，然后发生 12 copy 到定义的 c,所以 b 和 c 的地址不一样 
    println!("{:p}, {:p}", b, &c); //0x7ffee2fe0624, 0x7ffee2fe0634
    //如果不赋值
    let c = &*b; // c 也是对 a 的一个引用， 那么 b == c 
    println!("{:p}, {:p}", b, c); //0x7ffee2fe0624, 0x7ffee2fe0624
    println!("{:p}, {:p}", b, &c); //0x7ffee2fe0624, 0x7ffee2fe06a0
}
```



字符串例子

```rust
fn main() {
     //字符串
    let str: String = String::from("rwkey.com");
    let str1 = &str; 
    //let str2 = *str1; //赋值，会 move 改变所有权，这是不允许的, 它想取，但取不到
    let str3 = &*str1; //还是借用
    println!("{:p}, {:p}", str1, str3); //0x7ffee2fe0770, 0x7ffee2fe0770
    println!("{:p}, {:p}", str1, &*str1); // &* 就是指向原变量 0x7ffee2fe0770, 0x7ffee2fe0770
    println!("{:p}, {:p}", str1, &&*str1); // &&* 就是引用的指针 0x7ffee2fe0770, 0x7ffee2fe08c8
}
```

