import UIKit

/*
 @selector 是 Objective-C 时代的一个关键字，它可以将一个方法转换并赋值给一个 SEL 类型，它的表现很类似一个动态的函数指针。
 在 Swift 中没有 @selector 了，取而代之，从 Swift 2.2 开始我们使用 #selector 来从暴露给 Objective-C 的代码中获取一个 selector。类似地，在 Swift 里对应原来 SEL 的类型是一个叫做 Selector 的结构体。
 
 ps:
 Swift 4 中，默认情况下所有的 Swift 方法在 Objective-C 中都是不可见的，所以你需要在这类方法前面加上 @objc 关键字，将这个方法暴露给 Objective-C，才能进行使用。
 
 */


class A {
    @objc func callMe(){
        
    }
    
    @objc func callMeWithParam(obj: AnyObject){
        
    }
    
    //如果同一作用域中存在同样的两个名字的方法，即使它们的函数签名不相同，Swift编译器也不允许编译通过
    @objc func callMe(index: Int) -> Int {
        
        return 1
    }
    
    func selectorCallMe(){
        
        //多参selector
        let anotherMethod = #selector(callMeWithParam(obj:))
        //对于相同命名的问题，可以通过将方法进行强制转换来使用
        let someMethod = #selector((callMe) as () -> ())
        let someMethodHasReturn = #selector((callMe) as (Int) -> Int)
    }
    

    
}



