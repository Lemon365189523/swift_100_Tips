import UIKit


class MyClass {
    func method(number: Int) -> Int {
        return number + 1
    }
    
    class func method(number: Int) -> Int{
        return number
    }
}

let f : (MyClass) -> (Int) -> Int = MyClass.method
//f : (MyClass) -> (Int) -> Int
//Swift 中可以直接使用T Type.instanceMethod 的语法来生成一个可以柯里化的方法

let obj = MyClass()
let result = f(obj)(1)
print(result)

//类方法
let f2 : (Int) -> Int = MyClass.method
let result2 = f2(5)
print(result2)
