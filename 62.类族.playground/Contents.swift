import UIKit

/*
 
 简单来说类簇就是使用一个统一的公共的类来订制单一的接口，然后在表面之下对应若干个私有类进行实现的方式。
 这么做最大的好处是避免的公开很多子类造成混乱 （NSMumber）
 
 类簇在 Objective-C 中实现起来也很自然，在所谓的“初始化方法”中将 self 进行替换，根据调用的方式或者输入的类型，返回合适的私有子类对象就可以了。
 
 但是 Swift 中的情况有所不同。因为 Swift 拥有真正的初始化方法，在初始化的时候我们只能得到当前类的实例，并且要完成所有的配置。
 
 */

let num1 = NSNumber.init(value: 1)
let num2 = NSNumber.init(value: 2.0)
let num3 = NSNumber.init(value: true)
print(num1)
print(num2)
print(num3)

class Drinking {
    typealias LiquidColor = UIColor
    var color: LiquidColor {
        return .clear
    }
    
    class func drinking(name: String) -> Drinking{
        var drinking : Drinking
        switch name {
        case "Coke":
            drinking = Coke()
        case "Beer":
            drinking = Beer()
        default:
            drinking = Drinking()
        }
        return drinking
    }
    
}

class Coke: Drinking {
    override var color: Drinking.LiquidColor{
        return .black
    }
}

class Beer: Drinking {
    override var color: Drinking.LiquidColor{
        return .yellow
    }
}

let coke = Drinking.drinking(name: "Coke")
coke.color
let beer = Drinking.drinking(name: "Beer")
beer.color

