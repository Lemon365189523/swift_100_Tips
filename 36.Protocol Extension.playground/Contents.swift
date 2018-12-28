
import UIKit

/*
 Protocol Extension 为protocol中定义的方法提供了一个默认的实现
 
 在日常开发中，另一个可以用到protocol extension的地方是optional
 
 ps: 规则
 如果类型推断得到的是实际的类型
    那么类型中的实现将被调用；如果类型中没有实现的话，那么协议扩展中的默认实现将被使用
 
 如果类型推断得到的是协议，而不是实际类型
    并且方法在协议中进行了定义，那么类型中的实现将被调用；如果类型中没有实现，那么协议扩展中的默认实现被使用
    否则 (也就是方法没有在协议中定义)，扩展中的默认实现将被调用
 
 */

protocol MyProtocol{
    func method()
}

extension MyProtocol {
    func method(){
        print("ddddd")
    }
    
    func method2(){
        print("method2")
    }
}

struct MyStruct : MyProtocol {
   
    func method(){
        print("MyStruct")
    }
    
    func method2() {
        print("MyStruct method2")
    }
}

let a1 = MyStruct()
a1.method()
a1.method2()

let a2 = a1 as MyProtocol
a2.method()
a2.method2()// 实现默认协议扩展方法
