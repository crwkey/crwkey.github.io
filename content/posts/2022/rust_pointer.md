---
title: "Rust 智能指针"
date: 2022-02-03T23:14:29+08:00
draft: false 
---
1. 什么是智能指针? "智能" 究竟是什么意思？
2. 智能指针如何工作？
3. Box，Cell, RefCell, Rc, Arc, RwLock, Mutex, 这些智能指针的作用是什么？

String, Vec 也是智能指针

Rust 中， Trait 决定了类型的行为，那么智能指针主要实现以下两个 Trait：
1. Deref trait -> 拥有指针语义
2. Drop trait -> 拥有内存自动管理机制

Copy 语义， Move 语义

解引用 * 是强制解引用， .，& 传参数 是自动解引用
*x -> *(x.deref)

智能指针智能在何处？
1. 可以智能解引用，提升开发体验 deref trait
2. 可以自动化管理内存，安全无忧 drop trait

遇到 . 操作符时，会触发自动解引用

标准库智能指针
1. Box
2. vec 和 string
3. rc 和 ARC
4. cell 和 Refcell
5. RwLock 和 mutex

Rust 编译时需要知道一个类型需要占用空间多大，递归和 trait对象不知道空间大小


存在栈上的数据结构都是 copy 语义
 
Cell 需要 copy 语义的类型, 借助unsafe 来实现的
RefCell 不需要

Cell, RefCell 都线程不安全

Rc vs Arc

共享计数， 进入作用域 +1， 离开作用域减 1

Rc::new(), Rc::clone()





