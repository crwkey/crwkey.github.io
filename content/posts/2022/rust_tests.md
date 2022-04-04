---
title: "Rust 如何编写测试"
date: 2022-02-03T10:58:48+08:00
draft: false
---

原理：执行 cargo test 会生成二进制文件 -> 入口函数 -> 生成 main 函数, main 函数里包含 (#[test], + tests 目录下 + 注释下测试)，其中 tests 目录，会执行集成测试
默人是并行运行，起很多线程并行运行每个测试
如果想要串行运行： cargo test --thread_num=1
背后其实是执行命令：
rustc --test src/lib.rs 告诉 rustc 生成一个运行所有单元测试的二进制文件, (启用 cfg, 放入 main 函数)

cargo test RUST_TEST_THREADS=1

```rust
fn sum(a: i8, b: i8) -> i8 {
	a + b
}

#[cfg(test)]
mod tests {
	use super::*;
	#[test]
	#[ignore]
	fn it_works() {
		assert_eq!(crate::sum(2, 2), 4);		
	}	
}
```

执行忽略测试
`cargo test -- --ignored`

集成测试： 测试被测试的代码能够一起工作, 平行于 src 目录，也就是黑盒测试
tests 目录下的每一个文件都是一个独立的 crate

如果项目是binary crate, 只含有 src/main.rs, src/lib.rs(因为它就是 crate)

编写可测试 —> 反过来推动我们编写测试
//src/main.rs -> 只会存在几行代码 -> src/lib.rs 里面的方法
所有的核心代码都存放在 	src/lib.rs
// 方便进行集成测试

//单元测试 + 集成测试 , src/main.rs 只有几行

//单元测试 -> 促使我们写出可测试代码（简洁的代码）

基准测试（性能测试）



Mock 测试
Fuzzing 测试

1. 什么是 Mock？打脏

外部接口没有准备好，需要 mock, 一般需要通过 trait

mockall 依赖




