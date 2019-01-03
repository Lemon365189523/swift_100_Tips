import UIKit

/*
 Objective-C 和 Swift 在底层使用的是两套完全不同的机制，Cocoa 中的 Objective-C 对象是基于运行时的，它从骨子里遵循了 KVC (Key-Value Coding，通过类似字典的方式存储对象信息) 以及动态派发 (Dynamic Dispatch，在运行调用时再决定实际调用的具体实现)。而 Swift 为了追求性能，如果没有特殊需要的话，是不会在运行时再来决定这些的。也就是说，Swift 类型的成员或者方法在编译时就已经决定，而运行时便不再需要经过一次查找，而可以直接使用
 
 如果你用 Swift 写的 class 是继承自 NSObject 的话，Swift 会默认自动为所有的非 private 的类和成员加上 @objc
 
 @objc 修饰符的另一个作用是为 Objective-C 侧重新声明方法或者变量的名字。
 
 
 */


class MyClass {
    
    @objc
    func greeting(name: String){
        
    }
    
}

