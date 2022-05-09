---
title: "Curl 命令"
date: 2022-05-09T14:32:56+08:00
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

// --trace-ascii 获取请求的完整日志
curl -H 'Content-Type: multipart/form-data' -XPOST http://127.0.0.1:80/mipha/data/dfp/bootstrap.js -d 'tUrH27_4w0w' --trace-ascii dump.log
