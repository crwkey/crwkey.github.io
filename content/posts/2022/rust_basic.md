---
title: "Rust 问题解惑"
date: 2022-02-07T17:12:39+08:00
draft: false 
---

fn main() {
    let regions = ["southern_germany", "chinese", "english"];
    // for regin in regions.iter() {
    //     println!("{}", regin);
    // }

    for region in regions.into_iter() {
        println!("{}", region);
    }
    
    for region in regions {
        println!("{}", region);
    }


    // let f = 13.24;
    // let r: f64 = 13.14f64.round();
    // println!("{}, {}", r, f);
}


![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220207171326.png)

![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220207171345.png)

![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220207171409.png)

![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220207171536.png)

![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220207172329.png)

![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220207172534.png)

![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220207172917.png)

![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220207173525.png)


https://doc.rust-lang.org/edition-guide/rust-2021/IntoIterator-for-arrays.html

![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220207174509.png)


let s = "hello"
let s2 = &s;
println!("{}", s2) // 会自动解引用 

https://doc.rust-lang.org/std/primitive.array.html

![](https://raw.githubusercontent.com/crwkey/pics/master/img/20220208161806.png)