import UIKit

/*
 在判等上 Swift 的行为和 Objective-C 有着巨大的差别。在 Objective-C 中 == 这个符号的意思是判断两个对象是否指向同一块内存地址。
 
 Swift 中情况大不一样，Swift 里的 == 是一个操作符的声明，在 Equatable 里声明了这个操作符的协议方法
 
 Swift 的基本类型都重载了自己对应版本的 ==，而对于 NSObject 的子类来说，如果我们使用 == 并且没有对于这个子类的重载的话，将转为调用这个类的 -isEqual: 方法
 
 对于原来 Objective-C 中使用 == 进行的对象指针的判定，在 Swift 中提供的是另一个操作符 ===。在 Swift 中 === 只有一种重载：
 
 
 */

class TodoItem {
    let uuid : String
    var title : String
    init(uuid : String, title: String) {
        self.uuid = uuid
        self.title = title
    }
}

extension TodoItem : Equatable{

}

func == (lhs: TodoItem, rhs:TodoItem) -> Bool{
    return lhs.uuid == rhs.uuid
}

let item1 = TodoItem.init(uuid: "1234", title: "imte1")
let item2 = TodoItem.init(uuid: "1234", title: "imte2")

print(item1 == item2)

print(item1 === item2)
