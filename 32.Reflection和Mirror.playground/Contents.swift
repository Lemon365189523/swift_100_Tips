import UIKit

/*
 反射特性可以让我们有机会在运行的时候通过某些条件实时地决定调用的方法，或者甚至向某个类型动态地设置甚至加入属性及方法，是一种非常灵活和强大的语言特性
 
 Swift2.0中所有类型都实现了 _Reflectable，我们可以通过_reflect来获取任意对象的一个镜像
 
 Swift2.0后使用Mirror类型来做类似的事情
 
 */

struct Person {
    let name : String
    let age : Int
}

let xiaoMing = Person(name: "XiaoMing", age: 16)

let mirror = Mirror(reflecting: xiaoMing)

for chile in mirror.children {
    print("属性名:\(String(describing: chile.label))")
    print("值:\(chile.value)")
}
