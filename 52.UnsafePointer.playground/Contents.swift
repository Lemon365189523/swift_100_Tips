import UIKit

/*
 Swift 本身从设计上来说是一门非常安全的语言，在 Swift 的思想中，所有的引用或者变量的类型都是确定并且正确对应它们的实际类型的，你应当无法进行任意的类型转换，也不能直接通过指针做出一些出格的事情。
 
 Swift 定义了一套对 C 语言指针的访问和转换方法，那就是 UnsafePointer 和它的一系列变体。
 
 */


func method(_ num: UnsafePointer<CInt>){
    print(num.pointee)
}
