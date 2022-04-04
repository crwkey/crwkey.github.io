---
title: "Curl 命令"
date: 2022-03-25T14:32:56+08:00
draft: false 
---

参考： https://www.jianshu.com/p/ac019dc3a0f7

curl -fsSL https://rwkey.com/images/avatar.jpg

-f 显示错误状态, 而不是返回内容
-s 不显示正在进行的任务，包括错误
-S 显示错误
-L 跟随重定向

curl https://www.shenzhenair.com/vodka/v1/dfp/bootstrap.js

返回
```
<a href="/vodka/v1/js/bootstrap_cdn.js">Found</a>.
```

curl -L https://www.shenzhenair.com/vodka/v1/dfp/bootstrap.js 
