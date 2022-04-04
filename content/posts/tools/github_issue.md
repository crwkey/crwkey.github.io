---
title: "github 提交问题"
date: 2021-08-16T10:16:03+08:00
draft: false
---

提交代码发生了这样的问题：

remote: Support for password authentication was removed on August 13, 2021. Please use a personal access token instead.

remote: Please see https://github.blog/2020-12-15-token-authentication-requirements-for-git-operations/ for more information.

fatal: unable to access 'https://github.com/zhoulujun/algorithm.git/': The requested URL returned error: 403

因为使用了 https地址，而应该使用 ssh 地址

解决方案： 将 remote 地址 改成 ssh 地址

命令： git remote set-url origin git@gihub.com:xxx/repository



[hello.com](mailto: cn.dev4mobile@gmai.com)

