---
title: "优雅的处理 Rust 错误"
date: 2022-02-02T11:48:54+08:00
draft: false 
---
1. unwarp

```rust
fn main() {
	let path = "/home/test.txt";
	read_file(path);
}

fn read_file(path: &str) -> String {
	// unwarp 用于 Option 或 Result的结果获取
	std::fs::read_to_string(path).unwrap()
}
```
上面程序会 panic

避免使用 unwrap

```rust
fn main() {
	let path = "/home/test.txt";
	match read_file(path) {
		Ok(file) => {
			// 可能有嵌套， 再一次 match
			println!("{}", file);
		}
		Err(e) => {
			println!("{}, {}", path, e);
		}
	}
}
//枚举的好处: 多选一， OK 和 Err(限定在有限的集合中）
//健壮性: 对程序运行的结果全部可控
fn read_file(path: &str) -> Result<String, std::io::Error>{
	std::fs::read_to_string(path)
}
```

unwrap -> result,mathch(不会 painc) -> 自定义错误 + From 转换（?)



自定义错误

```rust
// /home/opc/.cargo/bin/cargo run --package cider --bin cider 

use std::error::Error;


#[derive(Debug)]
struct ChildError;

#[derive(Debug)]
struct CustomError {
	err: ChildError
}

impl std::fmt::Display for CustomError {

    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
	    write!(f, "Custom error is here")
    }
}

impl std::error::Error for CustomError {
    fn source(&self) -> Option<&(dyn std::error::Error + 'static)> {
        // None
	    Some(&self.err)
    }
}


impl std::fmt::Display for ChildError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
	    write!(f, "Child error is here")
    }
}

impl std::error::Error for ChildError {
    fn source(&self) -> Option<&(dyn std::error::Error + 'static)> {
        None
    }
}

fn get_supper_error() -> Result<(), CustomError> {
	Err(CustomError{ err: ChildError})
}

fn main() {
    match get_supper_error() {
        Err(err) => {
            println!("{}",err); 
            println!("caused by {}", err.source().unwrap());
        }
        _ => {
            println!("No error");
        }
    } 
}	
```

用 Option 来包装

![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220202153911.png)



嵌套解决方案
```rust
// /home/opc/.cargo/bin/cargo run --package cider --bin cider 

fn read_file(path: &str) -> Result<String, std::io::Error> {
    std::fs::read_to_string(path)
}

fn to_utf8(v: &[u8]) -> Result<&str, std::str::Utf8Error> {
    std::str::from_utf8(v)
}

fn to_u32(v: &str) -> Result<u32, std::num::ParseIntError> {
    v.parse::<u32>()
}

fn main() {
    let path = "/home/opc/workspace/develop/languages/rust/cider/test.txt";
    match read_file(path) {
        Ok(v) => {
            match to_utf8(v.as_bytes()) {
               Ok(u) => {
                match to_u32(u)      {
                     Ok(t) => {
                         println!("{}", t)
                     },
                     Err(_) => {}
                }

               }
               Err(_) => {}
            }
        }
        Err(_) => {}
    }
}

```
上面这种方案嵌套层次太多了

解决方案 From(转化) + ？


```rust
// /home/opc/.cargo/bin/cargo run --package cider --bin cider 

use std::{fmt::Display, num::ParseIntError, str::Utf8Error, error::Error};


#[derive(Debug)]
enum CustomError {
    ParseIntError(std::num::ParseIntError),
    Utf8Error(std::str::Utf8Error),
    IoError(std::io::Error),
}

impl Error for CustomError {
    fn source(&self) -> Option<&(dyn std::error::Error + 'static)> {
        match &self {
            CustomError::IoError(ref e) => Some(e),
            CustomError::Utf8Error(ref e) => Some(e),
            CustomError::ParseIntError(ref e) => Some(e),
        }
    }
}

impl Display for CustomError {

    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match &self {
            CustomError::IoError(ref e) => e.fmt(f),
            CustomError::Utf8Error(ref e) => e.fmt(f),
            CustomError::ParseIntError(ref e) => e.fmt(f)
        }
        
    }
}

impl From<ParseIntError> for CustomError {
    fn from(s: ParseIntError) -> Self {
        CustomError::ParseIntError(s)
    }
}

impl From<Utf8Error> for CustomError {
    fn from(s: Utf8Error) -> Self {
        CustomError::Utf8Error(s)
    }
}

impl From<std::io::Error> for CustomError {
    fn from(s: std::io::Error) -> Self {
        CustomError::IoError(s)
    }
}

fn read_file(path: &str) -> Result<String, std::io::Error> {
    std::fs::read_to_string(path)
}

fn to_utf8(v: &[u8]) -> Result<&str, std::str::Utf8Error> {
    std::str::from_utf8(v)
}

fn to_u32(v: &str) -> Result<u32, std::num::ParseIntError> {
    v.parse::<u32>()
}

fn main() -> Result<(), CustomError> {
    let path = "/home/opc/workspace/develop/languages/rust/cider/test.txt";
    let content = read_file(path)?;
    let u = to_utf8(content.as_bytes())?;
    let v = to_u32(u)?; 
    println!("{}", v);
    Ok(())
}
```


