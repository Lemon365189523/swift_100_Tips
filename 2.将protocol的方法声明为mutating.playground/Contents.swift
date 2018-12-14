import UIKit

var str = "Hello, playground"

//Swift的protocol不仅可以被class类型实现，也适用于struct和enum
//在写给别人用的协议需要考虑是否使用mutating来修饰方法
//mutating关键字是为了在该方法中修改 struct 或 enum 的变量

protocol Vehicle {
    var numberOfWheels : Int {get}
    var color : UIColor {get set}
    mutating func changeColor()
}

class MyClass : Vehicle {
    var numberOfWheels: Int = 4
    var color: UIColor = .blue
    //有没有mutating对class不影响
    func changeColor() {
        color = .red
    }
}

struct MyStruct : Vehicle {
    var numberOfWheels: Int = 4
    var color: UIColor = .blue
    //struct 和 enum 是值类型，需要在changeColor 前添加mutaing
    mutating func changeColor() {
        color = .red
    }
}



