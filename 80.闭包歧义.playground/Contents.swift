import UIKit




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

