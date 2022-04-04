---
title: "Vim 基础进阶"
date: 2022-03-18T18:40:32+08:00
draft: false
---

1. vim 剪切板互换数据
	vim --version | grep clip
复制数据到剪贴板	"+y 
从剪贴板复制数据到vim  "+p

查看剪贴板 :reg

2. 替换  
:%s/\/Users\/dev4mobile/$HOME/g
