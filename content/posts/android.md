---
title: "Android 开发常用工具"
date: 2022-09-07T10:45:22+08:00
draft: false
---

1. adb 连接夜神模拟器  
`adb connect 127.0.0.1:62001`


2. adb shell dumpsys activity top

3. adb shell dumpsys package ai.servicewall.sdk.dev

4. adb devices

启动一个 Activity

5. adb shell am start ai.servicewall.sdk.dev/ai.servicewall.sdk.sample.HomeActivity


adb shell /system/bin/screencap -p /sdcard/screenshot.png //截图保存到/sdcard/screenshot.png
adb pull /sdcard/screenshot.png  xxx  //导出  
adb shell screenrecord /sdcard/myrecord.mp4


adb shell dumpsys meminfo ai.servicewall.sdk.dev

 keytool -printcert -jarfile sample-v1.0.7-RAW-debug.apk


adb shell getenforce


adb shell setenforce 0   //设置后即Permissive
adb shell setenforce 1   //设置后即Enforcing


// 查看 android api levels 列表
https://apilevels.com/
