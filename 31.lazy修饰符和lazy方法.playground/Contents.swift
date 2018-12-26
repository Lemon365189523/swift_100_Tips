import UIKit

/*
 lazy属性
 
 lazy方法
 配合map filter这类接受闭包并进行运行的方法一起，让整个行为变成延时进行的
 对于那些不需要完全运行，可能提前退出的情况，使用lazy来进行性能优化效果非常有效
 
 */

class A {
    lazy var str : String = "eheh"
    lazy var str2: String = {
        let s = "dddd"
        return s
    }()
}


let data = 1...3
let result = data.lazy.map { (i) -> Int in
    print("正在处理\(i)")
    return i * 2
}

print("准备访问结果")
for i in result {
    print("操作后的结果\(i)")
}

print("操作完毕")


