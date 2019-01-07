import UIKit

/*
 
 关联对象
 
 “key 的类型在这里声明为了 Void?，并且通过 & 操作符取地址并作为 UnsafePointer<Void> 类型被传入。”
 
 
 */

class MyClass {
    
}

private var key : Void?

extension MyClass {
    var title : String? {
        get {
            return objc_getAssociatedObject(self, &key) as? String
        }
        set {
            objc_setAssociatedObject(self, &key, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

let a = MyClass()
a.title = "eeee"
print(a.title)
a.title = "ffff"
print(a.title)
