import UIKit

/*
 “但是我们如果用一个大一点的数的话，运行时就会出现错误，比如
 
 sum(1000000)
 // EXC_BAD_ACCESS (code=2, address=...)
 这是因为每次对于 sum 的递归调用都需要在调用栈上保存当前状态，否则我们就无法计算最后的 n + sum(n - 1)。当 n 足够大，调用栈足够深的时候，栈空间将被耗尽而导致错误，也就是我们常说的栈溢出了。”
 

 一般对于递归，解决栈溢出的一个好方法是采用尾递归的写法。
 
 尾递归就是让函数里的最后一个动作是一个函数调用的形式，这个调用的返回值将直接被当前函数返回，从而避免在栈上保存状态。
 
 
 */

func tailSum(_ n: UInt) -> UInt {
    //尾递归
    func sumInternal(_ n: UInt, current: UInt) -> UInt{
        if n == 0 {
            return current
        }else {
            return sumInternal(n - 1, current: current + n)
        }
    }
    return sumInternal(n, current: 0)
}

tailSum(100000)
