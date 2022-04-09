---
title: "Github workflow"
date: 2022-04-09T10:14:08+08:00
draft: false
---

1. 项目工程目录下新建 .github/workflows/build_test.yml  

build_test.yml 内容
```yml
name: build_test

on:
  push:
    branches: [ master, develop ]
  pull_request:
    branches: [ master, develop ]

jobs:

  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3

    - name: Set up Go
      uses: actions/setup-go@v3
      with:
        go-version: 1.17

    - name: Build
      run: go build -v ./...

    - name: Test
      run: go test -v ./...

```
