---
title: "Git 常用命令"
date: 2022-03-17T09:27:27+08:00
draft: false 
---

1. 拉取最新的 tags  
```git fetch --tags```


2. checkout 最新的 tag  
```latest_tag=$(git describe --tags `git rev-list --tags --max-count=1`) && git checkout tags/${latest_tag} -b ${latest_tag}```


3. 来回切换上一次的分支  
```git switch -``` 或 ```git checkout -```, 类似 `Linux 命令的 cd -` 用法

4. 切换指定的 commit
`git checkout commit_id`

5. 上传大文件 (安装 git lfs)
brew install git-lfs
git lfs track [file]


参考
> https://devconnected.com/how-to-checkout-git-tags/  
> https://www.techiedelight.com/clone-specific-tag-with-git/ 
> https://blog.csdn.net/gtLBTNq9mr3/article/details/110729551
