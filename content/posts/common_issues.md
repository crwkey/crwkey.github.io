---
title: "Common_issues"
date: 2021-03-25T09:29:35+08:00
draft: false 
---

### docker issue
docker version: 20.10.5

Error [internal] load metadata for 

failed to solve with frontend dockerfile.v0

solution:

using  DOCKER_BUILDKIT=0 docker build xxxx


this is docker buildkit bug:
https://github.com/moby/buildkit/issues/721
