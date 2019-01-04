import UIKit

/*
 
 在 Swift 中，我们会发现不管是纯 Swift 的 class 还是 NSObject 的子类，都没有像原来那样的 class() 方法来获取类型了。对于 NSObject 的子类，因为其实类的信息的存储方式并没有发生什么大的变化，因此我们可以求助于 Objective-C 的运行时，来获取类并按照原来的方式转换
 
 */

let date =  NSDate()
let name : AnyClass! = object_getClass(date)
print(name)

let name2 = type(of: date)
print(name2)

let string = "hello"
let stringType = type(of: string)
print(stringType)
