import UIKit

//@autoclosure 做的事情就是把一句表达式自动地封装成一个闭包。

func logIfTrue(_ predicate: () -> Bool) {
    if predicate() {
        print("True")
    }
}

logIfTrue { () -> Bool in
    return 2 > 1
}

logIfTrue({2 > 1})

//如果闭包是最后一个参数，可以使用尾随闭包的a方式把大括号拿出
logIfTrue{ 2 > 1}


func logIfTrue2(_ predicate: @autoclosure () -> Bool){
    if predicate() {
        print("True")
    }
}

//@autoclosure 自动把 2>1 转换为 ()->Bool
logIfTrue2(2 > 1)


// ?? 默认值实现原理就是使用@autoclosure
// func ??<T>(optional:T?,defaultValue: @autoclosure () -> T?) -> T?
// func ??<T>(optional:T?,defaultValue: @autoclosure () -> T) -> T
let level: Int? = nil
var currentLevel = level ?? 1

// 默认值为 闭包的好处是 避免默认值浪费开销

//Swift && 和 || 两个操作符也是用到@autoclosure.

func or(first: @autoclosure () -> Bool, second:@autoclosure () -> Bool ) -> Bool {
    if first() {
        return true
    }else{
        return second()
    }
}

func and(first: @autoclosure () -> Bool, second:@autoclosure () -> Bool ) -> Bool{
    if !first() {
        return false
    }else {
        return second()
    }
}

let bool1 = or(first: 4 > 5, second: 5 > 4)
let bool2 = and(first: 4 > 5, second: 5 > 4)




