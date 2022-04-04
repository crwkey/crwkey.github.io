1. no copy 问题， 比如 sync.WaitGroup 包含了 noCopy 定义
2. sync.WaitGroup, 多个 goroutine 同步，但不能通行
3. sync.Mutex: 对资源上锁 （https://geektutu.com/post/hpg-sync-cond.html）
4. sync.RWMutex 读写锁， sync.Locker
5. sync.once 函数执行一次
6. .sync.pool 复用对象
7. sync.cond： 条件变量，配置 sync.Locker 使用，发送信号，其他的根据相应的信号，做相应的操作
8. sync.Map： 同步 map
9. sync.atomic 原子操作
10.  close chan 可以多次读，不会堵塞，并且返回一个零值（暂且这么认为）

