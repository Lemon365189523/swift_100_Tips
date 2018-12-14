import UIKit

func incrementor(variable: inout Int){
    variable += 1
}

var number = 7
incrementor(variable: &number)

print(number)
//“对于值类型来说，inout 相当于在函数内部创建了一个新的值，然后在函数返回时将这个值赋给 & 修饰的变量，这与引用类型的行为是不同的。”

//注意：参数的修饰是具有传递限制的，就是说对于跨越层级的调用，我们需要保证同一参数的修饰是统一的

func makeIncrementor(addNumber: Int) -> ((inout Int) -> ()) {
    func _incrementor(variable: inout Int) -> (){
        variable += addNumber
    }
    return _incrementor
}
