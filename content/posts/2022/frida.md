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


route get www.yahoo.com

域名反查

dig -x 110.242.68.66









1. 网易 mumu 连接

 adb kill-server
 adb device -l










blog: https://www.cnblogs.com/mysticbinary/p/13344930.html
