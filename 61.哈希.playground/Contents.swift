import UIKit

/*
 
 Swift 类型中提供了一个叫做 Hashable 的协议，实现这个协议即可为该类型提供哈希支持
 
 
 */

let num = 19
print(num.hashValue)

let string = "abc"
print(string.hashValue)

