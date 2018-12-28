import UIKit

/*
 where使用场景
 
 1. 在switch语句中，可以使用where来限定某个条件case
 
 2. 在for中我们也可以使用where来限定某个条件
 
 */

let name = ["王小二","张三","李四","王二小"]

name.forEach{
    switch $0 {
    case let x where x.hasPrefix("王"):
        print("\(x) ->>>>> ")
    default:
        print("\($0)")
    }
}

let num : [Int?] = [46,88,90,nil,33]
//compactMap 过滤掉 nil
let n = num.compactMap{$0}
for score in n where score > 60 {
    print("合格的分数:\(score)")
}

//if let 和 guard let 的条件不再使用 where 语句，而是直接和普通的条件判断一样，用逗号写在 if 或者 guard 的后面

