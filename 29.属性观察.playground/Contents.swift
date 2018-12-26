import UIKit

/*
 属性观察
 willSet
 
 didSet
 
 计算属性
 set get
 
 存储属性将会在内存中实际分配地址对属性进行存储，而计算属性则不包括背后的存储，只是提供 set 和 get 两种方法。在同一个类型中，属性观察和计算属性是不能同时共存的
 
 果我们无法改动这个类，又想要通过属性观察做一些事情的话，可能就需要子类化这个类，并且重写它的属性了
 
 ps:在初始化方法以及在willSet、didSet中对属性的c再次设定都不会触发属性观察的调用
 
 */



class MyClass {
    var index : Int {
        willSet {
            print("willSet新index：\(newValue)")
            print("willSet旧index：\(index)")
        }
        
        didSet{
            print("didSet旧index：\(oldValue)")
            print("didSet新index：\(index)")
            //不会触发dwillSet didSet
//            index = 35
        }
    }
    
    init() {
        index = 0
    }
}

let a = MyClass()
a.index = 20
print(a.index)




