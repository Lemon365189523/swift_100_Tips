import UIKit

//@escaping 闭包逃逸

/*
 注意点：
 于 doWork 参数里这样的没有逃逸行为的闭包，因为闭包的作用域不会超过函数本身，所以我们不需要担心在闭包内持有 self 等。而接受 @escaping 的 doWorkAsync 则有所不同。由于需要确保闭包内的成员依然有效，如果在闭包内引用了 self 及其成员的话，Swift 将强制我们明确地写出 self。
  */

func doWork(block: () -> ()){
    block()
}

func doWorkAsync(block: @escaping () -> ()){
    DispatchQueue.main.async {
        block()
    }
}

class S {
    var foo = "foo"
    
    func method1() {
        doWork {
            print(foo)
        }
        foo = "bar"
    }
    
    func method2(){
        doWorkAsync {
            //escaping 提醒self的持有情况
            print(self.foo)
        }
        foo = "bar"
    }
    
    func method3(){
        //如果不希望闭包持有self，就是用[weak self]
        doWorkAsync {[weak self] in
            print(self?.foo ?? "nil")
        }
    }
}

S().method1()
S().method2()
S().method3() //nil S()局部变量被释放后 self = nil
