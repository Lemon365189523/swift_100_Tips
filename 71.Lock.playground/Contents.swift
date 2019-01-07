import UIKit

/*
 
 为了在不同线程中安全地访问同一个资源，我们需要这些访问顺序进行。
 
 @synchronized Swift 中它已经 (或者是暂时) 不存在了
 
 @synchronized 在幕后做的事情是调用了 objc_sync 中的 objc_sync_enter 和 objc_sync_exit 方法，并且加入了一些异常判断
 
 
 */

func myMehtod(anObj: AnyObject){
    objc_sync_enter(anObj)
    
    //做逻辑处理
    
    objc_sync_exit(anObj)
}

//在swift写一个类似@synchronized调用方法
func synchronized(_ lock: AnyObject, closure:() -> ()){
    objc_sync_enter(lock)
    
    //做逻辑处理
    
    objc_sync_exit(lock)
}

class Obj {
    var _str = "123"
    var str: String {
        get {
            return _str
        }
        set {
            synchronized(self) {
                _str = newValue
            }
        }
    }
}

