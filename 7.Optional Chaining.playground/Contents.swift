import UIKit

/*
 为什么是用Optional Chaining?
 使用Optional Chaining可以让我们摆脱很多不必要的判断和取值。
 注意点
 因为Optional Chaining是随时都有可能提前返回nil的
 所以使用Optional Chaining所得到的东西其实是Optional
 */

class Toy {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Pet {
    var toy: Toy?
}

class Child {
    var pet : Pet?
}

extension Toy {
    func toPlay(){
        
    }
}

let xiaoming = Child()
let toyName = xiaoming.pet?.toy?.name

let playClosure = {(child: Child) -> ()? in child.pet?.toy?.toPlay()}

if let _ = playClosure(xiaoming){
    print("有玩具")
}else{
    print("没有玩具")
}
