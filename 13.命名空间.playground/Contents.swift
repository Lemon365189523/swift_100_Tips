import UIKit

/*
 Objective-C中没有命名空间，swift中提供了命名空间
 
 什么是命名空间？-----
 
 应用开发时，所有的代码和引用的静态库最终都会被编译到同一个域和二进制中。
 这样的后果是一旦我们有重复的类名的话，就会导致编译时的冲突和失败。
 为了避免这种事情的发生，Objective-C 的类型一般都会加上两到三个字母的前缀，比如 Apple 保留的 NS 和 UI 前缀”
 
 在 Swift 中，由于可以使用命名空间了，即使是名字相同的类型，只要是来自不同的命名空间的话，都是可以和平共处的。
 
 Swift的命名空间是基于module代表了Swift中的一个命名空间，就是说同一个Target里的类型名称还是不能相同的，但不同target里可存在相同名称的类型 (Framework)
 
 如何使用？-----
 在使用时，如出现冲突的时候，需要在类型名称前加上module的名称
 
 MyClass.hello()
 
 MyFramework.MyClass.hello()
 
 其他处理手段-----
 
 使用类型嵌套的方法来指定访问的范围
    代码
     ||
     ||
     \/
 */


struct MyClassContainer1 {
    class MyClass {
        class func hello(){
            print("myclass")
        }
    }
}

struct MyClassContainer2 {
    class MyClass {
        class func hello(){
            print("myclass")
        }
    }
}

MyClassContainer1.MyClass.hello()
MyClassContainer2.MyClass.hello()
