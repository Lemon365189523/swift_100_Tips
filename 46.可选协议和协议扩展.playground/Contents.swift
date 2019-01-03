import UIKit

/*
 
 原生的 Swift protocol 里没有可选项，所有定义的方法都是必须实现的。如果我们想要像 Objective-C 里那样定义可选的协议方法，就需要将协议本身和可选方法都定义为 Objective-C 的，也即在 protocol 定义之前以及协议方法之前加上 @objc。另外和 Objective-C 中的 @optional 不同，我们使用没有 @ 符号的关键字 optional 来定义可选方法
 
 
 注意点
 使用 @objc 修饰的 protocol 就只能被 class 实现了，也就是说，对于 struct 和 enum 类型，我们是无法令它们所实现的协议中含有可选方法或者属性的
 
 
 */

@objc protocol OptinalProtocol {
    @objc optional func optionalMethod()
}
