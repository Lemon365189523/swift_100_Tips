import UIKit


/*
 
 ... 全闭合的范围操作
 
 ..< 半闭合
 
 */

for i in  0..<5{
    print(i)
}
//String 也实现了 Comparable协议
let test = "helLo"

let interval = "a" ... "z"

for c in test{
    if !interval.contains(String(c)) {
        print("\(c)不是小写字母")
    }
}

