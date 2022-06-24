---
title: "使用 dlv 调试 go 程序"
date: 2022-06-24T09:38:24+08:00
draft: false
---

1. Go 使用的调试工具是 dlv  
```bash
/home/opc/go/bin/dlv dap --check-go-version=false --listen=127.0.0.1:43539 --log-dest=3 from /home/opc/workspace/develop/languages/golang/generics
```
2. 使用 dlv debug
`dlv debug main.go`

3. 使用 dlv debug test
`dlv test tequila/etl -- -test.run TestWriteReqChannel2CH`
