import UIKit

protocol IntervalType {
    
    func clamp(intervalToClamp: Self) -> Self
}

/*
 在协议中使用Selfs，是因为协议本身没有自己的上下文类型信息的，在声明协议的时候，我们并不知道最后究竟会是什么样的类型来实现
 
 */

protocol Copyable{
    func copy() -> Self?
}

class MyClass: Copyable {
    var num = 1
    
    required init() {
        
    }
    
    func copy() -> Self? {
        //要使用类型来初始化
        //必须保证当前类和其子类都能响应这个init的，所有需要用到required
        //或者在当前类类的声明前添加final关键字，告诉编译器我们不再会有子类继承这个类型
        let result = type(of: self).init()
        result.num = num
        return result
    }
}

//ps: 另一个可以使用Self的s地方在类方法中，使用起来十分相似

