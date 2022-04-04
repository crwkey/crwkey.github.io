---
title: "Rust trait"
date: 2022-02-03T15:06:39+08:00
draft: false 
---

1. trait 四种作用
2. 入门 trait
3. trait 静态分发 -- 没有开销的抽象
4. trait 动态分发 -- 有运行时开销(寻址过程)
5. 性能测试

四种作用
* 接口(interface)
* 标记 (sized, copy 给编译器用, 识别一些固定的行为)
* 范型标记 (入参，出参作为范型限定)
* 抽象类型（trait object） 相当于动态语言, 静态调用，动态调用｜动态分发

一个trait 是针对未知类型（Self）定义的方法的一个集合

静态分发： 通过范型来实现， 编译器使用具体的类型来生成非范型版本的函数, rust 单态化，会使文件变大

```rust
//静态分发
fn print1(d: impl Draw) {
	d.draw();
}

等价于下面

fn print2<T: Draw>(t: &T) {
	t.draw();
}
```

动态分发

动态分发发生在运行时

Rust 动态分发是通过 trait object 来实现的，Rust 会在运行时根据 Trait Object 中的指针来调用相应版本的函数。

trait object 创建： 指针（如引用，智能指针）+ dyn 关键字 + 要实现的 trait（一个或多个，trait 之间用 + 连接）如： &dyn Trait、Box<dyn Trait>, 其意思就是：只要一个实现了指定的trait(s), 即满足该约束。






