import UIKit

/*
 其实在 iPhone 5s 上完全没有问题，但是在 iPhone 5 或者以下的设备中，有时候 程序会崩溃...请注意这个“有时候”..
 
 其实 Swift 的 Int 是和 CPU 架构有关的：在 32 位的 CPU 上 （也就是 iPhone 5 和前任们），实际上它是 Int32，而在 64 位 CPU (iPhone 5s 及以后的机型) 上是 Int64。arc4random 所返回的值不论在什么平台上都是一个 UInt32，于是在 32 位的平台上就有一半几率在进行 Int 转换时越界
 
 */

func random(in range: Range<Int>) -> Int {
    let count = UInt32(range.endIndex - range.startIndex)
    return Int(arc4random_uniform(count)) + range.startIndex
}

let range = Range<Int>(1...6)
print(random(in: range))
