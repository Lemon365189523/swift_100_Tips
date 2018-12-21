import UIKit

/*
 associatedtype的作用？ ----
 
 定义一个协议时，有的时候声明一个或多个关联类型作为协议定义的一部分将会非常有用。关联类型为协议中的某个类型提供了一个占位名（或者说别名），其代表的实际类型在协议被采纳时才会被指定。你可以通过 associatedtype 关键字来指定关联类型。
 
 注意事项 ----
 添加 associatedtype 后，Animal协议就不能当作独立的类型使用了
 在一个协议加入了像是 associatedtype 或者 Self 的约束后，它将只能被用为泛型约束，而不能作为独立类型的占位使用，也失去了动态派发的特性
 
 */


protocol Food{}

protocol Animal{
//    associatedtype F
    //可以使用冒号来指定类型满足某协议
    associatedtype F : Food
    func eat(_ food: F)
}

struct Meat: Food {}

struct Grass : Food{}

//但老虎不吃草，需要在eat方法中做另外判断，这种判断是无意义的
//所以使用associatedtype 把类型确定放在实现时
struct Tiger : Animal {
    func eat(_ food: Meat) {
        print(food)
    }
}
/* 会报错误
func isDangerous(animal: Animal) -> Bool{
    if animal is Tiger {
        return true
    }else {
        return false
    }
}
 */
//正确写法

func isDangerous<T: Animal>(animal: T) -> Bool{
    if animal is Tiger {
        return true
    }else {
        return false
    }
}

isDangerous(animal: Tiger())
