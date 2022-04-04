## my blog
1. 配置 git 代理

https://gist.github.com/laispace/666dd7b27e9116faece6

alter table org_app_info add column cdn_boostrap_url varchar(512) after deviceid_key_name

CREATE TABLE IF NOT EXISTS `cdn_bootstrap`(
    `id` bigint(10) AUTO_INCREMENT,
    `name` varchar(30) NOT NULL,
    `version` varchar(20) NOT NULL,
    `url` varchar(256) NOT NULL,
    `remark` varchar(100),
    `status` tinyint(1) default 1,
    `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `update_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`id`)
)ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COLLATE = utf8mb4_unicode_ci;


本地电子书管理工具

最强大的本地电子书管理工具：Calibre 使用指南

Rust 生命周期

这个是生命周期规则：

单输入，单输出，可以省略
多输入，无输出，可以省略
多输入 有self，有输出， 可以省略

除这三种情况下 输出引用，都需要声明"

&str是个切片， 这个切片可以指向栈，也可以指向o

宏展开

https://github.com/dtolnay/cargo-expand#cargo-expand

书籍
apue unp tlpi 看完就好了吧

String -> &String
clone(), into(), to_owned(), tostring()


可以先自己撸一个命令行应用

https://github.com/async-graphql/async-graphql

https://rust-cli.github.io/book/index.html


// jd-GUI 问题

https://www.jianshu.com/p/ee2932b46d80


// 命令行应该显示分支

缩写
https://github.com/GopherJ/cfg/blob/master/zshrc/.zshrc#L1

go 微服务

https://lailin.xyz/post/go-training-week4-clean-arch.html

https://ch3nye.top/%E3%80%90%E5%AE%9E%E6%88%98%E3%80%91%E6%9F%90%E4%BA%A4%E5%8F%8Bapp%E7%9A%84%E5%8F%8C%E5%90%91%E8%AE%A4%E8%AF%81crack/
