import UIKit

/*
 类型范围作用域
 staic
 
 class
 
 在非class的类型上下文中，我们统一使用static来描述类型作用域，包含了enum和struct
 
 */

struct Point {
    
    let x : Double
    let y : Double
    //存储属性
    static let zero = Point(x: 0, y: 0)

    //计算属性
    static var ones: [Point] {
        return [
            Point(x: 1, y: 1),
            Point(x: -1, y: -1)
        ]
    }
}

class MyClass{
    static var string: String?
}

MyClass.string = "test"

print(MyClass.string)



