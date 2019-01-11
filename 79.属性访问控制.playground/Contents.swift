import UIKit

/*
 Swift 中由低至高提供了 private，fileprivate，internal，public 和 open 五种访问控制的权限。默认的 internal 在绝大部分时候是适用的
 
 
 private 让代码只能在当前作用域或者同一文件中同一类型的作用域中被使用
 
 fileprivate 表示代码可以在当前文件中被访问，而不做类型限定。
 
 internal 表示同一个target中其他代码可以访问
 
 如果我们在为其他开发者开发库的话，可能会希望用一些 public 甚至 open，因为在 target 外只能调用到 public 和 open 的代码。
 
 public 如果你只希望框架的用户使用某个类型和方法，而不希望他们继承或者重写的话，应该将其限定为 public
 
 open 只有被 open 标记的内容才能在别的框架中被继承或者重写。
 
 
 */


class MyClass {
    //只能在类型里设置name属性
    private(set) var name : String?
}

