import UIKit

/*
 “() 又是什么呢？在多元组的最后我们指出了，其实 Swift 中任何东西都是放在多元组里的。(42, 42) 是含有两个 Int 类型元素的多元组，(42) 是含有一个 Int 的多元组，那么 () 是什么？没错，这是一个不含有任何元素的多元组。所以其实我们在 extention 里声明的 func times(f: Void -> Void) 根本不是 “不接受参数” 的闭包，而是一个接受没有任何元素的多元组的闭包。”
  */


extension Int {
    func tims(f:(Int) -> ()){
        print("Int")
        for i in 1...self {
            f(i)
        }
    }
}

2.tims(f:{(i : Int) -> () in
    print(i)
})

//闭包简化
3.tims { (i) in
    print("第 \(i) 次")
}

