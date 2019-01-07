import UIKit

/*
 Swift 的 protocol 是可以被除了 class 以外的其他类型遵守的，而对于像 struct 或是 enum 这样的类型，本身就不通过引用计数来管理内存，所以也不可能用 weak 这样的 ARC 的概念来进行修饰。
 
 想要在 Swift 中使用 weak delegate，我们就需要将 protocol 限制在 class 内。一种做法是将 protocol 声明为 Objective-C 的，这可以通过在 protocol 前面加上 @objc 关键字来达到
 
 另一种可能更好的办法是在 protocol 声明的名字后面加上 class，这可以为编译器显式地指明这个 protocol 只能由 class 来实现
 
 */

//delegate添加@objc
@objc protocol MyClassDelegate{
    func method()
}

//声明后添加class，告诉编译器这协议只能class来实现
protocol ClassDelegate : class {
    func method()
}

class MyClass {
    weak var delegate : MyClassDelegate?
    weak var classDelegate : ClassDelegate?
}


