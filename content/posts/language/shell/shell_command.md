~/d/p/p/t/pb ❯❯❯ tree .
.
├── go.mod
├── hello
│   └── proto
│       └── user
│           └── service.pb.go
├── proto
│   ├── article
│   │   └── message.proto
│   └── user
│       ├── message.proto
│       └── service.proto
└── service.pb.go

6 directories, 6 files

查找 所有.go 结尾的文件

```bash
for x in **/*.go do
  echo $x;
done
```



** : 会匹配所有目录

*.go 匹配以 go结尾的文件

`**/*` 代表递归获取当前目录下所有文件和文件夹
 
`**/*(.)` 只是普通文件  (https://superuser.com/questions/1638522/zsh-and-globstar-to-match-all-files-in-subdirectories-but-not-directories)

`**/*(-.)` 包括普通文件和符号链接文件

注意： * 不包含隐藏文件

shell 学习
https://xie.infoq.cn/article/247481c8dc6dc4607c1d7515e


https://www.howtogeek.com/howto/ubuntu/keyboard-shortcuts-for-bash-command-shell-for-ubuntu-debian-suse-redhat-linux-etc/#:~:text=Ctrl%2BY%3A%20Paste%20the%20last,here%20stands%20for%20%E2%80%9Cyank%E2%80%9D.
