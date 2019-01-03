import UIKit

/*
 #if
 
 #elseif
 
 #else
 
 #endif
 在C系列语言中，可以使用#if或者#ifdef之类的编译条件分支来控制代码编译
 Swift 中没有宏定义的概念，因此我们不能使用#ifdef的方法来检查某个符号是否经过宏定义
 
 Swift内构建了几种平台和架构的组合，来帮助我们为不同的平台编译不同的代码
 
    os() macOS iOS tvOS  watchOS  Linux
    arch()  x86_64(模拟器64位) arm(真机32位) arm64(真机64位) i386(模拟器32位) //CPU的真机情况
    swift() >= 某个版本
 
 */

#if os(macOS)
    typealias Color = NSColor
#else
    typealias Color = UIColor
#endif


