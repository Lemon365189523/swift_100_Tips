import UIKit


/*
 Designated （指定）
 
 Convenience （便利）
 
 Required  (必须实现)
 
 Swift中不加s修饰的init方法都需要咋方法中保证所有非Optional的实例变量被赋值初始化，
    在子类中也强制调用super的Designated初始化
 
 convenience初始化都必须调用同一个类中的designated初始化完成设置，
    另外convenience的初始方法是不能被子类重写或者是从子类中以super的方式调用
 
 只要子类中实现l重写了父类convenience方法中所需要的init方法的话，子类中也可以使用父类的convenience初始化方法了
 
 初始化原则：
    初始化路径必须保证对象完全初始化，这可以通过调用本类型的 designated 初始化方法来得到保证。
 
    子类的 designated 初始化方法必须调用父类的 designated 方法，以保证父类也完成初始化。
 
    对于某些我们希望子类中一定实现的 designated 初始化方法，我们可以通过添加 required 关键字进行限制，强制子类对这个方法重写实现
 
 
 */

class ClassA {
    let numA : Int
    
    required init(num: Int) {
        numA = num
    }
    
    convenience init(bigNum: Bool) {
        self.init(num: bigNum ? 1000 : 1)
    }
}

class ClassB : ClassA {
    let numB : Int
    //只要子类中实现重写了父类convenience方法中所需要的init方法的话，子类中也可以使用父类的convenience初始化方法了
    required init(num: Int) {
        numB = num + 1
        super.init(num: num)
    }
//    convenience init(xx: Int){
//        self.init(num: xx)
//    }
}

let anObj = ClassB(bigNum: true)

print(anObj.numB)
print(anObj.numA)
