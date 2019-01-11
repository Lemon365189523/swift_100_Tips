import UIKit

/*
 相比于 Objective-C，Swift 最大的改变就在于方法调用上的优化。在 Objective-C 中，所有的对于 NSObject 的方法调用在编译时会被转为 objc_msgSend 方法。这个方法运用 Objective-C 的运行时特性，使用派发的方式在运行时对方法进行查找。因为 Objective-C 的类型并不是编译时确定的，我们在代码中所写的类型不过只是向编译器的一种“建议”，不论对于怎样的方法，这种查找的代价基本都是同样的。
 
 即使不是性能关键部分，我们也应该尽量考虑在没有必要时减少使用 NSObject 和它的子类。如果没有动态特性的需求的话，保持在 Swift 基本类型中会让我们得到更多的性能提升。
 
 
 */

func log<T>(_ message: T, file: String = #file, method: String = #function, line: Int = #line ,column: Int = #column) {
    print("\((file as NSString).lastPathComponent)[\(line)],[\(method)],[\(column)] /n \(message)")
}

log("sddddd")

var max = Int.max
max = max &+ 1
