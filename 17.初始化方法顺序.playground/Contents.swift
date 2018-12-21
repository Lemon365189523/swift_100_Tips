import UIKit

/*
 与Objective-C不同，Swift的初始化方法需要保证类型的所有属性都被初始化
 
 */

class Cat {
    var name :String
    init() {
        name = "cat"
    }
}

class Tiger: Cat {
    let power : Int
    override init() {
        power = 10
        //如果不需要重写父类的属性，super.init()可以不写，swift自动调用
        super.init()
        name = "tiger"
    }
}
