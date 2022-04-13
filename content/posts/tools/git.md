---
title: "Git 使用"
date: 2022-03-14T23:13:55+08:00
draft: false 
---

1. git 别名  
git save  
```
git config --global alias.save '!git add -A && git commit -m "SAVEPOINT"'
```
git wip
```
git config --global alias.wip '!git add -u && git commit -m "WIP"'
```
git undo
```
git config --global alias.undo '!git reset HEAD^ --mixed'
```
git wipe
```
git config --global alias.wipe \
'!git add -A && git commit -qm "WIPE SAVEPOINT" && git reset HEAD~1 --hard'
```


> https://nicolaiarocci.com/git-worktree-vs-git-savepoints/
