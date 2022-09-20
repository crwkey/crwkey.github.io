---
title: "frida 教程"
date: 2022-08-31T09:51:49+08:00
draft: false 
---

常用命令

adb shell getprop ro.product.cpu.abi 


frida -U -f ai.servicewall.sdk.dev  --no-pause -l frida.js

frida-ps -U   // -U usb 连接

adb shell dumpsys activity top  // 获取顶层的 activity

burp suite 抓包

设置代理

adb shell settings put global http_proxy 192.168.110.2:8080

adb shell settings put global http_proxy :0

alais adb_proxy='adb shell settings put global http_proxy 192.168.110.2:8080'

adb shell settings get global http_proxy


route get www.yahoo.com

域名反查

dig -x 110.242.68.66


// android 编辑器

toybox vi config.xml


清理应用缓存

adb shell pm clear com.iss.qishangbank






1. 网易 mumu 连接

 adb kill-server
 adb device -l










blog: https://www.cnblogs.com/mysticbinary/p/13344930.html



iptables -t nat -n -L --line-numbers

iptables -t nat -D OUTPUT 1

iptables -t nat -A OUTPUT -d 0.0.0.0/0 -p tcp -j DNAT --to 192.168.110.2:8080


burpsuit 安装

https://zhuanlan.zhihu.com/p/478151736

安装证书

浏览器访问 http://burp

后缀名改成 .cer 就能安装了


adb shell settings put global http_proxy ip:端口

adb shell settings delete global http_proxy
adb shell settings delete global global_http_proxy_port
adb shell settings delete global global_http_proxy_host

或者 adb shell settings put global http_proxy:0
