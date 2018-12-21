import UIKit

/*
 可变参数函数指的是可以接受任意多个参数的函数
 
 注意
 同一个方法中只能有一个参数是可变的，可变参数必须是同一种类型
 
 */

func sum(input: Int...) -> Int {
    return input.reduce(0, +)
}

print(sum(input: 1,2,3,5,6))
