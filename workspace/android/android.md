1. defeating android certificate pinning with frida
https://httptoolkit.tech/blog/frida-certificate-pinning/

2. hack app: https://github.com/OWASP/owasp-mstg/tree/master/Crackmes

3. andoird  hook detect : https://github.com/senyuuri/pms-hook-detection

4. rootbeer: https://github.com/scottyab/rootbeer, https://mobile-security.gitbook.io/mobile-security-testing-guide/android-testing-guide/0x05j-testing-resiliency-against-reverse-engineering

5. hook : https://docs.huihoo.com/rsaconference/asia-pacific-2014/man-w07-app-android.pdf

https://juejin.cn/post/6992844908788711438

6. root 检测
https://github.com/devadvance/rootinspector/blob/master/app/src/main/jni/native2.cpp


https://www.anquanke.com/post/id/86653

7. https 检测

https://www.freebuf.com/articles/mobile/288262.html

8. frida 检测
https://bbs.pediy.com/thread-268586.htm
https://github.com/lizhangqu/dlfcn_compat


# 需求
域名欺诈： /etc/hosts 文件

1. https: 通讯
https://shunix.com/ssl-pinning/
https://shunix.com/tls-handshake/
https://www.usmacd.com/2021/09/01/Android_SSL_Pinning/


https://infosecwriteups.com/bypass-ssl-pinning-with-ip-forwarding-iptables-568171b52b62


1. https pinning 破解： 重新签名打包 + frida + 证书链（待考虑)

https://juejin.cn/post/6881820814908325902

https://shuibo.me/2020/07/17/android-capture.html

https://github.com/shroudedcode/apk-mitm

https://github.com/guxiaonian/MobileInfo


https://github.com/r0ysue/AndroidSecurityStudy


动态链接库加载(dlcn)
https://langzi989.github.io/2017/10/16/Unix%E4%B8%ADdl%E5%BA%93%E5%AD%A6%E4%B9%A0/

1. ART 在 Android 安全攻防中的应用  
https://blog.csdn.net/u010206565/article/details/122046785


frida 学习

https://www.ol4three.com/2021/12/21/Android/frida/Frida-Hook-%E6%80%BB%E7%BB%93/

https://eternalsakura13.com/2020/07/04/frida/#more

lsof -p 2682 查看打开的进程的 文件

Android dlopen 方法的使用限制及解决方案

https://blog.csdn.net/xiaoxi_qianlan/article/details/111645351

https://www.sunmoonblog.com/2019/06/04/fake-dlopen/?spm=ata.13261165.0.0.bb4d1bc8hQmHlY

