---
title: "Docker 常用命令"
date: 2022-03-18T12:36:12+08:00 
draft: false
---
1. 查询 docker 错误日志  
* ``` grep -Ei -C 100 'err|exception|fatal|error|panic|failed|fail' `docker inspect --format='{{.LogPath}}' container_id` ```
* `docker logs -f container_id --tail 20` 

2. docker 镜像加速
针对Docker客户端版本大于 1.10.0 的用户

您可以通过修改daemon配置文件/etc/docker/daemon.json来使用加速器

sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://6a1o9a2p.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker

3. docker 离线安装  
https://juejin.cn/post/6967138136975638559  
http://liubin.org/blog/2016/04/24/how-to-choose-a-docker-monitor-solution/
