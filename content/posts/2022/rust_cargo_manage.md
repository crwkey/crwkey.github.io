---
title: "Cargo 包管理"
date: 2022-02-02T18:19:53+08:00
draft: false 
---
1. 为啥需要包管理器？ 模块化?
* 版本管理
* 模块重用
* 依赖
* 模块化编程
* IDE 友好

1. 模块化编程（把大代码文件拆成小的模块）
2. package(按照约定目录结构管理)
3. 版本管理（编写包的时候，难免会依赖第三方包）解决依赖
4. 包管理工具
5. cargo
6. crate
7. crate.io

8. cargo new
toml 配置文件

cargo help new
cargo new --lib study
![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220202191451.png)

为啥用 toml 文件管理， 转化为 hash 表

3. 模块化
解决模块化，高效做开发, 模块系统是如何工作的？
mod, pub 关键字的作用

构建模块树

crate 根 -> main.rs -> mod 声明 —> config.rs 或 cofing/mod.rs
默认私有 -> pub

mod module -> module.rs 或 module/mod.rs


mod 显示声明构建模块树

use 使用模块路径最短

extern crate rand  --2015 版本引入第三方包, 现在已经弃用

super 指向父级的作用域
crate::xxx 作用域

self 自身作用域 一般很少用
