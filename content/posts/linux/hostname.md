---
title: "Host Name"
date: 2022-05-09T16:28:21+08:00
draft: false
---

获取主机名

`ip -o route get to 114.114.114.114 | sed -n 's/.*src \([0-9.]\+\).*/\1/p'`
`hostname -i`
