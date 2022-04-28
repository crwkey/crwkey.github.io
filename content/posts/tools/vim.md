---
title: "Vim 常用技巧"
date: 2022-04-28T12:40:32+08:00
draft: false
---
1. vim 剪切板互换数据
	vim --version | grep clip
复制数据到剪贴板	"+y 
从剪贴板复制数据到vim  "+p

查看剪贴板 :reg

2. 替换  
:%s/\/Users\/dev4mobile/$HOME/g

3. 一次复制， 多次粘贴  
利用寄存器， 寄存器 0 是最近的数据， `"0p`
