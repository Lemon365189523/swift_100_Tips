import UIKit



let arr : NSArray = [1,2,3,4,5]
var result = 0
arr.enumerateObjects { (num, idx, stop) in
    result += num as! Int
    if idx == 2 {
        stop.pointee = true
    }
}

print(result)

/*
 
 在 Swift 中，我们在遇到这样的需求的时候，有一个效率，安全性和可读性都很好的替代，那就是快速枚举某个数组的 EnumerateGenerator，它的元素是同时包含了元素下标索引以及元素本身的多元组
 
 */

//swift
var result2 = 0
for (idx, num) in [1,2,3,4,5].enumerated() {
     result2 += num
    if idx == 2 {
        break
    }
}
