import UIKit

/*
 Any
 
 AnyObject
 
 AnyClass
    typealias AnyClass = AnyObject.Type
    得到元类型（Meta）
 */

class A :UIViewController {
    
}
// 从A中取出类型时，需要使用 .self
let a = A()

let typeA : A.Type = A.self

print(typeA)
//print(typeA is UIViewController.Type)

let typeA2 : AnyClass = A.self
print(typeA2)
print(typeA2 is UIViewController.Type)

//获取实例本身，没什么用
let type3 = a.self
print(a)
print(type3)
