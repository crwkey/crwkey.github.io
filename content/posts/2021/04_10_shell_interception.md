---
title: "SHELL 字符串截取"
date: 2021-04-10T10:57:58+08:00
draft: false
---

关于 Linux SHELL 字符串截取有几种方法，第一种就是 ${var} 运算符，另外一种就是 cut 命令。

# ${var} 运算符

|      命令      |                             用法                             |
| :------------: | :----------------------------------------------------------: |
| ${var#*string} | var 是变量名， #是运算符，*string 表示从左边开始删除第一个string及左边的字符 |
| ${var##* string}| 在 var 字符串里面从左往右找，删除最后一个找到的 string，以及左边的字符|
| ${var%string*}               | 在 var 字符串里面从右往左找，删除第一个找到的 string，以及右边的字符 |
| ${var%%string*} | 在 var 字符串里面从右往左找，删除最后一个找到的 string，以及右边的字符 |
| ${var:n1:len} |截取 var 字符串里面从第n1个字符串开始的 len 个字符|
|${var:n1}|从 var 第 n1 个字符开始，一直到结束|
|${var:0-n1}|从右第n1个字符开始，直到结束|
|${var:0-n1:len}|从右第 n1 个字符开始，取 len 个字符，直到结束|

举例说明

下面我以 var="https://github.com/JakeWharton/uniqtoo/blob/1654dab775/src/main.rs" 为例进行说明

1. 截取文件名
    ${var#*src/}
2. 保留 https
    ${var%://github*}
3.  截取前 5 个字符
    ${var:0:5}

# cut 命令

可以从标准输入或文件切出字段

|    command    |                   useage                   |
| :-----------: | :----------------------------------------: |
| cut -d':' -f2 | -d 指定分隔符， 这里是  :  ，-f 是取第几列 |
|  cut -c 1-3   |            截取第 1 ~ 3 个字符             |

举例说明

比如字符串 var="aaa, bbb, ccc"

执行 `echo $var | cut -d',' -f1-2 `,  结果是 `aaa,bbb`



