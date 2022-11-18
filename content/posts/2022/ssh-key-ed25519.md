---
title: "2022 年程序员一定要做的事情-更换你的 SSH 公钥算法"
date: 2022-11-18T21:28:23+08:00
draft: false 
---

今天看到同事有用到一个比较特别的 SSH 公钥 [ed25519](https://ed25519.cr.yp.to/)，跟平时用到的 RSA 公钥相比，短，安全，而且速度还快，对于喜欢追求新工具链的我来说，简直是福利。

两个公钥对比

这是之前的 RSA 公钥

```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCeeuYrcIeIkP+wpX853pCjlAHdy+jGBattY++SW2jr6WdLiWcoQnbO8/PmmuWKmXeIEiIyGG/4Uky555T0iNj1clo+MI9HHdcNY3TYipt3Dne8gYwPVIs1atF3V3RelKU0RyIIPDLML2QjbW/g7Q2lPl9EdYfBo/9A0GG+/eAbkWAiLSkKikfc1bvIbq69iEONm+xr2HgCgN7bMO+nlJkZbuL372wpIoHrSs4IJ4fJe8KnP/42mwGNPNeTh48dYqX891opHbzpVTRQhvbIW0PL/MV1vm6Us4/MEckmgqO90RPBSVZYsk7P1Sn5Duc7IN94Kz54RBEwDFqn6RYP4rOXLFzmM09EvCFwu08r+bKTNYtQnCqnih4uhMS3ZPBHXPl4bAcvliziQs5MBbomx4Dr1vvgK7DpcWbYPUUti3GUbVF0pkBn2bzAfzcxQkrIEhbO73EqWpK05/gm4N1XTWNrMqpRELd4N/zJ+qDMhsLDcUkoTRtNu7oQfUOXn8WYIzRemAWguWQrccgDijcvVlYn5Hasjum1iR9FxHP2Qwugh5rerHe6oJ3gSDQvhY2/+Vdp6wj9LU7ntZqFiZSPvr2ZXiNApF/K1WyZZAqd4QRhTfvP5aL4V5TBKIHYaj9W+UHP+VSfDEhooT2dzdH1GGcFu2WISe/BvYRZW1Xxd7dDTw== cn.dev4linux@gmail.com
```
新的 ed25519 公钥
```
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJiBDp6+mQdh9Nn8lYbj3m71IplIyPXYyHb6npi07wWc cn.dev4linux@gmail.com
```
相比之下，新的 `ed25519` 公钥更短，不光如此，而且它的性能也比之前提高了 `10x` 多，真是太完美了，这不就是我想要的吗，又短又块，这就是我要的，于是花了点时间把服务器上所有的 SSH 公钥替换成 `ed25519`。

另外像最新的 ubuntu 系统已经默认开始启用 `ed25519` 算法，要使用之前的 RSA 配置需要额外配置。

## 给服务器替换 ed25519 公钥
在操作之前，建议把之前的公钥私钥都提前备份下，以免误操作 

1. 第一步是在本地生成 `ed25519` 密钥对, 通过命令行执行 `ssh-keygen -t ed25519 -C "cn.dev4linux@gmail.com"`, 然后一路回车就行, 最后会在 `$HOME/.ssh` 目录下生成 `id_ed25519.pub` 公钥文件
2. 然后将 `id_ed25519.pub` 里面的内容拷贝到服务器上的`$HOME/.ssh/authorized_keys` 文件末尾

3. 把之前使用的 `.id_rsa` 私钥备份或删除

## 给 github 替换 ed25519 公钥
同样拷贝上面生成的的 `ed25519` 公钥内容，将其复制到 github 公钥账户设置下面，然后使用 `ssh -T git@github.com` 连接成功，说明新的公钥设置成功。
