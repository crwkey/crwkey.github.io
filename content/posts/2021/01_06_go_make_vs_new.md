---
title: "2021_01_06_go_make_vs_new"
date: 2021-01-06T15:00:13+08:00
draft: false 
---
https://www.godesignpatterns.com/2014/04/new-vs-make.html

new: 申请一块内存，返回地址
make: 用来初始化 slice, map, channel, 返回的不是指针，

```go
func main() {
const n = 5

// Start up the goroutines...
for i := 0; i < n; i++ {
    i := i
    go func() {
        select {
        case <-shutdown:
            done <- i
        }
    }()
}

time.Sleep(2 * time.Second)

// Close the channel. All goroutines will immediately "unblock".
close(shutdown)

for i := 0; i < n; i++ {
    fmt.Println("routine", <-done, "has exited!")
}
```


