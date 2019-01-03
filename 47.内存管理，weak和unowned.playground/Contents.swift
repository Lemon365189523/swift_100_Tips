import UIKit

/*
 
 循环引用，闭包逃逸
 
 */


class A: NSObject {
    let b : B
    override init() {
        b = B()
        super.init()
        b.a = self
    }
    
    deinit {
        print("A deinit")
    }
}

class B: NSObject {
    
    weak var a : A? = nil
    deinit {
        print("B deinit")
    }
}

var obj: A? = A()
//obj?.b.a = nil
obj = nil
