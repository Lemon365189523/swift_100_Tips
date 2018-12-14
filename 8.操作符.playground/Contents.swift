import UIKit

//Swift 支持重载操作符这样的特性

struct Vector2D {
    var x = 0.0
    var y = 0.0
}

let v1 = Vector2D(x: 2.0, y: 3.0)
let v2 = Vector2D(x: 3.0, y: 4.0)

func +(left: Vector2D, rigit: Vector2D) -> Vector2D{
    return Vector2D(x: left.x + rigit.x, y: left.y + rigit.y)
}

let v3 = v1 + v2


//更新操作符的步骤

//1.先对操作符进行声明，告诉编译器这个符号是一个操作符
//precedencegroup DotProductPrecedence {
//    associativity: none
//    higherThan: MultiplicationPrecedence
//}

//precedencegroup 定义操作符的优先级
//https://github.com/apple/swift-evolution/blob/master/proposals/0077-operator-precedence.md

//associativity 多个同类的操作符顺序出现的计算顺序

//higherThan 运行优先级

//infix 表示定义一个中位操作符，即前后都有输入
//prefix 在前面输入  postfix 在后输入


infix operator +*
func +*(left: Vector2D, rigit: Vector2D) -> Double{
    return left.x * rigit.x + left.y * rigit.y
}

postfix operator +++
postfix func +++(left: Vector2D) -> Vector2D{
    return Vector2D(x: left.x + 1, y: left.y + 1)
}

let result = v1 +* v2

let v4 =  v3+++
