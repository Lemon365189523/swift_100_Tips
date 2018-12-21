import UIKit

/*
 所谓字面量，就是指像特定的数字，字符串或者是布尔值这样，能够直截了当地指出自己的类型并为变量进行赋值的值
  */

let number = 3
let string = "Hello"
let bool = true
let array = [1,2,3]
let dic = ["key1": "value1"]

/*
 对于那些实现了字面量表达协议的类型，在提供字面量赋值的时候，就可以简单地按照协议方法中定义的规则“无缝对应”地通过赋值的方式将值表达为对应类型。
 */

enum MyBool : Int {
    case myTrue, myFalse
}

extension MyBool : ExpressibleByBooleanLiteral {
    typealias BooleanLiteralType = Bool
    
    init(booleanLiteral value: MyBool.BooleanLiteralType) {
        self = value ? .myTrue : .myFalse
    }
}

let myTrue: MyBool = true
print(myTrue.rawValue)

//extension 里不能定义 required的初始化方法
class Preson : ExpressibleByStringLiteral {
    let name : String
    init(name value: String) {
        self.name = value
    }
    
//    required init(stringLiteral value: String) {
//        self.name = value
//    }
    required convenience init(stringLiteral value: String) {
        self.init(name: value)
    }
}

let preson : Preson = "lemon"

print(preson.name)




