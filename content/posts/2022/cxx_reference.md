---
title: "C++ 引用"
date: 2022-11-12T09:51:49+08:00
draft: false 
---
引用可以简单理解为一个实体的别名，这个实体可以是变量，也可以是一个常量和字面量，另外使用它的最大好处是在内存中不会生成副本，提高了数据的传递效率。

```c++
#include <string>
using namespace std;

int main() {
  int a = 1;
  int &r1 = a; //r1 对 a 的引用
  const int b = 10;
  const int& r2 = b;  // r2 对常量 b 的引用
  const int& r3 = 30; // r3 对字面量 30 的引用
  const string& r4 = "hello"; // r4 对字面量 "hello" 的引用
  return 0;
}
```
# 定义  

`类型 &引用符号 = 实体`

1. 变量引用  
比如说有一个变量 int a = 1; 那么想要产生一个对变量 a 的引用r1, 那么可以这样写，int &r1 = a;
2. 常量引用
常量定义和变量有些区别， 引用的类型必须带 const；比如说定义一个常量 const int b = 10; 那么引用的定义必须是这样： const int &r2 = b;
3. 字面量引用
字面量引用也跟常量引用一样，类型也必须使用 const 来修饰，比如 const int& r3 = 30;

注意  
* 引用不能当成实体，即没有引用的引用，int && r = 10，这种写法其实是右值引用 
* 引用和指针有区别，指针不安全，可以随意改变实体，const 引用只能使用实体
* 引用是通过指针实现的，但是指针使用起来比较繁杂，需要 * 操作符来使用实体，但是引用就像使用实体变量一样来达到和使用指针一样的效果

## 引用的使用场景

* 引用出现在函数参数， 好处是函数传参效率更高，避免局部变量的压栈出栈
  ```c++
  void foo(int& a, int& b) {}
  ```
* 引用出现在返回值，注意此时返回的不能是一个局部变量, 编译会有一个 warning 提示，返回引用实体的空间会被回收，输出的结果可能是意想不到！
  ```c++
  int& foo() {
    int a = 3;  
    return a;  // warning: Reference to stack memory associated with local variable 'a' returnedclang(-Wreturn-stack-address)
  }
  ```
  返回值的引用可以做为左值，可以被赋一个右值 
  ```c++
    #include <iostream>
    using namespace std;

    int temp;

    int& foo() {
      temp = 10;
      return temp;
    }
    int main() {
      foo() = 100;  // foo() 返回的值作为左值
      cout << temp << endl;
      return 0;
    }
  ```

## 总结
引用就是高效安全使用内存的一种方式，避免内存重复分配，相比指针，更加安全「加上 const 只读」和方便
