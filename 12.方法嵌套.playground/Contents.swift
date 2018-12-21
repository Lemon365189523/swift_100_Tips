import UIKit

//方法嵌套：可以将方法当作变量或者参数来使用

/*
 优点
 1.把方法拆分成更小的方法，作用域只能在外层方法中
 
 2.访问权，有些方法我们完全不希望在其他地方被直接使用时可用方法嵌套
 
 */

func a(){
    func b(){
        print("ddddd")
    }
    b()
}

a()

