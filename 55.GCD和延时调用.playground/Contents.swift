import UIKit

/*
 
 在 iOS 8 中 GCD 得到了惊人的进化，现在我们可以通过将一个闭包封装到 DispatchWorkItem 对象中，然后对其发送 cancel，来取消一个正在等待执行的 block。取消一个任务这样的特性，这在以前是 NSOperation 的专利，但是现在我们使用 GCD 也能达到同样的目的了。
 
 
 */


let workingQueue = DispatchQueue(label: "my_queue")

workingQueue.async {
    print("努力工作")
    Thread.sleep(forTimeInterval: 2)
    
    DispatchQueue.main.async {
        print("更新UI")
    }
    
}


print("-------")

//延时操作
DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
    print("两秒后输出")
}

//封装GCD 获得延时可取消功能

typealias Task = (_ cancel : Bool) -> Void

func delay(_ time: TimeInterval, task: @escaping () -> ()) -> Task? {
    
    func dispatch_later(block: @escaping ()->()){
        let t = DispatchTime.now() + time
        DispatchQueue.main.asyncAfter(deadline: t, execute: block)
    }
    
    var closure: (() -> Void)? = task
    var result : Task?
    
    let delayedClosure: Task = { cancel in
        if let internalClosure = closure {
            if cancel == false {
                //判断是否执行block
                DispatchQueue.main.async(execute: internalClosure)
            }
        }
        closure = nil
        result = nil
    }
    result = delayedClosure
    
    dispatch_later {
        if let delayedClosure = result {
            delayedClosure(false)
        }
    }
    
    return result
}

func cancel(_ task: Task?){
    task?(true)
}

let task = delay(3) {
    print("delay 3秒")
}
//直接条用task 会马上调用闭包的
//task?(false)
//cancel(task)
//task?(false)

